const { baseManifest } = require('@dazn/kopytko-packager');

module.exports = function () {
    return {
        ...baseManifest,
        bs_const: { RALE: false, },
        build_version: 1,
        major_version: 0,
        minor_version: 0,
        mm_icon_focus_fhd: "pkg:/images/icons/icon_focus_fhd.png",
        mm_icon_focus_hd: "pkg:/images/icons/icon_focus_hd.png",
        mm_icon_focus_sd: "pkg:/images/icons/icon_focus_sd.png",
        splash_screen_fhd: "pkg:/images/splash/splash_fhd.png",
        splash_screen_hd: "pkg:/images/splash/splash_hd.png",
        splash_screen_sd: "pkg:/images/splash/splash_sd.png",
        title: 'Brighterscript & Kopytko Starter',
        ui_resolutions: "fhd",
        uri_resolution_autosub: "$$RES$$,720,720,1080"
        
    }
}()


