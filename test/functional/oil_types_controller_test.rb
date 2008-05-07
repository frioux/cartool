require File.dirname(__FILE__) + '/../test_helper'

class OilTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:oil_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_oil_type
    assert_difference('OilType.count') do
      post :create, :oil_type => { }
    end

    assert_redirected_to oil_type_path(assigns(:oil_type))
  end

  def test_should_show_oil_type
    get :show, :id => oil_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => oil_types(:one).id
    assert_response :success
  end

  def test_should_update_oil_type
    put :update, :id => oil_types(:one).id, :oil_type => { }
    assert_redirected_to oil_type_path(assigns(:oil_type))
  end

  def test_should_destroy_oil_type
    assert_difference('OilType.count', -1) do
      delete :destroy, :id => oil_types(:one).id
    end

    assert_redirected_to oil_types_path
  end
end
