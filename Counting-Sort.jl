function CountingSort(A,B,k)
    C = [0 for x in 0:k]
    for j in 1:length(A)
        C[A[j]]=C[A[j]]+1
    end
    for i in 2:k
        C[i]=C[i]+C[i-1]
    end
    for j in length(A):-1:1
        B[C[A[j]]]=A[j]
        C[A[j]]=C[A[j]]-1
    end
    return B
end

A = [1,4,3,5,7,6,8]
B = [0,0,0,0,0,0,0]
print(CountingSort(A,B,8))
