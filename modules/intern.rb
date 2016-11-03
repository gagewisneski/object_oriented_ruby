module EmailReport
  def send_report
    puts "Sending email"
    puts "Email sent!"
  end
end


class Employees
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_option)
    @first_name = input_option[:first_name]
    @last_name = input_option[:last_name]
    @salary = input_option[:salary]
    @active = input_option[:active]
  end

  def salary
    return @salary
  end

  def active
    return @active
  end

  def print_info
    puts "Hi #{@first_name} #{@last_name}, your salary is #{@salary}."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

class Managers < Employees
  attr_reader :employees

  include EmailReport

  def initialize(input_option)
    super
    @employees = input_option[:employees]
  end

  def give_all_raises
    employees.each do |employee|
      employee.give_annual_raise
      employee.print_info
    end
  end

  def fire_all_employees
    employees.each do |employee|
      employee.active = false
      puts employee.active
    end
  end
end

class Intern < Employees
  include EmailReport
end

employee1 = Employees.new({first_name: "Lebron", last_name: "James", salary: 1000, active: true})
employee2 = Employees.new({last_name: "Wisneski", active: true, salary: 100, first_name: "Gage"})

employee_array = [employee1, employee2]

manager1 = Managers.new({first_name: "Jacob", last_name: "Harden", salary: 500000, active: true, employees: employee_array})

