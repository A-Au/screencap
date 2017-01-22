# screencap

    $ screencap URL directory name format interval [config]

    URL 				- any valid URL, must include the protocol
    directory 			- directory where the rendered files will be stored
    name 				- name of the file
    format 				- any of PDF, PNG, JPEG, BMP, PPM, and GIF
    interval			- the number of seconds before the page is rendered and stored again
    config*				- config file to define configuration of browser

    * - optional arguments, if width and height are defined, the device cannot be defined as well and vice versa

## What is `screencap`?

+ Simple *nix terminal commmand that can automate the process of taking screenshots of a given URL.
+ Something I made at UofTHacks IV.

## Getting Started

Run the following terminal command to install and setup screencap

    $ ./install.sh

## Config File

Currently only supports the following:

    width				- width of the viewport
    height				- height of the viewport
    userAgent			- user agent of the browser

### Example

    height = 500
    width = 200
    userAgent = "Mozilla/5.0 (Linux; U; Android 4.0.3; ko-kr; LG-L160L Build/IML74K) AppleWebkit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"


## Sample Calls

    $ screencap 'http://google.com' ./tmp google png 60 iphone

    $ screencap 'http://google.com' . google pdf 60