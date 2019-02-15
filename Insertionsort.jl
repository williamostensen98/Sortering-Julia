function Insertionsort!(A)
    for i = 2:length(A)
        k = A[i]
        j = i-1
        while j > 0 && A[j]>k
            A[j+1] = A[j]
            j = j-1
        end
        A[j+1] = k
    end
    return A
end
l = [3,4,2,1]
Insertionsort!(l)
print(l)
