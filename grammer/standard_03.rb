# https://qiita.com/Fendo181/items/eb2cb17f32d99aa01f59

# case
# signal = gets.chomp
signal = 'blue'
case signal
when 'red' then
  puts 'stop!'
when 'green', 'blue' then
  puts 'go!'
when 'yellow' then
  puts 'caution!'
else
  puts 'wrong signal!'
end

# times
31.times do |i|
  if (i % 15).zero? && i != 0
    puts 'FizzBuzz!'
  elsif (i % 3).zero? && i != 0
    puts 'Fizz!'
  elsif (i % 5).zero? && i != 0
    puts 'Buzz!'
  else
    puts i
  end
end
10.times { |j| puts "#{j}:hello" }

# while
i = 0
while i < 3
  puts "#{i}: hello"
  i += 1
end

# break
5.times do |j|
  break if j == 3
  next if j == 1

  puts "#{j}: hello"
end

# for
# for i in 18..20
#   p i
# end

# for i in 18...20
#   p i
# end

# for color in %w[red blue]
#   p color
# end

# for name, score in { taguchi: 200, endo: 400 }
#   puts "#{name}: #{score}"
# end

# each
colors = %w[red blue yellow]
# for c1 in colors
#   p "color: #{c1}"
# end
# p c1

colors.each do |c2|
  p "color: #{c2}"
end
# p c2

(18..20).each do |k|
  p k
end

%w[red blue].each do |c|
  p c
end

{ taguchi: 200, endo: 400 }.each do |name, score|
  puts "#{name}: #{score}"
end

# method
def say_hi(name)
  puts "#{name} hi!"
end
say_hi('endo')

def say_ho(name = 'endo')
  puts "#{name} ho yo!"
end
say_ho('takahashi')
say_ho
