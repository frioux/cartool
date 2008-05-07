require File.dirname(__FILE__) + '/../test_helper'

class GasTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:gas_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_gas_type
    assert_difference('GasType.count') do
      post :create, :gas_type => { }
    end

    assert_redirected_to gas_type_path(assigns(:gas_type))
  end

  def test_should_show_gas_type
    get :show, :id => gas_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => gas_types(:one).id
    assert_response :success
  end

  def test_should_update_gas_type
    put :update, :id => gas_types(:one).id, :gas_type => { }
    assert_redirected_to gas_type_path(assigns(:gas_type))
  end

  def test_should_destroy_gas_type
    assert_difference('GasType.count', -1) do
      delete :destroy, :id => gas_types(:one).id
    end

    assert_redirected_to gas_types_path
  end
end
