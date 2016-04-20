require 'test_helper'

class BarberShopsControllerTest < ActionController::TestCase
  setup do
    @barber_shop = barber_shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barber_shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barber_shop" do
    assert_difference('BarberShop.count') do
      post :create, barber_shop: { address: @barber_shop.address, business_name: @barber_shop.business_name, city: @barber_shop.city, code: @barber_shop.code, contact_email: @barber_shop.contact_email, contact_name: @barber_shop.contact_name, contact_phone1: @barber_shop.contact_phone1, contact_phone2: @barber_shop.contact_phone2, enable: @barber_shop.enable, name: @barber_shop.name, nit: @barber_shop.nit, owner: @barber_shop.owner, phone: @barber_shop.phone }
    end

    assert_redirected_to barber_shop_path(assigns(:barber_shop))
  end

  test "should show barber_shop" do
    get :show, id: @barber_shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barber_shop
    assert_response :success
  end

  test "should update barber_shop" do
    patch :update, id: @barber_shop, barber_shop: { address: @barber_shop.address, business_name: @barber_shop.business_name, city: @barber_shop.city, code: @barber_shop.code, contact_email: @barber_shop.contact_email, contact_name: @barber_shop.contact_name, contact_phone1: @barber_shop.contact_phone1, contact_phone2: @barber_shop.contact_phone2, enable: @barber_shop.enable, name: @barber_shop.name, nit: @barber_shop.nit, owner: @barber_shop.owner, phone: @barber_shop.phone }
    assert_redirected_to barber_shop_path(assigns(:barber_shop))
  end

  test "should destroy barber_shop" do
    assert_difference('BarberShop.count', -1) do
      delete :destroy, id: @barber_shop
    end

    assert_redirected_to barber_shops_path
  end
end
