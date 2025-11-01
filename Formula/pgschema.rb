class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgschema/pgschema/releases/download/v1.4.1/pgschema-darwin-arm64"
  version "1.4.1"
  sha256 "b93b672e26d8b1183389734d5488d400775873b010d7599a955f2a0aaeb387a1"
  license "Apache-2.0"

  def install
    bin.install "pgschema-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
