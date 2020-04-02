class Mimiq < Formula
    desc "A Simple Xcode Simulator GIF Recoder"
    homepage "https://github.com/wendyliga/mimiq"
    url "https://github.com/wendyliga/mimiq.git", 
        :tag      => "0.3.3"
    head "https://github.com/wendyliga/mimiq.git"

    bottle do
        cellar :any_skip_relocation
    end
  
    depends_on "ffmpeg" => :recommended
    depends_on :xcode => "11.0"
  
    def install
      system "make", "install", "prefix=#{prefix}"
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
        assert_equal "current version 0.3.0\n", shell_output("#{bin}/mimiq version")
      end
  end
  