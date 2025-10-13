class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgschema/pgschema/releases/download/v1.3.0/pgschema-darwin-arm64"
  version "1.3.0"
  sha256 "cdca933b5e858c8e2ef9a6da0ba865c094824051e9547372cfaf08aa40c303f9"
  license "Apache-2.0"

  def install
    bin.install "pgschema-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
