require 'test_helper'

class AssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    # @assignment = assignments(:one)
    create_employees
    create_stores
    create_assignments
  end
  
   teardown do
    remove_employees
    remove_stores
    remove_assignments
  end

  test "should get index" do
    get assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_assignment_url
    assert_response :success
  end

  test "should create assignment" do
    assert_difference('Assignment.count') do
      post assignments_url, params: { assignment: { employee_id: 8, end_date: @assign_ed.end_date, pay_level: @assign_ed.pay_level, start_date: @assign_ed.start_date, store_id: @assign_ed.store_id } }
    end

    assert_redirected_to assignment_url(Assignment.last)
  end

  test "should show assignment" do
    get assignment_url(@assign_ed)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignment_url(@assign_ed)
    assert_response :success
  end

  test "should update assignment" do
    patch assignment_url(@assign_ed), params: { assignment: { employee_id: 7, end_date: @assign_ed.end_date, pay_level: @assign_ed.pay_level, start_date: @assign_ed.start_date, store_id: @assign_ed.store_id } }
    assert_redirected_to assignment_url(@assign_ed)
  end

  test "should destroy assignment" do
    assert_difference('Assignment.count', -1) do
      delete assignment_url(@assign_ed)
    end

    assert_redirected_to assignments_url
  end
end
