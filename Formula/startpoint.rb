class Startpoint < Formula
  desc ""
  homepage ""
  url "https://github.com/susiteemu/startpoint/archive/refs/tags/v0.99.0.tar.gz"
  sha256 "4be363151b7eca1c111424b1805ac9bc3fbd43f02e1399ca44b81156fb271bc5"
  license "GPL-3.0"

  depends_on "go"

  def install
    ENV["GOPATH"] = buildpath
    ENV["GO111MODULE"] = "on"
    ENV["GOFLAGS"] = "-mod=vendor"
    ENV["PATH"] = "#{ENV["PATH"]}:#{buildpath}/bin"
    (buildpath/"src/github.com/susiteemu/startpoint").install buildpath.children
    cd "src/github.com/susiteemu/startpoint" do
      system "go", "build", "-o", bin/"kubepfm", "."
    end
  end

end
