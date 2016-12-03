# minitestを使ってみる

## minitestのインストール
```
$ bundle install --path=vendor/bundle --binstubs=vendor/bin
```

## minitestの実行
```
$ ruby test_foo.rb 
Warning: you should require 'minitest/autorun' instead.
Warning: or add 'gem "minitest"' before 'require "minitest/autorun"'
From:
  test_foo.rb:2:in `require'
  test_foo.rb:2:in `<main>'
MiniTest::Unit::TestCase is now Minitest::Test. From test_foo.rb:7:in `<main>'
Run options: --seed 7987

# Running:

F.

Finished in 0.002844s, 703.3041 runs/s, 703.3041 assertions/s.

  1) Failure:
TestFoo#test_bar [test_foo.rb:21]:
Expected: "bar"
  Actual: "foo"

2 runs, 2 assertions, 1 failures, 0 errors, 0 skips
```