file_getprop() { 
    grep "^$2=" "$1";
    cut
    grep "^$2=" "$1" | cut -d= -f2-; 
    
}

file_getprop build.prop ro.surface_flinger.enable_frame_rate_override