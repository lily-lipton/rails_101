# capture by the width of the second line
# `ruby`コマンドの引数としてスクリプトを指定するか、shebangを使用する
# ++++++++++++++++++++++++++++++++++++++++++++++||+++++++++|++++

# 以下は何をしているか


# ++++++++++++++++++++++++++++++++++++++++++++++||+++++++++|++++
# issue




# ++++++++++++++++++++++++++++++++++++++++++++++||+++++++++|++++


# ========================
# numbers = [1, 2, 3]

# # Rubyでは特別な理由がない限り、for構文は使用しない
# # 基本的には `each` メソッドを使用する
# for num in numbers do
#   puts num
# end
# # 1
# # 2
# # 3


# ========================
# # Integerクラスのtimesメソッド
# # - 単純にn回処理を繰り返したい場合に使用
# 5.times do |i|
#   puts i
# end
# # 0
# # 1
# # 2
# # 3
# # 4

# # ブロックパラメータ（|i|）は省略可能
# 3.times do
#   puts "times method"
# end
# # times method
# # times method
# # times method

# # while構文
# while <条件式>
#   <処理内容>
# end


# ========================
# # `upto` メソッド
# # - 数値を10から14まで1つづ増やしながら値を出力
# # - 逆の処理をする `downto` メソッドも存在する
# 10.upto(14) do |n|
#   puts "n = #{n}"
# end
# # n = 10
# # n = 11
# # n = 12
# # n = 13
# # n = 14


# ========================
# # `step` メソッド
# # - <開始値> から <終了値> まで n ずつ値を増やしながら処理を
# #   繰り返し行う
# # - 構文（引数として上限値 / 増加値を受け取っている形）
# #   <開始値>.step(<上限値, 増加値>) {}
# 1.step(10, 3) { |n| puts n }
# # 1
# # 4
# # 7
# # 10

# 10.step(1, -4) { |n| puts n }
# # 10
# # 6
# # 2


# ========================
# # loop
# # - 無限ループを実行する
# i = 1
# loop do
#   puts i
#   i += 1
#   # `break` でループを抜ける
#   break if i == 10
# end

# numbers = [1, 2, 3, 4, 5]
# numbers.each do |n|
#   # n が偶数なら次のループに移行する
#   # 偶数の判定は `n.even?` でも可能
#   next if n % 2 == 0
#   puts n
# end
# # 1
# # 3
# # 5


# ========================
# # `Car` クラスの作成
# # クラス名は大文字で始める
# class Car
#   def print_string(str)
#     puts str
#   end
# end

# # インスタンスを生成して変数に格納
# car = Car.new

# # クラス内に定義されている `print_string` メソッドを呼び出す
# car.print_string('Hello')
# # Hello


# ========================
# class Car
#   # `initialize` メソッド
#   # - インスタンス生成時に実行されるメソッド
#   def initialize(name)
#     puts 'initialize'
#     # インスタンス変数（「@」から始まる変数）
#     # - 同一クラス内のメソッドであれば、どこからでも呼び出す
#     #   ことができる
#     @name = name
#   end

#   def hello
#     puts "Hello! #{@name}."
#   end
# end

# # `new` の引数は `initialized` メソッドの引数に値が渡る
# car = Car.new('lily')
# car.hello
# # initialize
# # Hello! lily.


# ========================
# class Car
#   def initialize(name)
#     puts '[initialize]'
#     @name = name
#   end

#   def name
#     # `@name` の値を返却する
#     @name
#   end
# end

# car = Car.new('lily')
# name = car.name

# # `@name` の値を呼び出している
# puts name
# # [initialize]
# # lily


# ========================
# class Car
#   def initialize(name)
#     @name = name
#   end

#   # getterメソッド
#   def name
#     @name
#   end

#   # setterメソッド（「=」で終わる）
#   def name=(value)
#     @name = value
#   end
# end

# car = Car.new('lily')
# puts car.name
# # lily

# # 通常の変数代入と同じ形式で、インスタンス変数の再代入が可能
# car.name = 'lipton'
# puts car.name
# # lipton


# ========================
# class Car
#   def initialize(name)
#     @name = name
#   end

#   # `attr_accessor` メソッド
#   # - 「アクセサメソッド」とも呼ばれ、getter / setter が自動で
#   #   定義される
#   # - getter だけを定義したい場合は `attr_reader`、setter だけ
#   #   を定義したい場合は `attr_writer` を使用する
#   attr_accessor :name

#   # def name
#   #   @name
#   # end

#   # def name=(value)
#   #   @name = value
#   # end
# end

# car = Car.new('lily')
# puts car.name  # lily

# car.name = 'lipton'
# puts car.name  # lipton


# ========================
# チェリー本の「2.12.8 putsメソッド、printメソッド、pメソッド、ppメソッド」のコラム参照

