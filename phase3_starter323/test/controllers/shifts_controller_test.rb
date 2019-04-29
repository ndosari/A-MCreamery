require 'test_helper'

class ShiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    # @shift = shifts(:one)
    create_shifts
  end
  
  teardown do
    remove_shifts
  end

  test "should get index" do
    get shifts_url
    assert_response :success
  end

  test "should get new" do
    get new_shift_url
    assert_response :success
  end

  test "should create shift" do
    assert_difference('Shift.count') do
      post shifts_url, params: { shift: { assignment_id: @ed_shift1.assignment_id, date: @ed_shift1.date, end_time: @ed_shift1.end_time, notes: @ed_shift1.notes, start_time: @ed_shift1.start_time } }
    end

    assert_redirected_to shift_url(Shift.last)
  end

  test "should show shift" do
    get shift_url(@ed_shift1)
    assert_response :success
  end

  test "should get edit" do
    get edit_shift_url(@ed_shift1)
    assert_response :success
  end

  test "should update shift" do
    patch shift_url(@ed_shift1), params: { shift: { assignment_id: @ed_shift1.assignment_id, date: @ed_shift1.date, end_time: @ed_shift1.end_time, notes: @ed_shift1.notes, start_time: @ed_shift1.start_time } }
    assert_redirected_to shift_url(@ed_shift1)
  end

  test "should destroy shift" do
    assert_difference('Shift.count', -1) do
      delete shift_url(@ed_shift1)
    end

    assert_redirected_to shifts_url
  end
end
