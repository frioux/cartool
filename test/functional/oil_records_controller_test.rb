require File.dirname(__FILE__) + '/../test_helper'

class OilRecordsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:oil_records)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_oil_record
    assert_difference('OilRecord.count') do
      post :create, :oil_record => { }
    end

    assert_redirected_to oil_record_path(assigns(:oil_record))
  end

  def test_should_show_oil_record
    get :show, :id => oil_records(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => oil_records(:one).id
    assert_response :success
  end

  def test_should_update_oil_record
    put :update, :id => oil_records(:one).id, :oil_record => { }
    assert_redirected_to oil_record_path(assigns(:oil_record))
  end

  def test_should_destroy_oil_record
    assert_difference('OilRecord.count', -1) do
      delete :destroy, :id => oil_records(:one).id
    end

    assert_redirected_to oil_records_path
  end
end
