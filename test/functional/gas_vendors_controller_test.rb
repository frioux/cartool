require File.dirname(__FILE__) + '/../test_helper'

class GasVendorsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:gas_vendors)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_gas_vendor
    assert_difference('GasVendor.count') do
      post :create, :gas_vendor => { }
    end

    assert_redirected_to gas_vendor_path(assigns(:gas_vendor))
  end

  def test_should_show_gas_vendor
    get :show, :id => gas_vendors(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => gas_vendors(:one).id
    assert_response :success
  end

  def test_should_update_gas_vendor
    put :update, :id => gas_vendors(:one).id, :gas_vendor => { }
    assert_redirected_to gas_vendor_path(assigns(:gas_vendor))
  end

  def test_should_destroy_gas_vendor
    assert_difference('GasVendor.count', -1) do
      delete :destroy, :id => gas_vendors(:one).id
    end

    assert_redirected_to gas_vendors_path
  end
end
