def fib(n, memo = {})
  return memo[n] if memo.key?(n)
  return 1 if n <= 2

  memo[n] = fib(n - 1, memo) + fib(n - 2, memo)
  memo[n]
end

def fib_old(n)
  return 1 if n <= 2

  return fib_old(n-1) + fib_old(n-2)
end

def fib_list(n)
  (1..n).map do |i|
    fib(i)
  end
end