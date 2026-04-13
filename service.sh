while [[ "$(getprop sys.boot_completed)" != "1" ]]; do
    sleep 3
done
#Tweak with Graphics Enhancement Driver
echo 1 > /sys/module/ged/parameters/gx_frc_mode
echo 1 > /sys/module/ged/parameters/gx_boost_on
echo 1 > /sys/module/ged/parameters/gx_game_mode
echo 1 > /sys/module/ged/parameters/cpu_boost_policy
echo 1 > /sys/module/ged/parameters/boost_extra
echo 1 > /sys/module/ged/parameters/ged_smart_boost
echo 1 > /sys/module/ged/parameters/ged_boost_enable
echo 0 > /sys/module/ged/parameters/is_GED_KPI_enabled