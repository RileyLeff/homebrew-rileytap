class Dirgrab < Formula
  desc "Grab the files that matter from a directory or Git repo and concatenate them"
  homepage "https://github.com/RileyLeff/dirgrab"
  url "https://github.com/RileyLeff/dirgrab/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "43f471fdf2fb0827115b01ed58c35534ac57732617a54bd48864753e8df907e5"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/RileyLeff/dirgrab.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "dirgrab")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dirgrab --version")
  end
end
