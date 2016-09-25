/// getECG(wave_length, wave_size, xx);

var wave_length = argument0;
var wave_size   = argument1;
var xx          = argument2;

if (xx < 0) {
    xx = wave_length + (xx mod wave_length);
} else if (xx >= wave_length) {
    xx = xx mod wave_length;
}

if (xx < wave_size) {
    // QRS
    return lengthdir_y(1, wave_size / 2*pi);
} else {
    // no QRS
    return 0;
}

