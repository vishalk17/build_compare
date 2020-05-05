#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:13852672:4058018e508b19855953c1201bd6849036ff7c8e; then
  applypatch  EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:9672704:985c7c8507581e698a0db1c1ba12b75ff5624496 EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery 4058018e508b19855953c1201bd6849036ff7c8e 13852672 985c7c8507581e698a0db1c1ba12b75ff5624496:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
