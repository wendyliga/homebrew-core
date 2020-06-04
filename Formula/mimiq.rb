class Mimiq < Formula
    desc "A Simple Xcode Simulator GIF Recoder"
    homepage "https://github.com/wendyliga/mimiq"
    url "https://github.com/wendyliga/mimiq/releases/download/0.3.8/mimiq.tar.gz"
    sha256 "0ce54e9fadfbf6f5b173a9888c59941b6f26c4cab2906bbbb94c682fca4d2306"
  
    depends_on "ffmpeg" => "4.2.2"
  
    def install
      bin.install "mimiq"
    end

    def caveats
        <<~EOS
          Start record your Simulator by executing:
            mimiq
            
          To see how to use mimiq, you can execute:
            mimiq --help

          For more detail, please check https://github.com/wendyliga/mimiq
        EOS
      end

      test do
        assert_equal "current version 0.3.6\n", shell_output("#{bin}/mimiq version")
      end
  end
  