class Employee
  attr_reader :first_name, :last_name
  attr_accessor :last_name

  def initialize(input_options)
    @first_name = input_options[:first_name] || "No input"
    @last_name = input_options[:last_name] || "No input"
    @salary = input_options[:salary] || 0
    @active = input_options[:active] || false
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def full_name
    if last_name[-1] == "s"
      f = "#{@first_name} #{@last_name}, Esquire"
      puts f
    else
      f = @first_name + " " + @last_name
      puts f
    end
  end

end

# employee1 = Employee.new({first_name: 'Joe', last_name: 'Dub', salary: 600, active: true})
# employee2 = Employee.new({last_name: 'Doe', salary: 600, active: true})

employees = []

100.times do
  employees << Employee.new({first_name: [*('A'..'Z')].sample(8).join.capitalize, last_name: [*('A'..'Z')].sample(8).join.capitalize, salary: rand(1000), active: true})
end

employee_array = []
(0..99).each.each_with_index do |employee, count|
  employee = Employee.new(first_name: "Employee", last_name: "#{count + 1}")
  employee_array << employee
  employee.full_name
end

employees.each do |employee|
  employee.full_name
end

# employee_array.each_with_index do |employee, count|
#   employee.last_name = "##{count + 1}"
#   employee.full_name
# end



