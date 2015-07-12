def add(a, b)
  if Integer(a) && Integer(b)
    a + b
  end
end

def subtract(a, b)
  if Integer(a) && Integer(b)
    a - b
  end
end

def sum(arr, n = arr.length)
  if n == 0
    return n
  end
  return arr.reduce(:+)
end

def multiply(*args)
  if !(args[0].is_a? Integer)
    return 'Only multiplies numbers'
  end
  args.reduce(:*)
end

def power(a,b)
  if b == 1
    return a
  end
  a * power(a, b - 1)
end

def factorial(n)
  if n == 1
    return n
  elsif n == 0
    return 1
  end
  n * factorial(n - 1)
end
