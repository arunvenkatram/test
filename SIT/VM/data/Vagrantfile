# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "comp_news" do |comp_news|
  comp_news.vm.box = "centos/7"
  comp_news.vm.hostname = "compnews1"
  comp_news.vm.network :private_network, ip: "192.168.10.10"
  config.vm.provision "shell" , path: "install_war.sh"
  config.vm.provider "virtualbox" do |v|
  	v.memory = 2048
	v.cpus = 2
  end
  end
  config.vm.define "static" do |static|
  static.vm.box = "centos/7"
  static.vm.hostname = 'static1'
  static.vm.network :private_network, ip: "192.168.10.20"
  config.vm.provision "shell" , path: "install_zip.sh"
  config.vm.provider "virtualbox" do |w|
    w.memory = 1024
  end
  end
end