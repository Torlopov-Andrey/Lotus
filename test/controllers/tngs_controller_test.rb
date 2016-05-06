require 'test_helper'

class TngsControllerTest < ActionController::TestCase
  setup do
    @tng = tngs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tngs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tng" do
    assert_difference('Tng.count') do
      post :create, tng: { day: @tng.day, discipline_id: @tng.discipline_id, time: @tng.time, town_id: @tng.town_id, trainer_id: @tng.trainer_id }
    end

    assert_redirected_to tng_path(assigns(:tng))
  end

  test "should show tng" do
    get :show, id: @tng
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tng
    assert_response :success
  end

  test "should update tng" do
    patch :update, id: @tng, tng: { day: @tng.day, discipline_id: @tng.discipline_id, time: @tng.time, town_id: @tng.town_id, trainer_id: @tng.trainer_id }
    assert_redirected_to tng_path(assigns(:tng))
  end

  test "should destroy tng" do
    assert_difference('Tng.count', -1) do
      delete :destroy, id: @tng
    end

    assert_redirected_to tngs_path
  end
end
