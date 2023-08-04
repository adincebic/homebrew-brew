class Existentialannotator < Formula
  desc "A command line tool that scans Swift codebase and marks all existential types with `any`"
  homepage ""
  url "https://github.com/adincebic/swift-existential-annotator/archive/1.3.0.zip"
  sha256 "09e01c98e035a66df313619f5e0b52995bbbd9a58c0fa2271ad38c60ac83c18e"
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
    root_url 'https://github.com/adincebic/swift-existential-annotator/releases/download/1.1.0'
    rebuild 2
    sha256 cellar: :any_skip_relocation, arm64_ventura: "b3c55d74b87ee44b93d530a9bb870f70cbf68841e7d44f5c30b31b2dbdab7a52"
  end
end
