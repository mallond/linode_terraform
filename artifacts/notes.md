![image](https://user-images.githubusercontent.com/993459/130832740-840172f5-f7f6-42ba-a94f-b81de568c318.png)

mkfs.ext4 "/dev/disk/by-id/scsi-0Linode_Volume_mydata"

mkdir "/mnt/mydata"

mount "/dev/disk/by-id/scsi-0Linode_Volume_mydata" "/mnt/mydata"

/dev/disk/by-id/scsi-0Linode_Volume_mydata /mnt/mydata ext4 defaults,noatime,nofail 0 2
