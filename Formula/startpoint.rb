# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Startpoint < Formula
  desc "A tui app to run and manage HTTP requests"
  homepage "https://github.com/susiteemu/startpoint"
  version "1.0.4"

  on_macos do
    on_intel do
      url "https://github.com/susiteemu/startpoint/releases/download/v1.0.4/startpoint_Darwin_x86_64.tar.gz"
      sha256 "bdd3cb7f163603733a75a5601bf628ca1c3b34e2b415a6ccc9c7e6c1d0ce2742"

      def install
        bin.install "startpoint"
      end
    end
    on_arm do
      url "https://github.com/susiteemu/startpoint/releases/download/v1.0.4/startpoint_Darwin_arm64.tar.gz"
      sha256 "b52e7c1649403c8a14e7ffd4a32a3e0ebe6fa53490762b57ea4ccfba0436a408"

      def install
        bin.install "startpoint"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/susiteemu/startpoint/releases/download/v1.0.4/startpoint_Linux_x86_64.tar.gz"
        sha256 "8ede04b1cd5b936dff53008477d8628a3052fe7cb81f80f495db8f1c7711a062"

        def install
          bin.install "startpoint"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/susiteemu/startpoint/releases/download/v1.0.4/startpoint_Linux_arm64.tar.gz"
        sha256 "781cc58dce738f1bb050358c780d235fc847513ce2abf2a1734e7b2be3fbd636"

        def install
          bin.install "startpoint"
        end
      end
    end
  end
end
