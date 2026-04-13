# Graphics Enhancement Driver

MediaTek graphics enhancement isn't typically a single "driver" file you install manually. Instead, it is a combination of hardware-level features and system-level software optimizations.

## Check Driver Availability
```bash
#Using Terminal Emulator or Termux
su
ls /sys/module/ged/parameters/
```

## What Has Been Changed:
```bash
#services.sh
echo 1 > /sys/module/ged/parameters/gx_frc_mode
echo 1 > /sys/module/ged/parameters/gx_boost_on
echo 1 > /sys/module/ged/parameters/gx_game_mode
echo 1 > /sys/module/ged/parameters/cpu_boost_policy
echo 1 > /sys/module/ged/parameters/boost_extra
echo 1 > /sys/module/ged/parameters/ged_smart_boost
echo 1 > /sys/module/ged/parameters/ged_boost_enable
echo 0 > /sys/module/ged/parameters/is_GED_KPI_enabled
```

## Compatibility

- Device with MediaTek processor and Mali GPU
- Android 10.0 or higher
- Kernel version 4.14 or higher
- Magisk 26 or higher

## Download

- Download from the [release page](https://github.com/sanndyrmdhn/Graphics-Enhancement-Driver/releases)
- Download and flash the zip in magisk manager ( Not tested in KSU and APatch )
- Reboot the device
