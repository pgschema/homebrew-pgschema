class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgschema/pgschema/releases/download/v1.4.2/pgschema-1.4.2-darwin-arm64"
  version "1.4.2"
  sha256 "32708397c3f322b9bc90312ec829f9fd4dae80fe57ecc8bb6f6c2fd9f4697926"
  license "Apache-2.0"

  def install
    bin.install "pgschema-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
