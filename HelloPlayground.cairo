# Use the output builtin.
%builtins output

# Import the serialize_word() function.
# serialize_word() is similar to print or console.log
from starkware.cairo.common.serialize import serialize_word

func main{output_ptr : felt*}():
    tempvar x = 10
    tempvar y = x + x
    tempvar z = y * y + x
    serialize_word(x)
    serialize_word(y)
    serialize_word(z)
    return ()
end