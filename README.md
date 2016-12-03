# minitestを使ってみる

## minitestのインストール
Bundlerでインストールする。
```
$ bundle init
```
Gemfileに`gem "minitest"`を記載し、インストール。
```
$ bundle install --path=vendor/bundle --binstubs=vendor/bin
```

## minitestの実行
```
$ ruby ./test/test_foo.rb 
MiniTest::Unit::TestCase is now Minitest::Test. From ./test/test_foo.rb:7:in `<main>'
Run options: --seed 38356

# Running:

.F

Finished in 0.001806s, 1107.5792 runs/s, 1107.5792 assertions/s.

  1) Failure:
TestFoo#test_bar [./test/test_foo.rb:21]:
Expected: "bar"
  Actual: "foo"

2 runs, 2 assertions, 1 failures, 0 errors, 0 skips
```