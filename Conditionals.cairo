# Use output builtin
%builtins output

# Import serialize_word to print
from starkware.cairo.common.serialize import serialize_word

# abs_eq takes in two params, returns one
func abs_eq(x : felt, y : felt) -> (bit : felt):
    # If the square of both params are equal
    if (x * x) == (y * y):
        return (bit=1)
    # else return 0
    else:
        return (bit=0)
    end
end

# Add {output_ptr : felt*} so we can print
func main{output_ptr : felt*}():
    let (bit) = abs_eq(2, -2)
    assert bit = 1
    serialize_word(bit)

    let (bit) = abs_eq(2, 3)
    assert bit = 0
    serialize_word(bit)

    let (bit) = abs_eq(2, 2)
    assert bit = 1
    serialize_word(bit)

    return ()
end