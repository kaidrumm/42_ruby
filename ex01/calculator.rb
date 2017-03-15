STDOUT.write "Welcome to the amazing integer calculator!!
  \n==> Enter an Integer\n"
a = gets.to_i
STDOUT.write "\n\n==> Pick an Operator by Number\n1) Addition (+), \n"
STDOUT.write "2) Subtraction (-), \n3) Multiplication (x), \n4) Division (/)\n\n"
op = gets.chomp
STDOUT.write "\n==> Enter an Integer\n"
b = gets.to_i
case op
when '1', '+'
  operator = "+"
  c = a + b
when '2', '-'
  operator = "-"
  c = a - b
when '3', '*'
  operator = "x"
  c = a * b
when '4', '/'
  operator = "/"
  begin
    c = a / b
  rescue
    STDOUT.write "\nPlease do not divide by zero, you might destroy
      the universe...\n"
    exit
 	end
else
  STDOUT.write "invalid operator \:\(\n"
  exit
end

STDOUT.puts "\n#{a.to_i} #{operator} #{b.to_i}" + " = #{c}"
