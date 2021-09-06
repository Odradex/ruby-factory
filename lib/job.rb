class Job
  attr_accessor :salaries

  def initialize(company_name, salaries)
    @company_name = company_name
    @salaries = salaries
  end

  def get_salary(worker)
    @salaries[worker]
  end
end