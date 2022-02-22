require_relative 'employee.rb'
require_relative 'manager.rb'

class Company

  :ALL_EMPLOYEES = []

  def initialize(company_name)
    @company_name = company_name
    
  end
  
  def payday
    #have a list of all employees
    #separate managers
    #calculate manager bonus
    #calculate normal employee bonus
    #return bonuses

  end

  def add_employees
    #add some employees to manager list
    #
  end

  def is_boss?(employee)
    # check this employee's boss, if the other is the boss of this employee
    if boss == employee.name
      # add to sub_employee array
      employee.sub_employees << self
    end
  end
end