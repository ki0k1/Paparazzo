Pod::Spec.new do |s|
  s.name                   = 'Paparazzo'
  s.module_name            = 'Paparazzo'
  s.version                = '1.0.0'
  s.summary                = 'Paparazzo by Andrey Yutkin'
  s.homepage               = 'https://github.com/avito-tech/Paparazzo'
  s.license                = 'MIT'
  s.author                 = { 'Andrey Yutkin' => 'ayutkin@avito.ru' }
  s.source                 = { :git => 'https://github.com/avito-tech/Paparazzo.git', :tag => "#{s.version}" }
  s.platform               = :ios, '8.0'
  s.ios.deployment_target = "8.0"
  s.requires_arc = true

  s.frameworks = 'UIKit', 'Photos', 'ImageIO', 'MobileCoreServices', 'GLKit', 'OpenGLES', 'CoreMedia', 'CoreVideo', 'AVFoundation', 'QuartzCore'
  
  s.dependency 'JNWSpringAnimation'
  s.dependency 'SDWebImage', '~> 3.8'
  s.dependency 'ImageSource', :git => 'https://github.com/ki0k1/Paparazzo'
  
  s.subspec 'Core' do |cs|
    cs.source_files = 'Paparazzo/Core/**/*'
    cs.resources = ['Paparazzo/Assets/Assets.xcassets']
  end
  
  s.subspec 'Marshroute' do |ms|
    ms.dependency 'Paparazzo/Core'
    ms.dependency 'Marshroute'
    ms.source_files = 'Paparazzo/Marshroute/**/*'
  end
end
