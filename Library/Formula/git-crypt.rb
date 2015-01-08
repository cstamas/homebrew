require 'formula'

class GitCrypt < Formula
  homepage 'https://www.agwa.name/projects/git-crypt/'
  url "https://www.agwa.name/projects/git-crypt/downloads/git-crypt-0.4.1.tar.gz"
  sha1 "b82aca26385ffd96432fa25fda7c4753874d917f"

  bottle do
    cellar :any
    sha1 "b9815f5095538a2cb15a468a386e3489da1171f5" => :yosemite
    sha1 "0e144374d72709fe3288a693638c1b3a5e3b1a14" => :mavericks
    sha1 "84acf8b81ad75945aa0ee529ddfe4c1674efabd9" => :mountain_lion
  end

  depends_on "openssl"

  def install
    system "make"
    bin.install "git-crypt"
  end

  test do
    system "#{bin}/git-crypt", "keygen", "keyfile"
  end
end
