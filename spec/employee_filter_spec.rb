require "employee_filter"

describe EmployeeFilter do

  before do
    @employess = [
      {
        first_name: "Beaulah",
        last_name: "Thompson",
        title: "Lead Security Facilitator",
        start_date: Date.new(2005, 2, 9),
      },
      {
        first_name: "Benny",
        last_name: "Walker",
        title: "National Research Officer",
        start_date: Date.new(2006, 6, 23),
      }
    ]
  end

  describe "#started_before_2006" do
    it "returns only employees that started before 2006" do
      beaulah = {
        first_name: "Beaulah",
        last_name: "Thompson",
        title: "Lead Security Facilitator",
        start_date: Date.new(2005, 2, 9),
      }

      expect(EmployeeFilter.new(@employees).started_before_2006).to eq(beaulah)
    end
  end

  describe "#all_with_start_date" do
    it "returns the employees with their start dates" do
      employees_with_start_dates = [
        "Beaulah Thompson (Lead Security Facilitator) - 2/9/2005",
        "Benny Walker (National Research Officer) - 6/23/2006"
      ]

      expect(EmployeeFilter.new(@employees).all_with_start_date).to eq(employees_with_start_dates)
    end
  end
end
