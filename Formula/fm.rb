class Fm < Formula
  desc "文件查询 CLI"
  homepage "https://github.com/MaAmos/fm"
  url "https://github.com/MaAmos/fm/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "804b67082ea03ebe637b2a7f202bb8e8a73a6206c595273aafb8b3b75933ef84"
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

