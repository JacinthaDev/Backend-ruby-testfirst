#write your code here

def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    array.reduce(0) { |a, b| a + b}
end

def multiply(num1, *num2)
    num2.reduce(num1) {|a, b| a * b}
end

def power(num1, num2)
    num1 ** num2
end

def factorial(number)
    if number > 0
        starter = 1
        for i in (1..number)
            starter *= i
        end
        starter
    elsif number == 0
        1
    else
        undefined
    end
end