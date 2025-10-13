class Dirgrab < Formula
  desc "Grab the files that matter from a directory or Git repo and concatenate them"
  homepage "https://github.com/RileyLeff/dirgrab"
  url "https://github.com/RileyLeff/dirgrab/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "82079182e7f93c92c6b7997e7ec12f79723df6b35693200ba0ebf0501197737c"
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
