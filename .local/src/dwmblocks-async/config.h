#ifndef CONFIG_H
#define CONFIG_H

// String used to delimit block outputs in the status.
#define DELIMITER " ∘ "

// Maximum number of Unicode characters that a block can output.
#define MAX_BLOCK_OUTPUT_LENGTH 45

// Control whether blocks are clickable.
#define CLICKABLE_BLOCKS 1

// Control whether a leading delimiter should be prepended to the status.
#define LEADING_DELIMITER 0

// Control whether a trailing delimiter should be appended to the status.
#define TRAILING_DELIMITER 0

// Define blocks for the status feed as X(icon, cmd, interval, signal).
#define BLOCKS(X)             \
    X("", "/usr/local/bin/statusbar/updates", 39, 1) \
    X("", "/usr/local/bin/statusbar/battery", 5, 2) \
    X("", "/usr/local/bin/statusbar/volume", 1, 3)  \
    X("", "/usr/local/bin/statusbar/brightness", 1, 4)  \
    X("", "/usr/local/bin/statusbar/clock", 60, 5) 
    /*X("", "sb-music", 0, 2)   \*/
    /*X("", "sb-disk", 1800, 3) \*/
    /*X("", "sb-memory", 10, 4) \*/
    /*X("", "sb-loadavg", 5, 5) \*/
    /*X("", "sb-mic", 0, 6)     \*/
    /*X("", "sb-record", 0, 7)  \*/
    /*X("", "sb-battery", 5, 9) \*/
    /*X("", "sb-date", 1, 10)*/

#endif  // CONFIG_H
