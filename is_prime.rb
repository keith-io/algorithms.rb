# determine if a number is prime

def isPrime(num)
    for i in 2..Math.sqrt(num) do
        if num % i == 0
            return false
        end
    end
    return num >= 2
end
