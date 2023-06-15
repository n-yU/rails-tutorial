# https://qiita.com/Fendo181/items/eb2cb17f32d99aa01f59

# モジュールによる名前空間
module Movie
  VERSION = 1.1

  def self.encode
    puts 'encoding...'
  end

  def self.export
    puts 'exporting...'
  end
end

Movie.encode
Movie.export
puts Movie::VERSION

module Movie2
  VERSION = 1.1

  def self.encode
    puts 'encoding...'
  end

  def self.export
    puts 'exporting...'
  end
end

Movie2.encode
Movie2.export
puts Movie2::VERSION

# mixin
module Debug
  def info
    puts "#{self.class} debug"
  end
end

class Player
  include Debug
end

class Monster
  include Debug
end

Player.new.info
Monster.new.info

# 例外処理
x = gets.to_i

class MyError < StandardError
end

begin
  raise MyError if x == 3

  p 100 / x
rescue MyError
  puts 'noy 3!'
rescue ZeroDivisionError => e
  p "Error Msg: #{e.message}"
  p "Error Class: #{e.class}"
  puts '例外が発生しました'
ensure
  puts '__END__'
end
