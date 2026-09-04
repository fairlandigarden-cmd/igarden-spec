Pod::Spec.new do |s|
  s.name             = 'IGardenBindDeviceSdk'
  s.version          = '1.0.0'
  s.summary          = 'IGarden Bind Device'
  s.description      = <<-DESC
  IGarden 私有SDK，二进制XCFramework
DESC
  s.homepage         = 'https://github.com/JennyWXH/ios-sdk'
  s.license          = { :type => 'MIT' }
  s.author           = { "Jemmy" => "jemmywang0221@gmail.com" }
  s.platform         = :ios, '15.6'
  s.swift_version    = '5.7'

  s.source = {
    :http => 'https://github.com/fairlandigarden-cmd/ios-bind-device/blob/main/release/download/v1.0.0/IGardenSdkIOS.xcframework.zip'
  }

  # ✅ 重点：改成 vendored_frameworks，xcframework 直接写在这里
  s.vendored_frameworks = 'IGardenSdkIOS.xcframework'

  # 如果是静态XCFramework，打开下面这行
  # s.static_framework = true

  # 依赖在这里添加，例如
  # s.dependency 'Moya', '~>15.0'
end
