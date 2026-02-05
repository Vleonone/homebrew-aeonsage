class Aeonsage < Formula
  desc "Sovereign Intelligence Operating System"
  homepage "https://aeonsage.org"
  license "MIT"
  
  # Install via npm - works cross-platform
  depends_on "node@22"
  
  def install
    system "npm", "install", "-g", "aeonsage@#{version}", "--prefix", libexec
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      AeonSage has been installed!
      
      Quick start:
        aeonsage onboard --install-daemon
        aeonsage gateway
      
      Web UI: http://localhost:18789
      
      Documentation: https://docs.aeonsage.org
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aeonsage --version")
  end
end
