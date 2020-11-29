function init()
    validateInputData()
end function

function validateInputData()
    m.img = m.top.image
    m.kind = m.top.type
    m.duration = m.top.duration
    m.durationMiliseconds = m.top.durationMiliseconds
    m.name = m.top.name
    if not isNonEmptyString(m.img)
    
    end if
    if not isNonEmptyString(m.kind)
        m.kind = "VOD"
    end if
    if not isNonEmptyString(m.duration) and not isNonEmptyString(m.duration)
        m.duration = "00:00:00"
        m.durationMiliseconds = 0
    end if
    if not isNonEmptyString(m.name)
        m.name = "Unnamed"
    end if
    ? m.img
    ? m.kind
    ? m.duration
    ? m.durationMiliseconds
    ? m.name
end function