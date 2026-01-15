class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgschema/pgschema/releases/download/v1.6.1/pgschema-1.6.1-darwin-arm64"
  version "1.6.1"
  sha256 "5ebbd560b6111b36c567228879ed2c28b6a09f7209a50480cf33e2e74a1de64c"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
