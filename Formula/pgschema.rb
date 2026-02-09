class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgplex/pgschema/releases/download/v1.6.2/pgschema-1.6.2-darwin-arm64"
  version "1.6.2"
  sha256 "0d489d39493728ba96fd96fe8397758265b19ff23badf136f2aa96fa5694ee85"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
