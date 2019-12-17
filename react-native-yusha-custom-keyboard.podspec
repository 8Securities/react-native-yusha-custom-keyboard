require "json"
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.author       = package['author']
  s.license      = package['license']
  s.requires_arc = true
  s.homepage     = 'n/a'
  s.source       = { :git => "https://github.com/8Securities/react-native-yusha-custom-keyboard" }
  s.source_files = 'ios/**/*.{h,m}'
  s.platform     = :ios, "9.0"
  s.dependency 'React-Core'
end