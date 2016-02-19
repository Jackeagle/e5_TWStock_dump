#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12424492:23e00565cb64c61f249562ddef1fecc74e66aee3; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:11488552:943763b810034a2f3fa73eba2689dff360ce39e3 EMMC:/dev/block/bootdevice/by-name/recovery 23e00565cb64c61f249562ddef1fecc74e66aee3 12424492 943763b810034a2f3fa73eba2689dff360ce39e3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
