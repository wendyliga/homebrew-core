class Mimiq < Formula
    desc "A Simple Xcode Simulator GIF Recoder"
    homepage "https://github.com/wendyliga/mimiq"
    url "https://github.com/wendyliga/mimiq/releases/download/0.4.1/mimiq.zip"
    sha256 "7813b82f1a7c55b1ffedd71c56ad4a8eadc5df10cb4f6d212d7fd1a326b05e4d"
  
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
  
