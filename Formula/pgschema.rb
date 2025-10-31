class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgschema/pgschema/releases/download/v1.4.0/pgschema-darwin-arm64"
  version "1.4.0"
  sha256 "a9a7b9a649996b5048424470b10b65bd01dae0a5325b7b30837d241a42a3a0ab"
  license "Apache-2.0"

  def install
    bin.install "pgschema-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
