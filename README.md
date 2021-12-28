# CocoaPods dynamic framework issue

This small PoC should show an issue I experience with CocoaPods and dynamic xcframeworks references via a Podfile. 


# Idea 

The idea is the following. There is _some_ 3rd party dependency included via a Podfile as an `.xcframework` into an Xcode target. This target then is included into another target; In this example here it is already the executable iOS target. The app should be able to run as normal but it seems when the Pod dependency is only referencing an `.xcframework` instead of the source code of the 3rd party dependency and is dynamically linked it cannot be picked up correctly at runtime and the app is crashing when the app target loads the framework target, which itself requires the Pod dependency to be available. 

# Install dependencies 

In order to install the dependencies you need to have `bundler` installed. With that we can ensure a fixed CocoaPods version is used.

`sudo gem install bundler`

After installing `bundler` you need to install CocoaPods as follows:

`bundle install`

No we are ready to install our dependencies 

`bundle exec pod install`

# Try out issue 

Open the `.xcworkspace` and try to run the iOS app. After launching the app you should see the following issue: 

```
dyld[49814]: Library not loaded: @rpath/FBAEMKit.framework/FBAEMKit
```