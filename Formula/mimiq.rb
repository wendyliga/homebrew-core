class Mimiq < Formula
    desc "A Simple Xcode Simulator GIF Recoder"
    homepage "https://github.com/wendyliga/mimiq"
    url "https://github.com/wendyliga/mimiq/releases/download/0.3.6/mimiq.tar.gz"
    sha256 "8eb4d507c8fc8455c394afc5360cfa070945349e2fe7b9dbd52639da6263eb24"
  
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
  