require 'formula'

class Fry < Formula
  homepage 'https://github.com/terlar/fry#readme'
  url 'https://github.com/terlar/fry/archive/0.1.4.tar.gz'
  sha1 '090d8cdca6a035bb9c526faed691b09c9229404c'

  head 'https://github.com/terlar/fry.git'

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  def caveats; <<-EOS.undent
    Add the following to the ~/.config/fish/config.fish file:

      source #{opt_share}/fry/fry.fish
    EOS
  end
end
