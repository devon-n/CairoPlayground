# Use the output builtin.
%builtins output

# Import the serialize_word() function.
from starkware.cairo.common.serialize import serialize_word

# Outputs the value 2^9.
func main{output_ptr : felt*}():
    # Allow variables to be stored locally 
    # Let references the variables, local stores them
    alloc_locals

    # tempvar x = 2
    local x = 2
    # let y = x * x * x
    local y = x * x * x
    # let z = y * y * y
    local z = y * y * y

    # Because of the `let`s, the following line is equivalent to
    # serialize_word(x * x * x * x * x * x * x * x * x).
    serialize_word(z)
    return ()
end