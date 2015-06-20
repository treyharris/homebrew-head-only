require "formula"

class GitWip < Formula
  homepage "https://github.com/bartman/git-wip"
  url "https://github.com/bartman/git-wip.git", :using => :git, :revision => "a1ee45d3"

  sha1 "2ecb4984bda990ff8143541b352f70c0cdfcc688"
  version "2011-03-16" # No tags so using date of most recent commit

  head "https://github.com/bartman/git-wip.git"

  patch do
    url "https://github.com/treyharris/git-wip/commit/92cb83315ee9393a5379e69dd0e66d43dfd0403d.patch"
    sha1 "01cd438ac65d5c889d0ddfae27cdcc9d8b20b053"
  end

  def install
    (share/"emacs").mkpath
    (share/"emacs").install "emacs" => "site-lisp"
    # (share/"vim").mkpath
    (share/"vim/plugin").install "vim/plugin/git-wip.vim"
    doc.install "README.markdown"
    bin.install "git-wip"
  end

  test do
    # system "#{bin}/git-wip"
    system "true"
  end
end
