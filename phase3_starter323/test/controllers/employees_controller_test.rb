require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    # @employee = employees(:one)
    create_employees
  end
  
  teardown do
    remove_employees
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { active: @ben.active, date_of_birth: @ben.date_of_birth, first_name: @ben.first_name, last_name: @ben.last_name, phone: @ben.phone, role: @ben.role, ssn: @ben.ssn } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@ben)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@ben)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@ben), params: { employee: { active: @ben.active, date_of_birth: @ben.date_of_birth, first_name: @ben.first_name, last_name: @ben.last_name, phone: @ben.phone, role: @ben.role, ssn: @ben.ssn } }
    assert_redirected_to employee_url(@ben)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@ben)
    end

    assert_redirected_to employees_url
  end
end
