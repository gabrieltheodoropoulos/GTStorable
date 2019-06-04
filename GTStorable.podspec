Pod::Spec.new do |spec|

  spec.name         = "GTStorable"
  spec.version      = "1.0.0"
  spec.summary      = "Perform standard file operations to custom types that conform to Codable protocol."
  spec.description  = <<-DESC
                    GTStorable is a small framework written in Swift which provides a protocol that can be adopted by any custom type (classes, structs) conforming to Codable and perform through its provided methods file-related operations at no hassle.
                   DESC
  spec.homepage     = "https://github.com/gabrieltheodoropoulos/GTStorable.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.authors      = { "Gabriel Theodoropoulos" => "gabrielth.devel@gmail.com" }
  spec.social_media_url   = "https://twitter.com/gabtheodor"
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/gabrieltheodoropoulos/GTStorable.git", :tag => "1.0.0" }
  spec.source_files = "GTStorable/Source/*.{swift}"
  spec.swift_version = "5.0"

end
