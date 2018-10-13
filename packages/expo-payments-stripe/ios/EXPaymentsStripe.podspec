require 'json'

package = JSON.parse(File.read(File.join(__dir__, '..', 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'EXPaymentsStripe'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.platform       = :ios, '10.0'
  s.source         = { git: 'https://github.com/expo/expo.git' }
  s.source_files   = 'EXPaymentsStripe/**/*.{h,m,mm}'
  s.preserve_paths = 'EXPaymentsStripe/**/*.{h,m,mm}'
  s.requires_arc   = true

  s.dependency 'EXCore'
  s.dependency 'Stripe', '~> 13.0.3'

end