function init()
    validateInputData()
    setUpInitialVariables()
    copyValues()
end function

function validateInputData()
    m.img = m.top.image
    m.kind = m.top.type
    m.duration = m.top.duration
    m.name = m.top.name
    if not isNonEmptyString(m.img)
        m.img = "pkg:/images/placeholder.png"
    end if
    if not isNonEmptyString(m.kind)
        m.kind = "VOD"
    end if
    if not isNonEmptyString(m.duration) 
        m.duration = "00:00:00"
    end if
    if not isNonEmptyString(m.name)
        m.name = "Unnamed"
    end if
end function

function setUpInitialVariables()
    m.SGImage = m.top.findNode("image")
    m.SGTypeIcon = m.top.findNode("typeIcon")
    m.SGNameLabel = m.top.findNode("nameLabel")
    m.SGDurationLabel = m.top.findNode("durationLabel")
end function

function copyValues()
    m.SGImage.uri = m.img
    m.SGTypeIcon.uri = "pkg:/images/" + m.kind + ".png"
    m.SGNameLabel.text = m.name
    m.SGDurationLabel.text = m.duration
end function