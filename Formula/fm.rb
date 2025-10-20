class Fm < Formula
  desc "文件查询 CLI"
  homepage "https://github.com/MaAmos/fm"
  url "https://github.com/MaAmos/fm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "53dd386d9206648913b6b728bbde5fbf447f2179d24d454f3452e85b0c43f2bc"
  license "MIT" # 按你的项目实际 license

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # 最简单的健壮性测试：能跑起来并返回0
    system "#{bin}/fm", "--help"
  end
end