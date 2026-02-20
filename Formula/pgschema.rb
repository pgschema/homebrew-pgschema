class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.7.2/pgschema-1.7.2-darwin-arm64"
  version "1.7.2"
  sha256 "b7a944cf71283eb50809c4df26ec933367e100ac1052e425fdd273b68b4d9415"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
