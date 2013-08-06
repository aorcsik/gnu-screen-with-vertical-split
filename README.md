GNU Screen with vertical split for Mac OS X
-------------------------------------------

I assume you have `brew` installed.

First install `automake` with brew:

    brew install automake

Then just run:

    ./setup.sh

Also here is my own `.screenrc`. It defines a black hardstatus with window title list, selected window's background is blue,
user@hostname and time at the end of the line. Also white background captions for regions and gray background for focused.
One useful binding (if you don't use XON) `Ctrl-a q` kills all screens and quits.

--

*Sources:*

 - `setup.sh` is mostly based on this article: http://andrewho.co.uk/weblog/patching-gnu-screen-on-mac-os-x-for-vertical-split
 - `vproc_priv.h` is from: https://github.com/pgib/screen
