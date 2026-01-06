class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgschema/pgschema/releases/download/v1.6.0/pgschema-1.6.0-darwin-arm64"
  version "1.6.0"
  sha256 "f85e7cb1155168eeb71d40f60af507d92a761d9ae5b0539250731da7b787bd7c"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
