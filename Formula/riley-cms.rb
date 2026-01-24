class RileyCms < Formula
  desc "A minimal, self-hosted headless CMS backed by Git and S3/R2"
  homepage "https://github.com/RileyLeff/riley_cms"
  url "https://github.com/RileyLeff/riley_cms/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "cf0d52e615efd5e767bf6f3bd967f69c98cedfdc5e26e82af922bedf020f3d0c"
  license "MIT"
  head "https://github.com/RileyLeff/riley_cms.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/riley-cms-cli")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/riley_cms --version")
  end
end
