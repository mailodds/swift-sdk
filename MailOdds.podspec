Pod::Spec.new do |s|
  s.name = 'MailOdds'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = '2.0.0'
  s.source = { :git => 'https://github.com/mailodds/swift-sdk.git', :tag => 'v2.0.0' }
  s.authors = 'MailOdds'
  s.license = 'MIT'
  s.homepage = 'https://mailodds.com/developers'
  s.summary = 'MailOdds Swift SDK'
  s.source_files = 'Sources/MailOdds/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
