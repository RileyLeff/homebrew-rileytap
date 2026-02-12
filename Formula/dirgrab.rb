class Dirgrab < Formula
  desc "Grab the files that matter from a directory or Git repo and concatenate them"
  homepage "https://github.com/RileyLeff/dirgrab"
  url "https://github.com/RileyLeff/dirgrab/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "66ea25c085ca054179ab1035edbf2091928098ff5a6dd240b153632b23dab9e0"
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
