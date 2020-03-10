class Mimiq < Formula
    desc "mimiq is simple executable to record your Xcode simulator and convert it to GIF"
    homepage "https://github.com/wendyliga/mimiq"
    url "https://github.com/wendyliga/mimiq/releases/download/0.1.0-beta/mimiq.tar.gz"
    sha256 "3e62f95a3e7d39817fe3c6628879b525b1a3e2af398424931d429bec7715d7cd"
  
    bottle :unneeded

    option "with-ffmpeg", "This is test of overriding generated description"
    depends_on "ffmpeg" => :recommended

    def install
        bin.install "mimiq"
    end
  end
  