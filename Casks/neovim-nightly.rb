cask 'neovim-nightly' do
  version :latest
  sha256 :no_check
  arch arm: "arm64", intel: "x86_64"

  name 'Neovim Nightly'
  homepage 'https://neovim.io/'
  
  on_arm do
    url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz"
    binary 'nvim-macos-arm64/bin/nvim'
  end
  
  on_intel do
    url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-x86_64.tar.gz"
    binary 'nvim-macos-x86_64/bin/nvim'
  end  
end
