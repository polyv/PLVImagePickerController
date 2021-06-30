Pod::Spec.new do |s|
  s.name             = 'PLVImagePickerController'
  s.version          = '0.1.0'
  s.summary          = 'A clone of TZImagePickerController, support picking multiple photos、original photo and video'
  
  s.description      = <<-DESC
  PLVImagePickerController
  iOS 拍照，相册多选功能
                       DESC

  s.homepage         = 'https://github.com/polyv/PLVImagePickerController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sakya0214@gmail.com' => 'pengyunfei@polyv.net' }
  s.source           = { :git => 'https://github.com/polyv/PLVImagePickerController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'PLVImagePickerController/Classes/**/*'
  s.resources    = 'PLVImagePickerController/Classes/PLVImagePickerController/*.{png,bundle}'

end
