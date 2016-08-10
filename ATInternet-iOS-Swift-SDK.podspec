{
  "name": "ATInternet-iOS-Swift-SDK",
  "version": "2.0.8.2",
  "summary": "AT Internet mobile analytics solution for iOS",
  "homepage": "https://github.com/at-internet/atinternet-ios-swift-sdk",
  "documentation_url": "http://developers.atinternet-solutions.com/ios-en/getting-started-en/operating-principle-ios-en/",
  "license": "MIT",
  "authors": "AT Internet",
  "platforms": {
    "ios": "8.0"
  },
  "source": {
    "git": "https://github.com/at-internet/atinternet-ios-swift-sdk.git",
    "tag": "2.0.8.2"
  },
  "module_name": "Tracker",
  "requires_arc": true,
  "subspecs": [
    {
      "name": "Res",
      "resources": [
        "Tracker/Tracker/DefaultConfiguration.plist",
        "Tracker/Tracker/core.manifest.json",
        "Tracker/Tracker/*.{xcdatamodeld,png,json}",
        "Tracker/Tracker/Images.xcassets"
      ]
    },
    {
      "name": "iOS",
      "source_files": "Tracker/Tracker/*.{h,m,swift}",
      "frameworks": [
        "CoreData",
        "CoreFoundation",
        "UIKit",
        "CoreTelephony",
        "SystemConfiguration"
      ],
      "dependencies": {
        "ATInternet-iOS-Swift-SDK/Res": [

        ]
      }
    },
    {
      "name": "AppExtension",
      "pod_target_xcconfig": {
        "OTHER_SWIFT_FLAGS": "-DAT_EXTENSION"
      },
      "source_files": "Tracker/Tracker/*.{h,m,swift}",
      "exclude_files": "Tracker/Tracker/BackgroundTask.{swift}",
      "frameworks": [
        "CoreData",
        "CoreFoundation",
        "WatchKit",
        "UIKit",
        "CoreTelephony",
        "SystemConfiguration"
      ],
      "dependencies": {
        "ATInternet-iOS-Swift-SDK/Res": [

        ]
      }
    }
  ]
}
