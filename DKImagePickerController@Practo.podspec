Pod::Spec.new do |s|
  s.name          = "DKImagePickerController@Practo"
  s.version       = "3.3.5"
  s.summary       = "It's a Facebook style Image Picker Controller by Swift."
  s.homepage      = "https://github.com/zhangao0086/DKImagePickerController"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Bannings" => "zhangao0086@gmail.com" }
  s.platform      = :ios, "8.0"
  s.source        = { :git => "https://github.com/practo/DKImagePickerController.git", 
                     :tag => s.version.to_s }
  s.source_files  = "DKImagePickerController/**/*.{h,swift}"

  s.resource      = "DKImagePickerController/DKImagePickerController.bundle"
  s.frameworks    = "Foundation", "UIKit", "Photos"
  s.requires_arc  = true

  s.subspec 'Camera' do |camera|

    camera.ios.source_files = "DKCamera/DKCamera.swift"
    camera.resource = "DKCamera/DKCameraResource.bundle"
  end

  s.subspec 'ImageManager' do |image|

    image.ios.source_files = "DKImageManager/**/*.swift"
  end

end