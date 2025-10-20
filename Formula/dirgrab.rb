class Dirgrab < Formula
  desc "Grab the files that matter from a directory or Git repo and concatenate them"
  homepage "https://github.com/RileyLeff/dirgrab"
  url "https://github.com/RileyLeff/dirgrab/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "91c2ef6f73594454e97d6b22446c8f42b9f1d7484cbfcf2ec3df51f58503af79"
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
