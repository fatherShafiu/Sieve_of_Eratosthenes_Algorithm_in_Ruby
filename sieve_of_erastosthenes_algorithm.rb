# By Tonon Abdul-Shafiu Mahmud
# Date: 22/01/2023

def implement_Sieve_of_Eratosthenes_Algorithm(n)
  arr = Array.new(n) { 0 }
  (2..n).each do |i|
    (i * i..n).step(i) do |k|
      arr[k - 1] = 1
    end
  end
  (2..n).each do |i|
    puts i if arr[i - 1] == 0
  end
end

puts "input a number to print all prime numbers to that number using the method of the Sieve of Eratosthenes : "
input = gets.chomp.to_i
puts
if input <= 2
  puts "input is less than or equal to 2. Please input a number greater than 2"
elsif input >= 10000
  puts "input is greater than or equal to 10000. Please input a number less than 10000"
else
  puts "All prime numbers to #{input} using the method of the Sieve of Eratosthenes are : "
  implement_Sieve_of_Eratosthenes_Algorithm(input)
end
