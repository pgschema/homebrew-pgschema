class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.13.0/pgschema-1.13.0-darwin-arm64"
  version "1.13.0"
  sha256 "e4c57db61757de751db16541ec0aa7afcf24945d69950092193e0a92d96a7b51"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
