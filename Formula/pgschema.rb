class Pgschema < Formula
  desc "Terraform-style, declarative schema migration for Postgres"
  homepage "https://www.pgschema.com"
  url "https://github.com/pgschema/pgschema/releases/download/v1.5.1/pgschema-1.5.1-darwin-arm64"
  version "1.5.1"
  sha256 "976e2db6f65c79e0b4e97ae9425a784f9798f9ab7c7bbe992ef6534dfd9dd003"
  license "Apache-2.0"

  def install
    bin.install "pgschema-#{version}-darwin-arm64" => "pgschema"
  end

  test do
    system "#{bin}/pgschema", "version"
  end
end
