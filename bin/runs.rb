require_relative "../lib/employee_filter"
require_relative "../data/employees"

@employees = EmployeeFilter.new(EMPLOYEES)

p @employees.started_before_2006
p @employees.all_with_start_date