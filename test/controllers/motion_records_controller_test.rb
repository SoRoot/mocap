require 'test_helper'

class MotionRecordsControllerTest < ActionController::TestCase
  setup do
    @motion_record = motion_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motion_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motion_record" do
    assert_difference('MotionRecord.count') do
      post :create, motion_record: { actor: @motion_record.actor, bvh_path: @motion_record.bvh_path, c3d_path: @motion_record.c3d_path, uploader_id: @motion_record.uploader_id }
    end

    assert_redirected_to motion_record_path(assigns(:motion_record))
  end

  test "should show motion_record" do
    get :show, id: @motion_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motion_record
    assert_response :success
  end

  test "should update motion_record" do
    patch :update, id: @motion_record, motion_record: { actor: @motion_record.actor, bvh_path: @motion_record.bvh_path, c3d_path: @motion_record.c3d_path, uploader_id: @motion_record.uploader_id }
    assert_redirected_to motion_record_path(assigns(:motion_record))
  end

  test "should destroy motion_record" do
    assert_difference('MotionRecord.count', -1) do
      delete :destroy, id: @motion_record
    end

    assert_redirected_to motion_records_path
  end
end
