Pod::Spec.new do |s|
s.name = "ESGISimpleCoreData"
s.version = "1.0.0"
s.summary = "This is a summary."
s.homepage = "https://github.com/TantePata/SimpleCoreData"
s.authors = "TantePata"
s.source = { :git => "https://github.com/TantePata/SimpleCoreData.git", :tag => "v#{s.version}" }
s.license = { :type => "BSD", :file => "LICENSE" }
s.source_files = 'Sources/**/*.{swift,h}'
s.ios.deployment_target = '8.0'
s.requires_arc = true
end
