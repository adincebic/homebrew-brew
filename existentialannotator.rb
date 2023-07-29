class Existentialannotator < Formula
  desc "A command line tool that scans Swift codebase and marks all existential types with `any`"
  homepage ""
  url "https://github.com/adincebic/swift-existential-annotator/archive/1.0.0.zip"
  sha256 "244b646139a88c53cc8bbe2240a5a0b1dd914a1fdd7f7dd9cbf17b7bd3443562"
  license "MIT"

  def install
      opoo "Building now – this might take a few minutes."
      system "swift", "build",
          "--configuration", "release",
          "--disable-sandbox"
      bin.install '.build/release/existentialannotator'
      ohai "Done! You can now run 'existentialannotator' in a Swift project directory."
  end
end
