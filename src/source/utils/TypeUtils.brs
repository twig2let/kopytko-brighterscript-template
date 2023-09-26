function isArray(_value as Dynamic) as Boolean
    return type(_value) = "roArray" OR type(_value) = "Array"
end function

function isNonEmptyArray(_value as Dynamic) as Boolean
    return isArray(_value) AND _value.count() > 0
end function

function isObject(_value as Dynamic) as Boolean
    return type(_value) = "roAssociativeArray" OR type(_value) = "Object"
end function

function isNonEmptyObject(_value as Dynamic) as Boolean
    return isObject(_value) AND _value.keys().count() > 0
end function

function isNonEmptyNode(_value as Dynamic) as Boolean
    return isNode(_value) AND _value.getChildCount() > 0
end function

function isBoolean(_value as Dynamic) as Boolean
    return type(_value) = "roBoolean" OR type(_value) = "Boolean"
end function

function isBooleanAndTrue(_value as Dynamic) as Boolean
    return isBoolean(_value) AND _value
end function

function isBooleanAndFalse(_value as Dynamic) as Boolean
    return isBoolean(_value) AND NOT _value
end function

function isInteger32(_value as Dynamic) as Boolean
    return type(_value) = "roInt" OR type(_value) = "roInteger" OR type(_value) = "Integer"
end function

function isInteger64(_value as Dynamic) as Boolean
    return type(_value) = "roLongInteger" OR type(_value) = "LongInteger"
end function

function isInteger(_value as Dynamic) as Boolean
    return isInteger32(_value) OR isInteger64(_value)
end function

function isFloat32(_value as Dynamic) as Boolean
    return type(_value) = "roFloat" OR type(_value) = "Float"
end function

function isFloat64(_value as Dynamic) as Boolean
    return type(_value) = "roDouble" OR type(_value) = "Double"
end function

function isFloat(_value as Dynamic) as Boolean
    return isFloat32(_value) OR isFloat64(_value)
end function

function isNumber(_value as Dynamic) as Boolean
    return isInteger(_value) OR isFloat(_value)
end function

function isString(_value as Dynamic) as Boolean
    return type(_value) = "roString" OR type(_value) = "String"
end function

function isNonEmptyString(_value as Dynamic) as Boolean
    return isString(_value) AND len(_value) > 0
end function

function isFunction(_value as Dynamic) as Boolean
    return type(_value) = "roFunction" OR type(_value) = "Function"
end function

function isNode(_value as Dynamic) as Boolean
    return type(_value) = "roSGNode"
end function

function isList(_value as Dynamic) as Boolean
    return type(_value) = "roList"
end function

function isVideoPlayer(_value as Dynamic) as Boolean
    return type(_value) = "roVideoPlayer"
end function

function isInitialised(_value as Dynamic) as Boolean
    return lcase(type(_value)) <> "<uninitialized>"
end function

function isInvalid(_value as Dynamic) as Boolean
    return _value = invalid OR type(_value) = "roInvalid"
end function

function isValid(_value as Dynamic) as Boolean
    return isInitialised(_value) AND (_value <> invalid AND type(_value) <> "roInvalid")
end function

function isMessagePort(_value as Dynamic) as Boolean
    return type(_value) = "roMessagePort"
end function

function isDate(_value as Dynamic) as Boolean
    return type(_value) = "roDateTime"
end function

function isNodeEvent(_value as Dynamic) as Boolean
    return type(_value) = "roSGNodeEvent"
end function

function isScreen(_value as Dynamic) as Boolean
    return type(_value) = "roSGScreen"
end function

function isTimer(_value as Dynamic) as Boolean
    return isNode(_value) AND _value.subtype() = "Timer"
end function

function hasIfToStr(_value as Dynamic) as Boolean
    return isValid(_value) AND GetInterface(_value, "ifToStr") <> invalid
end function

function hasIfStringOps(_value as Dynamic) as Boolean
    return isValid(_value) AND GetInterface(_value, "ifStringOps") <> invalid
end function