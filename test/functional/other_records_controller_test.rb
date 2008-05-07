require File.dirname(__FILE__) + '/../test_helper'

class OtherRecordsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:other_records)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_other_record
    assert_difference('OtherRecord.count') do
      post :create, :other_record => { }
    end

    assert_redirected_to other_record_path(assigns(:other_record))
  end

  def test_should_show_other_record
    get :show, :id => other_records(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => other_records(:one).id
    assert_response :success
  end

  def test_should_update_other_record
    put :update, :id => other_records(:one).id, :other_record => { }
    assert_redirected_to other_record_path(assigns(:other_record))
  end

  def test_should_destroy_other_record
    assert_difference('OtherRecord.count', -1) do
      delete :destroy, :id => other_records(:one).id
    end

    assert_redirected_to other_records_path
  end
end
