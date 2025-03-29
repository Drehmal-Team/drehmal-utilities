
// define distinct values, counting from 1:
#define BLUR_CHANNEL 1
#define PURPLE_CHANNEL 2

/*
signature:
 ADD_MARKER(channel, green, alpha, op, rate)
*/
// append different marker definitions
#define LIST_MARKERS ADD_MARKER(BLUR_CHANNEL, 10, 10, 1, 0.4) ADD_MARKER(PURPLE_CHANNEL, 11, 10, 1, 0.2)

#define MARKER_RED 254

// Screen pixel that the marker ends up on if it uses channel k:
// Mapping follows structure that is like an inverted cantor pairing (but only producing coordinates with an even sum)
#define MARKER_POS(k) (ivec2(2*int(ceil(sqrt(float(k))) - 1.0),0) + (k - int((ceil(sqrt(float(k))) - 1.0)*(ceil(sqrt(float(k))) - 1.0)) - 1)*ivec2(-1, 1))
