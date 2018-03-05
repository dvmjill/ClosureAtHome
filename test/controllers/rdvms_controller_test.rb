require 'test_helper'

class RdvmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rdvm = rdvms(:one)
  end

  test "should get index" do
    get rdvms_url
    assert_response :success
  end

  test "should get new" do
    get new_rdvm_url
    assert_response :success
  end

  test "should create rdvm" do
    assert_difference('Rdvm.count') do
      post rdvms_url, params: { rdvm: { city: @rdvm.city, clinic_address: @rdvm.clinic_address, clinic_name: @rdvm.clinic_name, email: @rdvm.email, first_name: @rdvm.first_name, last_name: @rdvm.last_name, phone: @rdvm.phone, preffered_contact: @rdvm.preffered_contact, state: @rdvm.state, vet_id: @rdvm.vet_id, zip: @rdvm.zip } }
    end

    assert_redirected_to rdvm_url(Rdvm.last)
  end

  test "should show rdvm" do
    get rdvm_url(@rdvm)
    assert_response :success
  end

  test "should get edit" do
    get edit_rdvm_url(@rdvm)
    assert_response :success
  end

  test "should update rdvm" do
    patch rdvm_url(@rdvm), params: { rdvm: { city: @rdvm.city, clinic_address: @rdvm.clinic_address, clinic_name: @rdvm.clinic_name, email: @rdvm.email, first_name: @rdvm.first_name, last_name: @rdvm.last_name, phone: @rdvm.phone, preffered_contact: @rdvm.preffered_contact, state: @rdvm.state, vet_id: @rdvm.vet_id, zip: @rdvm.zip } }
    assert_redirected_to rdvm_url(@rdvm)
  end

  test "should destroy rdvm" do
    assert_difference('Rdvm.count', -1) do
      delete rdvm_url(@rdvm)
    end

    assert_redirected_to rdvms_url
  end
end
