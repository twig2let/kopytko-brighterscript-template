function Logger() as Object
    if m._logger = invalid
        if CreateObject("roAppInfo").isDev()
            m._logger = getLiveLogger()
        else
            m._logger = getDeadLogger()
        end if
    end if

    return m._logger
end function

function getDeadLogger() as Object
    return { log: sub(message = "" as String): : end sub }
end function

function getLiveLogger() as Object
    return {
        _dateTime: CreateObject("roDateTime")

        log: sub(message = "" as Dynamic) as Boolean
            m._dateTime.mark()
            m._dateTime.toLocalTime()

            print "[APP][INFO]", left(m._dateTime.toISOString(), 19) + " > " + message
        end sub

    }
end function