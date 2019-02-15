function Merge(A,p,q,r)
    n = q-p+1
    m = r-q
    #L = zeros(Int.n+1)
    L = [0 for x in 1:n+1]
    #R = zeros(Intm+1)
    R = [0 for x in 1:m+1]
    for i in 1:n
        L[i] = A[p+i-1]
    end
    for j in 1:m
        R[j] = A[q+j]
    end
    L[n+1] = (2^63)-1
    R[m+1] = (2^63)-1
    i = 1
    j = 1
    for k in p:r
        if L[i]<=R[j]
            A[k] = L[i]
            i+=1
        else
            A[k] = R[j]
            j+=1
        end
    end
end

function Mergesort(A,p,r)
    if p<r
        q = floor(Int,(p+r)/2)
        Mergesort(A,p,q)
        Mergesort(A,q+1,r)
        Merge(A,p,q,r)

    end
end

l = [3,4,2,1,4,6,8,9]
Mergesort(l,1,length(l))
print(l)
