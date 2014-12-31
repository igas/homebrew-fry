require 'formula'

class Fry < Formula
  homepage 'https://github.com/terlar/fry#readme'
  url 'https://github.com/terlar/fry/archive/0.1.3.tar.gz'
  sha1 '5b4b50a3f11042691c9e5eb2d605d62c607a0ebe'

  head 'https://github.com/terlar/fry.git'

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  def caveats; <<-EOS.undent
    Add the following to the ~/.config/fish/config.fish file:

      . #{opt_share}/fry/fry.fish
    EOS
  end
end
