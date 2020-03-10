class Mimiq < Formula
    desc "mimiq is simple executable to record your Xcode simulator and convert it to GIF"
    homepage "https://github.com/wendyliga/mimiq"
    url "https://github.com/wendyliga/mimiq/releases/download/0.0.1/mimiq.tar.gz"
    sha256 "d09ee0a6411c449543be9a071ebca5330820f2b84c2d3b775d776ba83fdbf035"
  
    bottle :unneeded

    depends_on "ffmpeg"

    def install
        bin.install "mimiq"
    end
  end
  