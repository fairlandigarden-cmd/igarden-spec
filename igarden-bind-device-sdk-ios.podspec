Pod::Spec.new do |s|
  s.name             = 'igarden-bind-device-sdk-ios'
  s.version          = '1.0.5'
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
    :http => 'https://github.com/fairlandigarden-cmd/ios-bind-device/raw/main/release/download/v1.0.5/igarden-bind-device-sdk-ios.xcframework.zip'
  }

  # 指定解压后的 XCFramework 路径
  s.vendored_frameworks = 'igarden-bind-device-sdk-ios.xcframework'

  # 指定 Swift Module 名称，使业务方可以直接 import IGardenSdkIOS
  s.module_name = 'IGardenSdkIOS'

  # ⚠️ 当前二进制为动态库 (mh_dylib)，不要开启 static_framework！
  # s.static_framework = true
end
