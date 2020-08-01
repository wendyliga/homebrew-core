class Mimiq < Formula
    desc "A Simple Xcode Simulator GIF Recoder"
    homepage "https://github.com/wendyliga/mimiq"
    url "https://github.com/wendyliga/mimiq/releases/download/0.4.0/mimiq.zip"
    sha256 "6628a8d93a8063dcd6b67323fdea278b22beae0b569be987db0e5411079b2242"
  
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
  
