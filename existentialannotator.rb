class Existentialannotator < Formula
  desc "A command line tool that scans Swift codebase and marks all existential types with `any`"
  homepage ""
  url "https://github.com/adincebic/swift-existential-annotator/archive/1.1.0.zip"
  sha256 "efa433e98d4821fa6bad5738cf11d47c9940a7c5df8607b1091886883986e135"
  license "MIT"
  
  def install
    opoo "Building now – this might take a few minutes."
    system "swift", "build",
    "--configuration", "release",
    "--disable-sandbox"
    bin.install '.build/release/existentialannotator'
    ohai "Done! You can now run 'existentialannotator' in a Swift project directory."
  end
  
  bottle do
    root_url 'https://github.com/adincebic/swift-existential-annotator/releases/download/1.0.0'
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_ventura: "a7c1836fdf0f780b3d6126acdf1081688ee16da5260f672e734cbcd51deaf6c5"
  end
end
