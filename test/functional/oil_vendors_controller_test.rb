require File.dirname(__FILE__) + '/../test_helper'

class OilVendorsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:oil_vendors)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_oil_vendor
    assert_difference('OilVendor.count') do
      post :create, :oil_vendor => { }
    end

    assert_redirected_to oil_vendor_path(assigns(:oil_vendor))
  end

  def test_should_show_oil_vendor
    get :show, :id => oil_vendors(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => oil_vendors(:one).id
    assert_response :success
  end

  def test_should_update_oil_vendor
    put :update, :id => oil_vendors(:one).id, :oil_vendor => { }
    assert_redirected_to oil_vendor_path(assigns(:oil_vendor))
  end

  def test_should_destroy_oil_vendor
    assert_difference('OilVendor.count', -1) do
      delete :destroy, :id => oil_vendors(:one).id
    end

    assert_redirected_to oil_vendors_path
  end
end
