def potencia(n):
    if n == 0: 
        return 1
    else:
        return 2 * potencia(n-1)
    
  

def sum(n):
    if n == 1:
        return 1
    else:
        return n + sum(n-1)

def sumarray(list):
    if len(list) == 1: 
        return list[0]
    return list[0] + sumarray(list[1:])
sumarray([5])

def fatorial(n):
    m = 1
    for i in range(1, n+1):
        m = i * m
    return m

def selection_sort(arr):
    n = len(arr)
    
    for i in range(n):
        min_idx = i
        for j in range(i + 1, n):
            if arr[j] < arr[min_idx]:
                min_idx = j   
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    return arr
