require "pxj_chicago_employees/version"
require "unirest"

module PxjChicagoEmployees
  class Employee
    attr_reader :job_titles, :department, :name, :salary

    def initialize(input_options)
      @job_titles = input_options["job_titles"]
      @department = input_options["department"]
      @name = input_options["name"]
      @salary = input_options["employee_annual_salary"].to_i
    end

    def self.all
      data_array = Unirest.get('https://data.cityofchicago.org/resource/xzkq-xp2w.json').body
      create_employees(data_array)
    end

    def self.find(input_search_terms)
      data_array = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json?$q=#{input_search_terms}").body
      create_employees(data_array)
    end

    private

    def self.create_employees(input_data_array)
      employees = []
      input_data_array.each do |employee_data|
        employees << Employee.new(employee_data)
      end
      employees
    end
  end
end
