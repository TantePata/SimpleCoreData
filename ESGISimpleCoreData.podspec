Pod::Spec.new do |s|
s.name         = "ESGISimpleCoreData"
s.version      = "1.2.4"
s.summary      = "Digipolitan framework swift template"
s.homepage     = "https://github.com/Digipolitan/framework-swift-template"
s.license      = { :type => "BSD", :file => "LICENSE" }
s.author       = { "Digipolitan" => "contact@digipolitan.com" }
s.source       = { :git => "https://github.com/Digipolitan/framework-swift-template.git", :tag => "v#{s.version}" }
s.source_files = 'Sources/**/*.{swift,h}'
s.ios.deployment_target = '8.0'
s.osx.deployment_target = '10.10'
s.watchos.deployment_target = '2.0'
s.tvos.deployment_target = '9.0'
s.requires_arc = true
end
