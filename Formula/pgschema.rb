class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.7.0/pgschema-1.7.0-darwin-arm64"
  version "1.7.0"
  sha256 "73ededb92fbb152155a161d7e514167280e9f8043e5529b74d79010c9703bbf3"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
