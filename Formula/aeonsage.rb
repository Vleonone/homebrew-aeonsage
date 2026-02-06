class Aeonsage < Formula
  desc "Sovereign Intelligence Operating System"
  homepage "https://aeonsage.org"
  license "MIT"
  
  # Version tracking
  version "2026.1.27"
  
  # Install via npm - works cross-platform
  depends_on "node@22"
  
  def install
    # Create libexec structure
    libexec.mkpath
    
    # Install via npm
    system "npm", "install", "-g", "aeonsage@#{version}", "--prefix", libexec
    
    # Link binaries
    bin.install_symlink Dir["#{libexec}/bin/*"]
    
    # Create config directory
    (var/"aeonsage").mkpath
  end

  def post_install
    # Verify installation
    system "#{bin}/aeonsage", "--version"
  end

  def caveats
    <<~EOS
      ========================================
        AeonSage has been installed!
      ========================================
      
      Quick Start:
        aeonsage onboard --install-daemon
        aeonsage gateway
      
      Web UI: http://127.0.0.1:18789/
      
      Documentation: https://docs.aeonsage.org
      
      Config directory: #{var}/aeonsage
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aeonsage --version")
  end
end
