# https://qiita.com/Fendo181/items/eb2cb17f32d99aa01f59

# 出力
print 'Hello world!'
puts 'hello world'
p 'hello world(p)'

# 変数と定数の違い
msg = 'Hello world'
p msg
ADMIN_EMAIL = 'endo@yahoo.co.jp'.freeze
p ADMIN_EMAIL

# Ruby におけるオブジェクト、メソッド、クラス
p 4.8.class
p 4.8.methods

# 演算子
x = 10
p x % 3
p x**3

# Float
puts Rational(2, 5)
puts 2/5r
p 52.6.round
p 52.6.floor
p 52.4.ceil

# 自己代入
x += 5
p x

# 文字列オブジェクト
price = 1400
puts "price #{price * 4}"
# puts "price {price*4}"
# puts 'price #{price*4}'
name = 'Endo Futoshi'
puts "Hello My nama is #{name}!"

# 破壊的メソッド
name = 'endo'
puts name.upcase
puts name
puts name.upcase!
puts name

# 真偽値を返すメソッド
p name.empty?
p name.include?('e')
p name.include?('E')

# 配列オブジェクト
colors = %w[red blue Yellow]
p colors[0]
p colors[-1]

# 配列: 範囲指定
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers[0..2]
p numbers[0...2]
p numbers[10]

# 配列: 置換
sales = [5, 8, 4]
p sales
sales[0...2] = [1, 2]
p sales

# 配列: 追加
numbers = [1, 2, 3]
p numbers
numbers[1, 0] = [10, 11, 12]
p numbers
numbers = [1, 2, 3]
numbers[1, 1] = [10, 11, 12]
p numbers
numbers = [1, 2, 3]
numbers[1.0] = [10, 11, 12]
p numbers

# 配列: 削除
numbers = [1, 2, 3, 4, 5]
p numbers
numbers[1, 2] = []
p numbers

# 配列: メソッド
p sales.size
p sales.sort
p sales.sort.reverse

# 配列: push
animals = %w[dog cat mous]
p animals
animals.push('pig')
p animals
