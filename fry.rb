require 'formula'

class Fry < Formula
  homepage 'https://github.com/terlar/fry#readme'
  url 'https://github.com/terlar/fry/archive/0.1.5.tar.gz'
  sha256 '5700e01ff4fe41fcfa307af42e8ec843b4be39adc7c8b227ebc73d372aa05c43'

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
