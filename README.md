# screencap

    $ screencap URL directory name format interval [width height] [device]

    URL 				- any valid URL
    directory 			- directory where the rendered files will be stored
    name 				- name of the file
    format 				- any of PDF, PNG, JPEG, BMP, PPM, and GIF
    interval			- the number of seconds before the page is rendered and stored again
    width*				- set the width of the viewport
    height*				- set the height of the viewport
    device*				- can choose a predefined viewport size ie. 'iphone' or 'googlepixel'

    * - optional arguments, if width and height are defined, the device cannot be defined as well and vice versa

## What is `screencap`?

+ Simple commmand that can automate the process of taking screenshots of a given URL.
+ Something I made at UofTHacks IV.

## Sample Calls

    screencap 'http://google.com' ./tmp google png 60 iphone

    screencap 'http://google.com' . google pdf 60