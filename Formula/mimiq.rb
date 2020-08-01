class Mimiq < Formula
    desc "A Simple Xcode Simulator GIF Recoder"
    homepage "https://github.com/wendyliga/mimiq"
    url "https://github.com/wendyliga/mimiq/releases/download/0.4.0/mimiq.tar.gz"
    sha256 "c76d08d23e59bf3a8690d5bf47dd8941ceef03b216f3de986d4d0c9002228259"
  
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
  end
  
