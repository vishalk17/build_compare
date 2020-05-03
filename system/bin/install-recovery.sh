#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:13907968:997f56fcc6a17665342212fbf467d4c5861c25e8; then
  applypatch  EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:9728000:8ab83f71cf65b91c16fe1251f6836d565d85f619 EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery 997f56fcc6a17665342212fbf467d4c5861c25e8 13907968 8ab83f71cf65b91c16fe1251f6836d565d85f619:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
