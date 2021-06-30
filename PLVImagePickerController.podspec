Pod::Spec.new do |s|
  s.name             = 'PLVImagePickerController'
  s.version          = '0.1.0'
  s.summary          = 'A clone of TZImagePickerController, support picking multiple photos、original photo and video'
  
  s.description      = <<-DESC
  PLVImagePickerController - 一个私有化仓库
  主要是iOS 支持拍照，相册和视频多选功能
                       DESC

  s.homepage         = 'https://github.com/polyv/PLVImagePickerController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pengyf' => 'Sakya0214@gmail.com' }
  s.source           = { :git => 'https://github.com/polyv/PLVImagePickerController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  
  s.requires_arc = true
  s.source_files = 'PLVImagePickerController/Classes/**/*.{h,m}'
  s.resources    = 'PLVImagePickerController/Classes/PLVImagePickerController/*.{png,bundle}'
  s.frameworks   = "Photos"
end
