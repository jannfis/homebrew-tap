# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "1.6.5"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    elsif OS.linux?
      kernel = "linux"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/1.6.5/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
