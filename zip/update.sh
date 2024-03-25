#!/sbin/sh

# At the time this file is executed, the following partitions are mounted:
# /system_root /system /system_ext /vendor /product /data

# Use this script to apply your modification to the different partitions.
# See utils/utils.sh for the list of available helper functions

# You can extract all your files to $INSTALLDIR, which is a temporary directory.


# Example:

# ui_print "Applying update..."
#
# package_extract_file newbinary $INSTALLDIR/newbinary
#
# mv $INSTALLDIR/newbinary /system/bin/newbinary
#
# set_metadata /system/bin/newbinary uid root gid shell mode 755
#
# inject_selinux_policy -s zygote -t adb_data_file -c dir -p search
#
# ui_print "Update successfully installed!"

ui_print "Applying Patch..."

cd vendor
local a
a=pwd
ui_print a
echo "ro.surface_flinger.enable_frame_rate_override=false" >> build.prop

local b

file_getprop build.prop ro.surface_flinger.enable_frame_rate_override

ui_print "Patched successfully!"
