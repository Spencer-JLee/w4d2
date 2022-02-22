require_relative 'employee.rb'

class Manager < Employee
  def initialize(name, title, salary, boss)
    super
    @sub_employees = []
  end

  def add_employees(*employees)
    sub_employees.concat(employees)
  end

  def bonus(multiplier)
    total_salary = 0
    sub_employees.each do |employee|
      total_salary += employee.salary
    end
    bonus = total_salary * multiplier
  end

  private
  attr_accessor :sub_employees
end

ned = Manager.new('Ned', 'Founder', 1000000, nil)
darren = Manager.new('Darren', 'TA Manager', 78000, 'Ned')
shawna = Employee.new('Shawna', 'TA', 12000, 'Darren')
david = Employee.new('David', 'TA', 10000, 'Darren')


