require 'test_helper'

class VetUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vet_user = vet_users(:one)
  end

  test "should get index" do
    get vet_users_url
    assert_response :success
  end

  test "should get new" do
    get new_vet_user_url
    assert_response :success
  end

  test "should create vet_user" do
    assert_difference('VetUser.count') do
      post vet_users_url, params: { vet_user: { address: @vet_user.address, city: @vet_user.city, crematory_name: @vet_user.crematory_name, email: @vet_user.email, first_name: @vet_user.first_name, last_name: @vet_user.last_name, phone: @vet_user.phone, state: @vet_user.state, zip: @vet_user.zip } }
    end

    assert_redirected_to vet_user_url(VetUser.last)
  end

  test "should show vet_user" do
    get vet_user_url(@vet_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_vet_user_url(@vet_user)
    assert_response :success
  end

  test "should update vet_user" do
    patch vet_user_url(@vet_user), params: { vet_user: { address: @vet_user.address, city: @vet_user.city, crematory_name: @vet_user.crematory_name, email: @vet_user.email, first_name: @vet_user.first_name, last_name: @vet_user.last_name, phone: @vet_user.phone, state: @vet_user.state, zip: @vet_user.zip } }
    assert_redirected_to vet_user_url(@vet_user)
  end

  test "should destroy vet_user" do
    assert_difference('VetUser.count', -1) do
      delete vet_user_url(@vet_user)
    end

    assert_redirected_to vet_users_url
  end
end
