# [Timeshift](https://github.com/teejee2008/timeshift)

> Timeshift for Linux is an application that provides functionality similar to the System Restore feature in Windows and the Time Machine tool in Mac OS. Timeshift protects your system by taking incremental snapshots of the file system at regular intervals. These snapshots can be restored at a later date to undo all changes to the system.  
> In RSYNC mode, snapshots are taken using rsync and hard-links. Common files are shared between snapshots which saves disk space. Each snapshot is a full system backup that can be browsed with a file manager.  
> In BTRFS mode, snapshots are taken using the in-built features of the BTRFS filesystem. BTRFS snapshots are supported only on BTRFS systems having an Ubuntu-type subvolume layout (with @ and @home subvolumes).  
> Timeshift is similar to applications like rsnapshot, BackInTime and TimeVault but with different goals. It is designed to protect only system files and settings. User files such as documents, pictures and music are excluded. This ensures that your files remains unchanged when you restore your system to an earlier date. If you need a tool to backup your documents and files please take a look at the excellent BackInTime application which is more configurable and provides options for saving user files. [teejee2008/timeshift]

> Timeshift for Linux是一个提供类似于Windows系统还原功能和Mac OS中Time Machine工具的应用程序。Timeshift通过定期对文件系统进行增量快照来保护您的系统。这些快照可以在以后恢复，以撤销对系统的所有更改。  
> 在RSYNC模式下，快照是使用rsync和硬链接创建的。常见文件在快照之间共享，节省磁盘空间。每个快照都是一个完整的系统备份，可以使用文件管理器浏览。  
> 在BTRFS模式下，快照是使用BTRFS文件系统的内置功能创建的。BTRFS快照仅在具有Ubuntu类型子卷布局（带有@和@home子卷）的BTRFS系统上支持。  
> Timeshift与rsnapshot、BackInTime和TimeVault等应用程序相似，但目标不同。它旨在仅保护系统文件和设置。用户文件，如文档、图片和音乐被排除在外。这确保了在您将系统恢复到早期日期时，您的文件保持不变。如果您需要一个工具来备份文档和文件，请查看优秀的BackInTime应用程序，它更具可配置性并提供保存用户文件的选项。 [teejee2008/timeshift]

## install

```sh
sudo pacman -S timeshift
```

```sh
sudo pacman -S cronie
sudo systemctl enable --now cronie.service
```

## cross-reference

- [grub-btrfs.md](/opt/_arch/grub-btrfs.md)
