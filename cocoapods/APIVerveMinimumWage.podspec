Pod::Spec.new do |s|
  s.name             = 'APIVerveMinimumWage'
  s.version          = '1.2.3'
  s.summary          = 'Minimum Wage provides current minimum wage rates for all US states plus the federal minimum.'
  s.description      = <<-'DESC'
Minimum Wage provides current minimum wage rates for all US states plus the federal minimum. Includes tipped minimum wages, effective rates (higher of state or federal), and historical federal minimum wage data.

This iOS/macOS SDK provides a convenient way to access the Minimum Wage from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/minimumwage?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/minimumwage-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveMinimumWage/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
