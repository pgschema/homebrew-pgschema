class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgschema/pgschema/releases/download/v1.5.0/pgschema-1.5.0-darwin-arm64"
  version "1.5.0"
  sha256 "f862dfce6de50ca0309b69d894c0d88a4efbaaaec5f1ff8382d9718c6e88191a"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
