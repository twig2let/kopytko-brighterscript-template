sub init()
    #if RALE 'bs:disable-line
        m.tracker = m.top.createChild("TrackerTask")
    #end if

    app = m.top.createChild("Group")
    app.id = "app"
end sub