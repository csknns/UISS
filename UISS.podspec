Pod::Spec.new do |s|
  s.name     = 'UISS'
  s.version  = '1.1.2'

  s.platform = :ios, '5.0'
  
  s.license  = 'MIT'
  s.summary  = 'UIKit Style Sheets.'
  s.homepage = 'https://github.com/robertwijas/UISS'
  s.author   = { 'Robert Wijas' => 'https://robertwijas.com' }
  s.description = 'UISS stands for UIKit Style Sheets. UISS is an iOS library that provides you with a convenient way to define the style of your application. UISS is built on top of UIKit UIAppearance proxies.'  

  s.source   = { :git => 'https://github.com/robertwijas/UISS.git', :tag => "#{s.version}" }

  s.resources = 'Project/UISSResources.bundle'
  s.prefix_header_file = 'Project/UISS/UISS-Prefix.pch'

  s.frameworks = 'Foundation', 'UIKit'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'Project/UISS'
    core.requires_arc = true
  end

  s.subspec 'Extensions' do |ext|
    ext.dependency 'UISS/Core'
    ext.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'UISS_APP_EXTENSIONS' }
  end

end
