class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.7.1/pgschema-1.7.1-darwin-arm64"
  version "1.7.1"
  sha256 "59fcee7c651b6a2591cea3f885dc3d834451546ba9cf4c607c07fe9e2f06051f"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
