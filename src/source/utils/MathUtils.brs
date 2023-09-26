function clamp(_value as Double, _min as Double, _max as Double) as Double
    if _value > _max then return _max
    if _value < _min then return _min
    return _value
end function

function max(_first as Float, _second as Float) as Float
    if _first > _second then return _first
    return _second
end function

function min(_first as Float, _second as Float) as Float
    if _first < _second then return _first
    return _second
end function

function mathCeil(_input as Float) as Integer
    result = fix(_input)
    if _input > 0 AND _input <> result then return result + 1
    return result
end function