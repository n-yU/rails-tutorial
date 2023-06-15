# https://qiita.com/Fendo181/items/eb2cb17f32d99aa01f59

# hash
scores_x = { 'endo' => 200, 'takahasi' => 400 }
# scores_y = { :taguchi => 200, :watanabe => 150 }
scores_z = { iida: 200, saeki: 320 }
p scores_x
p scores_x['endo']
# p scores_y
# p scores_y[:watanabe]
p scores_z
p scores_z[:saeki]

# hash: メソッド
p scores_z[:iida]
p scores_z[:saeki]
scores_z[:iida] = 600
scores_z[:iida]
p scores_z
p scores_z.size
p scores_z.values
p scores_z.key?(:iida)

# オブジェクト 相互変換
a = 10
b = '10'

if a == b.to_i
  puts true
else
  puts false
end

b = '5'
p a + b.to_i
p a + b.to_f
p a.to_s + b

# 相互変換: Hash <-> Array
score = { taguchi: 200, endo: 300 }
p score
p score.class

score = score.to_a
p score
p score.class

score = score.to_h
p score
p score.class
p score.to_a.to_h

# %配列記法
# a = ['a', 'b', 'c']
# p a
b = %w[a b c]
p b
apple = 'red'
banana = 'yellow'
array = %W[#{apple}, #{banana} PHP]
p array

# 書式付きで文字列に値を埋め込む
p format('name: %s', 'taguchi')
p format('name %10s', 'taguchi')
p format('name: %-10s', 'taguchi')
p format('id: %<id>05d, rate: %<rate>10.3f', id: 355, rate: 3.84)
printf("name: %10s\n", 'endo')
printf("id: %<id>05d, rate: %<rate>10.3f\n", id: 355, rate: 3.84)
# p sprintf("id: %<id>05d, rate: %<rate>10.2f\n", id: 355, rate: 3.84)

# if
score = 80
if score > 60
  puts 'ok'
elsif score > 40
  puts 'SOSO'
else
  puts 'NG'
end

# if: 1行
score = 100
puts 'OK' if score > 60
is = 0
p true if is
is = nil
p false unless is

# 三項演算子
b = 10
c = 20
a = b > c ? b : c
p a

# 多重代入
# foo, bar = [1, 2]
# puts foo + bar
# foo, bar = 1, 2
# puts foo + bar
foo, bar = 1
p foo
p bar
foo, bar = 1, 2, 3
p foo
p bar
foo = 1, 2, 3
p foo
*foo = 1, 2, 3
p foo
foo, *bar = 1, 2, 3
p foo
p bar
