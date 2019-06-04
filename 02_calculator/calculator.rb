#write your code here
def add x, y
    x.to_f + y.to_f
end

def subtract x, y 
    x.to_f - y.to_f
end

def sum arr
    if
        arr.size == 0
        return 0
    end
    arr.reduce(:+)
end

def multiply *args
   args.reduce(1, :*)
end

def power x, y
    p = x
    i = 1
    while i < y
        i += 1
        x *= p
    end
    x
end

def factorial x
    if x == 0
        x = 1
    end
    i = x
    while i >= 2
        i -= 1
        x *= i
    end
    x
end