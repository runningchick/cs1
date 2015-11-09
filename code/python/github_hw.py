def hs(n):
    count = 0
    if (n == 1):
        print(n)
        count = 1
        print(count)
    else:
        while (n != 1):
            print(n)
            if (n % 2 == 0):
                n = n // 2
                count = count + 1
            else:
                n = (n * 3) + 1
                count = count + 1
        print(n)
        count = count + 1
        print(count)

            

 
