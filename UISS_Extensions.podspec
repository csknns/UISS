Pod::Spec.new do |s|
  s.name     = 'UISS_Extensions'
  s.version  = '1.1.2'

  s.platform = :ios, '5.0'
  
  s.license  = 'MIT'
  s.summary  = 'UIKit Style Sheets.'
  s.homepage = 'https://github.com/robertwijas/UISS'
  s.author   = { 'Robert Wijas' => 'https://robertwijas.com' }
  s.description = 'UISS_Extensions stands for UIKit Style Sheets. UISS_Extensions is an iOS library that provides you with a convenient way to define the style of your application extensions. UISS_Extensions is built on top of UIKit UIAppearance proxies.'  

  s.source   = { :git => 'https://github.com/robertwijas/UISS.git', :tag => "#{s.version}" }

  s.resources = 'Project/UISSResources.bundle'
  s.prefix_header_file = 'Project/UISS/UISS-Prefix.pch'

  s.frameworks = 'Foundation', 'UIKit'

  s.default_subspec = 'Extensions'

  s.subspec 'Extensions' do |extension|
    extension.source_files = 'Project/UISS'
    extension.requires_arc = true
    extension.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'UISS_APP_EXTENSIONS', 'USER_HEADER_SEARCH_PATHS' => '"${PODS_ROOT}"/**' }
  end

end
