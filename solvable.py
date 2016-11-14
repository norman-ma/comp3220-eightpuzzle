
def solvable(a):
    inv = 0
    a.remove(0)
    for i in range(len(a)):        
        for j in range(i,len(a)):
            if a[i]>a[j]:
                print a[i],'>',a[j]
                inv+=1
    print inv
    return inv%2 == 0
