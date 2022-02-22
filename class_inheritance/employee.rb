class Employee
  attr_reader :name

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    # @company_name = company_name
  end

  def bonus(multiplier)
    bonus = salary * multiplier
  end

  protected
  attr_reader :salary

  private
  attr_reader :boss, :company_name
end
