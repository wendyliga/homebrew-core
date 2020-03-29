class Mimiq < Formula
    desc "A Simple Xcode Simulator GIF Recoder"
    homepage "https://github.com/wendyliga/mimiq"
    url "https://github.com/wendyliga/mimiq.git", 
        :tag      => "0.2.0"
    head "https://github.com/wendyliga/mimiq.git"
  
    depends_on :ffmpeg => :recommended
    depends_on :xcode => "11.0"
  
    def install
      system "make", "install", "prefix=#{prefix}"
    end
  
    test do
      # system "#{bin}/mimiq --help"
      system true
    end
  end
  