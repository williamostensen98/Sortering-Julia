function Partition!(A, p, r)
    x = A[r]
    i = p-1
    for j in p:(r-1)
        if A[j]<=x
            i+=1
            t = A[j]
            A[j] = A[i]
            A[i] = t

            #A[i],A[j]=A[j],A[i]
        end
    end
    #A[i+1],A[r]=A[r],A[i+1]
    x = A[i+1]
    A[i+1]=A[r]
    A[r] = x
    return i+1
end


function Quicksort(A,p,r)
    if p<r
        q=Partition(A,p,r)
        Quicksort(A,p,q-1)
        Quicksort(A,q+1,r)
    end
end
l = [3,4,2,1]
Quicksort(l,1,length(l))
print(l)
