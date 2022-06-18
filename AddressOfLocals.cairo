# Returns the xor of the last two hexadecimal digits.
func xor_last_hex_digits{bitwise_ptr : BitwiseBuiltin*}(x : felt) -> (res : felt):
    # Fix and uncomment the line below.
    # let (digit0) = ...
    let (digit0) = bitwise_and(x, 0x0F)

    let (shifted_digit1) = bitwise_and(x, 0xF0)
    tempvar digit1 = shifted_digit1 / 0x10

    return bitwise_xor(digit0, digit1)
end

func main{bitwise_ptr : BitwiseBuiltin*}():
    let (res) = xor_last_hex_digits(0x1234)
    assert res = 7

    return ()
end