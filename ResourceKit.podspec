Pod::Spec.new do |spec|
  spec.name = "ResourceKit"
  spec.version = "0.2.2"
  spec.summary = "Framework for easily loading resources into a project"
  spec.homepage = "https://github.com/mkotsiandris/ResourceKit"
  spec.license = { type: 'MIT', file: 'LICENSE.md' }
  spec.authors = { "Marios Kotsiandris" => 'marioskots@gmail.com' }


  spec.swift_version = '5.0'
  spec.platform = :ios, "12.0"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/mkotsiandris/ResourceKit.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "ResourceKit/**/*.{h,swift}"
end