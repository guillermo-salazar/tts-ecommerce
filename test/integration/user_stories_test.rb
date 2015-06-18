require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest
  fixtures :products
  
  #User goes to index page. Selects a product, adding it to 
  #their cart. They then checl out, filling in details on
  #the checkout form. An order is created with that info,
  #plus a single line item with their selected product. 
  #order should send a confirmation order
  test "buying a product" do
    LineItem.delete_all
    Order.delete_all
    
    get "/"
    assert_response :success
    assert_template 'index'
    
    xml_http_request :post, '/line_items', product_id: products(:ruby).id
    assert_response :success
    
    cart = Cart.find(session[:cart_id])
    assert_equal 1, cart.line_items.size
    assert_equal products(:ruby), cart.line_items.first.product
    
    get "/orders/new"
    assert_response :success
    assert_template "new"
    
    post_via_redirect '/orders',
                        order: {
                          name: 'Guillermo',
                          address: '123 maine st',
                          email: 'example@test.com',
                          pay_type: 'Check'
                        }
    assert_response :success
    assert_template 'index'
    assert_nil  Cart.find_by_id(session[:cart_id])
    assert_equal 1, Order.count
    order = Order.first
    assert_equal 'Guillermo', order.name
    assert_equal '123 maine st', order.address
    assert_equal 'example@test.com', order.email
    assert_equal 'Check', order.pay_type
    
    assert_equal 1, line_items.size
    assert_equal products(:ruby), order.line_items.first.product
    
    mail = ActionMailer::Base.deliveries.last
    assert_equal ['test@example.com'], mail.to
    # assert_equal 
  end
end
