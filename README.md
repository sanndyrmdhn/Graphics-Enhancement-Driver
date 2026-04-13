# Graphics Enhancement Driver

MediaTek graphics enhancement isn't typically a single "driver" file you install manually. Instead, it is a combination of hardware-level features and system-level software optimizations.

## Check Driver Availability
```bash
#Using Terminal Emulator or Termux
su
ls /sys/module/ged/parameters/

#For result command ( supported ) ( Device Redmi 10 5G HyperOS A14 )
ap_self_frc_detection_rate     ged_smart_boost
boost_amp                      gpu_block
boost_extra                    gpu_bottom_freq
boost_gpu_enable               gpu_bw_err_debug
boost_upper_bound              gpu_cust_boost_freq
cpu_boost_policy               gpu_cust_upbound_freq
deboost_reduce                 gpu_debug_enable
enable_cpu_boost               gpu_dvfs_enable
enable_game_self_frc_detect    gpu_idle
enable_gpu_boost               gpu_loading
g_fb_dvfs_threshold            gx_boost_on
g_gpu_timer_based_emu          gx_dfps
ged_boost_enable               gx_fb_dvfs_margin
ged_force_mdp_enable           gx_force_cpu_boost
ged_log_perf_trace_enable      gx_frc_mode
ged_log_trace_enable           gx_game_mode
ged_monitor_3D_fence_debug     gx_top_app_pid
ged_monitor_3D_fence_disable   is_GED_KPI_enabled
ged_monitor_3D_fence_systrace  target_t_cpu_remained
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
