cask "folder2md4llms-binary" do
  version "0.5.0"
  sha256 arm:   "ed2634ebd5abd868b983c391f7c7e85136a138cbab82106a48b24cef8baa2597",
         intel: "f72196c13e9a74fe2cda9cc591ed7274600c23235ba2606aef76977700ec57bc"

  url "https://github.com/HenriquesLab/folder2md4llms/releases/download/v#{version}/folder2md-macos-#{Hardware::CPU.intel? ? "x64" : "arm64"}"
  name "folder2md4llms"
  desc "Enhanced tool to concatenate folder contents into markdown for LLM consumption"
  homepage "https://github.com/henriqueslab/folder2md4llms"


  binary "folder2md-macos-#{Hardware::CPU.intel? ? "x64" : "arm64"}", target: "folder2md"



  caveats <<~EOS
    This is the standalone binary version of folder2md4llms.
    
    Advantages:
      ✓ No Python installation required
      ✓ Faster startup time
      ✓ Single executable file
      ✓ No dependency conflicts
    
    For the Python package version (requires Python 3.11+):
      brew install henriqueslab/tap/folder2md4llms
    
    Documentation: https://github.com/henriqueslab/folder2md4llms
  EOS
end