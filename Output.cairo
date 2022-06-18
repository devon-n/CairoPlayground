# Use the output builtin.
%builtins output

# Import the serialize_word() function.
# serialize_word() is similar to print or console.log
from starkware.cairo.common.serialize import serialize_word

func main{output_ptr : felt*}():
    # Output 100 by calling serialize_word.
    serialize_word(100)
    # Output 200.
    serialize_word(200)
    # Output 300.
    serialize_word(300)
    # Output 400
    serialize_word(400)
    # Return.
    return ()
end
