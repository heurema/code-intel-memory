class CodeIntelMemory < Formula
  desc "Fast code intelligence engine for AI coding agents"
  homepage "https://github.com/heurema/code-intel-memory"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/heurema/code-intel-memory/releases/download/v#{version}/code-intel-memory-darwin-arm64.tar.gz"
      sha256 "fbd047509852021b5446a11141bcb0a3d1dcaebf6e5112460960f29f052c1c58"
    end
    on_intel do
      url "https://github.com/heurema/code-intel-memory/releases/download/v#{version}/code-intel-memory-darwin-amd64.tar.gz"
      sha256 "fb62da3016ea12b948351208759b5c083fb1446cf6e78d6db8b7cd28fe86fd54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heurema/code-intel-memory/releases/download/v#{version}/code-intel-memory-linux-arm64.tar.gz"
      sha256 "d2f842d1365da5c35d9c5796f57a821c9745267350994346735e1e6e04d46091"
    end
    on_intel do
      url "https://github.com/heurema/code-intel-memory/releases/download/v#{version}/code-intel-memory-linux-amd64.tar.gz"
      sha256 "dbd3b92ea870ef240b63059f26bda15015f76ef9978931bebc3a0f9d09470973"
    end
  end

  def install
    bin.install "code-intel-memory"
    bin.install_symlink "code-intel-memory" => "codebase-memory-mcp"
    # Third-party attribution bundle (present in archives since v0.8.1)
    doc.install "THIRD_PARTY_NOTICES.md" if File.exist?("THIRD_PARTY_NOTICES.md")
  end

  def caveats
    <<~EOS
      Run the following to configure your coding agents:
        code-intel-memory install

      To tap this formula directly:
        brew tap heurema/code-intel-memory https://github.com/heurema/code-intel-memory
        brew install code-intel-memory
    EOS
  end

  test do
    assert_match "code-intel-memory", shell_output("#{bin}/code-intel-memory --version")
    assert_match "code-intel-memory", shell_output("#{bin}/codebase-memory-mcp --version")
  end
end
