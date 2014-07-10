require "Date"

class EmployeeFilter

  def initialize(input)
    @employees = input
  end

  def started_before_2006
    date = Date.new(2006, 1, 1)
    output = []
    @employees.map do |hash|
      output << hash if hash[:start_date] < date
    end
    output
  end

  def all_with_start_date
    output = @employees.map do |hash|
      "#{hash[:first_name]} #{hash[:last_name]} (#{hash[:title]}) - #{hash[:start_date].month}/#{hash[:start_date].day}/#{hash[:start_date].year}"
    end
  end
end