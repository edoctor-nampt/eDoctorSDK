# eDoctorSDK

[![Version](https://img.shields.io/cocoapods/v/eDoctorSDK.svg?style=flat)](https://cocoapods.org/pods/eDoctorSDK)
[![License](https://img.shields.io/cocoapods/l/eDoctorSDK.svg?style=flat)](https://cocoapods.org/pods/eDoctorSDK)
[![Platform](https://img.shields.io/cocoapods/p/eDoctorSDK.svg?style=flat)](https://cocoapods.org/pods/eDoctorSDK)

## Example

Để chạy được example, trước tiên cần chạy lệnh `pod install` trong thư mục example.
```ruby
cd example && pod install
```

## Requirements

## Installation

eDoctorSDK được lưu trữ trên nền tảng [CocoaPods](https://cocoapods.org). Để cài đặt, chỉ cần thêm dòng sau vào `Podfile`

```ruby
pod 'eDoctorSDK'
```
### Info.split
Để sử dụng được tính năng chính của SDK cần update file `Info.split` của app những key sau (có thể thay đổi giá trị <string>, đây là các message hiển thị cho user khi yêu cầu cấp quyền tương ứng)
```swift
<key>NSCameraUsageDescription</key>
<string>Need to access your camera to make video calls</string>
<key>NSMicrophoneUsageDescription</key>
<string>Need to access the microphone to make video calls</string>
```

## Usage
 **1. Khởi tạo EClinic instance**
 ```swift
 ...
 import eDoctorSDK
class ViewController: UIViewController {
    ...
    let eClinic = EClinic(brandColor: .red, textColor: .white)
}
 ```

| **Tham số**   | **Type** | **Giải thích** | **Default**                                              |
| :------------ | :----------- | :----------------------------------------------------------- | :------------ |
| **brandColor** | UIColor? | Màu định vị thương hiệu của app (primary color) | UIColor(red: 239/255, green: 23/255, blue: 23/255, alpha: 1)
| **textColor**  | UIColor? | Màu chữ của app (secondary color) | UIColor.white |
**2. Mở module phòng khám**
```swift
...
 import eDoctorSDK
class ViewController: UIViewController {
    ...
    eClinic.openClinic(currentViewController: self)
}
```
| **Tham số**   | **Type** | **Giải thích** | **Default**                                              |
| :------------ | :----------- | :----------------------------------------------------------- | :------------ |
| **currentViewController** | UIViewController | Instance của UIViewController sẽ dùng để mở module phòng khám | |
## Author

NamPT, nampt@edoctor.vn

## License

eDoctorSDK is available under the MIT license. See the LICENSE file for more info.
