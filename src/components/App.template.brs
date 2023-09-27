function render() as Object
    return [
        {
            name: "RouterOutlet"
            props: {
                id: "routerOutlet"
                outletName: "app-outlet"
            }
        }
        {
            name: "Timer"
            props: {
                id: "minimumSplashTimer"
                duration: 2
            }
            events: {
                fire: "_onMinimumSplashTimerFired"
            }
        }
    ]
end function
