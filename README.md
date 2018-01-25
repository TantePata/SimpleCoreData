
## What is SimpleCoreData?
SimpleCoreData is little framework made as a project for our iOS class. It is made to make easier the use of CoreData for all your CRUD operations, making you write less lines of code, and even generates default screens for the data manipulation UIs (forms and lists).


## Features
-  simpler data manpulation methods
- default screens for your CoreData entities' manipulation

## Setup

### [CocoaPods](https://cocoapods.org)

1. Install [CocoaPods](https://cocoapods.org). You can do it with `gem install cocoapods`
2. Edit your `Podfile` file and add the following line `pod 'SugarRecord'`
3. Update your pods with the command `pod install`
4. Open the project from the generated workspace (`.xcworkspace` file).

*Note: You can also test the last commits by specifying it directly in the Podfile line*

**Available specs**
Choose the right one depending ton the configuration you need for you app.

```ruby
pod "SugarRecord/CoreData"
pod "SugarRecord/CoreData+iCloud"
```

### [Carthage](https://github.com/carthage)

1. Install [Carthage](https://github.com/carthage). You can do it with `brew install carthage`.
2. Edit your `Cartfile` file and add the following line `github "carambalabs/sugarrecord".
3. Execute `carthage update`
4. Add the frameworks to your project as explained on the [Carthage repository](https://github.com/carthage).
