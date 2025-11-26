class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  version "1.4.3"
  sha256 "6150602206a92516e17095e275d768dccf13048b346debf03d67f60a12b17e3a"
  url "https://github.com/pgschema/pgschema/releases/download/v#{version}/pgschema-#{version}-darwin-arm64"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
