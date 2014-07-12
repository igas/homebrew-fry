require 'formula'

class Fry < Formula
  homepage 'https://github.com/terlar/fry#readme'
  url 'https://github.com/terlar/fry/archive/0.1.1.tar.gz'
  sha1 '92d3edaaedcbea78ce7d05e7314e573d20970124'

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
