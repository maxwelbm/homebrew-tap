# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cligpt < Formula
  desc "-| Oh, cligpt is your reliable research assistant. Just type in your questions and queries, and it will provide instant answers based on a vast knowledge base. No matter what you want to know, cligpt is ready to help, making your research easier and more efficient than ever."
  homepage "https://github.com/maxwelbm/cligpt"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maxwelbm/cligpt/releases/download/v0.2.1/cligpt_Darwin_arm64.tar.gz"
      sha256 "a0ddbd40cd96c508c26b7fcde64e56053ddac130e72036fc64400d1a4b277ce3"

      def install
        bin.install "cligpt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maxwelbm/cligpt/releases/download/v0.2.1/cligpt_Darwin_x86_64.tar.gz"
      sha256 "ca7e882562f4eaf4f04b5a0d3915aff1fab249c372ce9e944bfae69329547f6f"

      def install
        bin.install "cligpt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/maxwelbm/cligpt/releases/download/v0.2.1/cligpt_Linux_arm64.tar.gz"
      sha256 "1115204a2fa1c16a407560e12173726892c27f385b82266b22e4feb7f318c8a6"

      def install
        bin.install "cligpt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/maxwelbm/cligpt/releases/download/v0.2.1/cligpt_Linux_x86_64.tar.gz"
      sha256 "6aecf4d5cb6ec40c5ee2237d946a54a0e67b81c7482e4a255138143532b4054e"

      def install
        bin.install "cligpt"
      end
    end
  end

  test do
    system "#{bin}/cligpt"
  end
end
