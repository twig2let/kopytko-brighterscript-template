sub getManifestValue(key as String) as Dynamic
    return createObject("roAppInfo").getValue(key)
end sub