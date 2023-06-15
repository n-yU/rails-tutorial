# https://qiita.com/Fendo181/items/eb2cb17f32d99aa01f59

# class
class User
  def initialize(name)
    @name = name
  end

  def say_hi
    puts "Hi! I am #{@name}."
  end
end

tom = User.new('Tom')
tom.say_hi
endo = User.new('Endo')
endo.say_hi

# アクセサメソッド
class Book
  attr_accessor :title, :price

  def initialize(title, price)
    @title = title
    @price = price
  end

  def say_price
    puts "Price #{@price}"
    puts "price is #{price}"
  end
end

book = Book.new('EndoBook', 2389)
puts book.title
puts "#{book.price}円"
book.say_price

book.title = 'TakahashiBook'
book.price = 2050

puts book.title
book.say_price

# クラスメソッド・クラス変数
class User2
  # @@count = 0

  def initialize(name)
    # @@count += 1
    @name = name
  end

  def say_hi
    puts "Hi! I am #{@name}"
  end

  def self.say_ho
    puts 'Say Ho!'
    # puts "Count is #{@@count} instance"
  end

  VERSION = 'クラス定数'.freeze
end

tom = User2.new('Tom')
bob = User2.new('bob')
steave = User2.new('Steave')

tom.say_hi
bob.say_hi
steave.say_hi

User2.say_ho
puts User2::VERSION

# 継承クラス
class AdminUser < User
  def say_ho
    puts "ho! from #{@name}"
  end

  def say_hi
    puts 'Hi! Yo!'
  end
end

tom = AdminUser.new('Tom')
tom.say_hi
tom.say_ho

# アクセス権
class User3
  def say_hi
    puts 'Hi! 親クラス内メソッド'
    say_private
  end

  private

  def say_private
    puts 'プライベートメソッド'
  end
end

class AdminUser3 < User3
  def say_ho
    puts 'Hello! 継承クラス内メソッド'
    say_private
  end

  def say_private
    puts 'private method override'
    puts 'private from Admin'
  end
end

User3.new.say_hi
AdminUser3.new.say_ho
AdminUser3.new.say_private
