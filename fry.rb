require 'formula'

class Fry < Formula
  homepage 'https://github.com/terlar/fry#readme'
  url 'https://github.com/terlar/fry/archive/0.1.2.tar.gz'
  sha1 'b44340ff94689af0699485432189dff87730c619'

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
