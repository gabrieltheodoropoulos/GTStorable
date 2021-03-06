# GTStorable
A protocol which provides standard file operations for types conforming to Codable protocol.

## Overview

`GTStorable` protocol provides the following operations:

* Saving to file.
* Loading from file.
* Removing data file.
* Checking for data file existence.
* Creating data file backup.
* Removing data file backup.

### Available API

* `save(as:usingOptions:customCoders:)`
* `load(from:forObjectOfType:usingOptions:customCoders:)`
* `remove(fileOfType:usingOptions:)`
* `dataFileExists(ofType:withOptions:)`
* `backupDataFile(ofType:usingOptions:)`
* `removeBackupFile(ofType:usingOptions:)`

Data can be encoded and saved to files in three formats currently: *JSON, Property List (plist) and Archived data*.

Read the [documentation](https://gtiapps.com/docs/gtstorable/index.html) for more information about the protocol's methods and the custom types used and supported. Alternatively see documentation on the code files under the Source directory.

## Integration

You can use **CocoaPods** for adding GTStorable to your workspace. In your Podfile include this:

```ruby
pod 'GTStorable', :git => 'https://github.com/gabrieltheodoropoulos/GTStorable.git'
```

*Git URL is necessary as the pod is not pushed to the public trunk yet.*

Do not forget to *import* GTStorable whenever necessary:

```swift
import GTStorable
```

You can also add GTStorable **manually** to your project. Download or clone the repository and drag-and-drop the Source directory into the Project Navigator in Xcode.

## Usage Example

Consider the following struct which conforms to GTStorable protocol.

```swift
struct User: Codable, GTStorable {
    var username: String?
    var firstname: String?
    var age: Int?
    var isMale: Bool = true
}
```

Saving an instance of it to file as a JSON can be done like this:

```swift
do {
    _ = try user.save(as: .json, usingOptions: nil, customCoders: nil)
} catch { ... }

// The user.json file will be created.

```

Loading:

```swift
do {
    let loadedUser = try User.load(from: .json, forObjectOfType: User.self, usingOptions: nil, customCoders: nil)
} catch { ... }
```

You can even create a backup of the data file:

```swift
do {
    _ = try user.backupDataFile(ofType: .json, usingOptions: nil)
} catch { ... }

// user.json.bak is the backup file created.

```

Use the `storeOptions` parameter to specify subdirectories, custom file names and extensions, even to change the working folder. By default, all files are stored to Documents directory of the app.

Also, provide optionally customized JSON and Property List encoder and decoder instances in the `customCoders` parameter (wherever applicable) for overriding the default used settings. See the documentation for more information.

## Other

Created by [Gabriel Theodoropoulos](https://gtiapps.com). GTStorable is provided under MIT license.
