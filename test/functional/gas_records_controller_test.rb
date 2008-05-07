require File.dirname(__FILE__) + '/../test_helper'

class GasRecordsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:gas_records)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_gas_record
    assert_difference('GasRecord.count') do
      post :create, :gas_record => { }
    end

    assert_redirected_to gas_record_path(assigns(:gas_record))
  end

  def test_should_show_gas_record
    get :show, :id => gas_records(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => gas_records(:one).id
    assert_response :success
  end

  def test_should_update_gas_record
    put :update, :id => gas_records(:one).id, :gas_record => { }
    assert_redirected_to gas_record_path(assigns(:gas_record))
  end

  def test_should_destroy_gas_record
    assert_difference('GasRecord.count', -1) do
      delete :destroy, :id => gas_records(:one).id
    end

    assert_redirected_to gas_records_path
  end
end
