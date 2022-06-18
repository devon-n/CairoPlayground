%builtins output

from starkware.cairo.common.serialize import serialize_word

# Computes base^exp.
func pow(base : felt, exp : felt) -> (res):
    if exp == 0:
        return (res=1)
    end

    let (res) = pow(base=base, exp=exp - 1)
    return (res=res * base)
end

func main{output_ptr : felt*}():
    alloc_locals
    
    # Calculate powers
    let (local x) = pow(10, 74)
    let (local y) = pow(10, 75)
    let (local z) = pow(10, 76)
    
    #1
    serialize_word(1 + 100)
    serialize_word(1 - 100)
    serialize_word(9 * 9)
    
    #2
    serialize_word(x)
    serialize_word(y)
    serialize_word(z)
    
    #3
    serialize_word(12 / 3)
    serialize_word((-12) /3)

    #4
    serialize_word(13/3)

    return ()
end
