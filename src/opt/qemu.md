# [QEMU](https://www.qemu.org)

> QEMU is a generic and open source machine emulator and virtualizer.  
> When used as a machine emulator, QEMU can run OSes and programs made for one machine (e.g. an ARM board) on a different machine (e.g. your own PC). By using dynamic translation, it achieves very good performance.  
> When used as a virtualizer, QEMU achieves near native performance by executing the guest code directly on the host CPU. QEMU supports virtualization when executing under the Xen hypervisor or using the KVM kernel module in Linux. When using KVM, QEMU can virtualize x86, server and embedded PowerPC, 64-bit POWER, S390, 32-bit and 64-bit ARM, and MIPS guests. [qemu.org]

> QEMU 是一个通用的开源机器仿真器和虚拟化工具。  
> 作为机器仿真器使用时，QEMU 可以在一台机器（例如，ARM 板）上运行为另一台机器（例如，您的个人计算机）制作的操作系统和程序。通过使用动态翻译，它实现了非常好的性能。  
> 作为虚拟化工具使用时，QEMU 通过直接在主机 CPU 上执行来宾代码来实现接近本地的性能。在使用 Xen 虚拟机监控器或 Linux 中的 KVM 内核模块时，QEMU 支持虚拟化。在使用 KVM 时，QEMU 可以虚拟化 x86、服务器和嵌入式 PowerPC、64 位 POWER、S390、32 位和 64 位 ARM 和 MIPS 来宾。[qemu.org]

## install

```sh
sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat
sudo pacman -S dmidecode
```

## usage

[^1]

```sh
sudo systemctl enable --now libvirtd
systemctl status libvirtd
sudo usermod -aG libvirt,kvm $(whoami)
```

```sh
grep kvm
sudo modprobe kvm
# AMD
sudo modprobe kvm_amd
# AMD
echo -e "kvm\nkvm_amd" | sudo tee /etc/modules-load.d/kvm.conf
```

```sh
virsh net-list --all
sudo virsh net-autostart default
sudo virsh net-start default
```

- QEMU/KVM → Add
 	1. Choose how you would like to install the operating system → Manual install.
 	2. Choose the operating system you are installing → `Microsoft Windows 10`.
 	3. Create a disk image for the virtual machine → `100G`.
 	4. Ready to begin the installtion → Name → `Win10`.

```sh
sudo qemu-system-x86_64 \
  -enable-kvm \
  -m 2048 \
  -cpu host \
  -smp 2 \
  -cdrom <path_to>/windows10_x64_cn.iso \
  -boot d \
  -drive file=/var/lib/libvirt/images/win10.qcow2,format=qcow2 \
  -net nic -net user \
  -name "windows10 VM"
```

- TigerVNC viewer → VNC server → `localhost:5900` → Connect.

## reference

- #document [QEMU ArchWiki](https://wiki.archlinux.org/title/QEMU)

[^1]: [How to Install and Use QEMU/KVM on Arch Linux | Siberoloji](https://www.siberoloji.com/how-to-install-and-use-qemukvm-on-arch-linux/)
