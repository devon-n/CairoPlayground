# Use output builtin
%builtins output

# Import serialize_word to print
from starkware.cairo.common.serialize import serialize_word

# Add 1 takes one param and returns one param
func add1(y: felt) -> (y: felt):
    # Return input param + 1
    return(y+1)
end

func add1_square(x : felt) -> (x : felt):
    # Call `add1` and unpack the result into `z`.
    let (z) = add1(y=x)
    # return z sqaured
    return (x=z * z)
end



func main{output_ptr : felt*}():
    # Call `add1_square` and save the result into `res`.
    let (res) = add1_square(x=12)

    # Verify the computation.
    assert res = (12 + 1) * (12 + 1)
    
    # Print res
    serialize_word(res)
    
    return()
end