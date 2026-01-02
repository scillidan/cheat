# [OSX-KVM](https://github.com/kholia/OSX-KVM)

## install

```sh
git clone --depth 1 --recursive https://github.com/kholia/OSX-KVM.git
cd OSX-KVM
git pull --rebase
sudo modprobe kvm; echo 1 | sudo tee /sys/module/kvm/parameters/ignore_msrs
# AMD
sudo cp kvm_amd.conf /etc/modprobe.d/kvm.conf
sudo usermod -aG kvm $(whoami)
sudo usermod -aG libvirt $(whoami)
sudo usermod -aG input $(whoami)
# Re-login
```

```sh
./fetch-macOS-v2.py
dmg2img -i BaseSystem.dmg BaseSystem.img
qemu-img create -f qcow2 mac_hdd_ng.img 100G
./OpenCore-Boot.sh
```

## reference

- #guide [How To Install macOS Virtual Machine on Linux/Arch/Manjaro – Catalina, Mojave, or High Sierra! XCode working! Tutorial for Ubuntu/RHEL/CentOS/Fedora](https://sick.codes/how-to-install-macos-virtual-machine-on-linux-arch-manjaro-catalina-mojave-or-high-sierra-xcode-working/)
