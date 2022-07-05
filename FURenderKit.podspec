Pod::Spec.new do |s|
    s.name             = 'FURenderKit'
    s.version          = '8.0.2.1'
    s.summary          = 'A framework of FaceUnity.'
    s.description      = <<-DESC
    a seak and package for sticker object and user do not attention release the sticker. convenient and easy to user FaceUnity function.
                         DESC
    s.homepage         = 'https://github.com/Faceunity/FULiveDemo'
    s.author           = { 'faceunity' => 'dev@faceunity.com' }
    s.source           = { :path => '.' }
    s.source_files = '**/*.{h,m}'
    s.public_header_files = '**/*.h'
    s.platform = :ios, '9.0'
    s.resources = "**/*.{bundle,txt}"
    s.ios.vendored_frameworks = 'FURenderKit.xcframework'
    s.frameworks = ["OpenGLES",
        "Accelerate",
        "CoreMedia",
        "AVFoundation"]
    s.libraries = ["stdc++"]

    # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
    s.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  end
  