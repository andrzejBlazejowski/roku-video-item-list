function isString(value)
    return (Type(vaule) = "string" OR Type(vaule) = "roString")
end function

function isNonEmptyString(value)
    return value <> "" AND isString(value)
end function