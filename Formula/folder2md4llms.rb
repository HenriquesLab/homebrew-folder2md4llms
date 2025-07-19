class Folder2md4llms < Formula
  include Language::Python::Virtualenv

  desc "Enhanced tool to concatenate folder contents into markdown for LLM consumption"
  homepage "https://github.com/henriqueslab/folder2md4llms"
  url "https://files.pythonhosted.org/packages/08/1b/1f44e02a32cf6d9c837c0c7aa87df741f328ba00517d52b7010b6eb00757/folder2md4llms-0.4.35.tar.gz"
  sha256 "a18b59884c060a7923ec1d71682d0f65e8886e9e4150cb56e3ea82581df0bcb2"
  license "MIT"

  depends_on "libyaml"
  depends_on "python@3.11"

  # Core dependencies only - let pip handle the rest
  resource "click" do
    url "https://files.pythonhosted.org/packages/60/6c/8ca2efa64cf75a977a0d7fac081354553ebe483345c734fb6b6515d96bbc/click-8.2.1.tar.gz"
    sha256 "27c491cc05d968d271d5a1db13e3b5a184636d9d930f148c50b038f0d0646202"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a1/53/830aa4c3066a8ab0ae9a9955976fb770fe9c6102117c8ec4ab3ea62d89e8/rich-14.0.0.tar.gz"
    sha256 "82f1bc23a6a21ebca4ae0c45af9bdbc492ed20231dcb63f297d6d1021a9d5725"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "folder2md4llms", shell_output("#{bin}/folder2md --version")
    system bin/"folder2md", "--help"

    # Test basic functionality
    (testpath/"test.py").write("print('hello world')")
    system bin/"folder2md", testpath, "--output", "test.md"
    assert_path_exists testpath/"test.md"

    # Test ignore file generation
    system bin/"folder2md", "--init-ignore"
    assert_path_exists testpath/".folder2md_ignore"
  end
end
