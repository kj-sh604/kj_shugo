![Hugo Logo](assets/hugo-logo.png)

# kj_sh604's Hugo Theme (kj_shugo)

a VERY minimal Hugo theme that I use on my [blog](https://aedrielkylejavier.me/articles/) and [scripts/tools](https://aedrielkylejavier.me/scripts-and-tools/) sites.

# features:
* dead simple stylesheet (`/style.css`)
* dark mode and light mode (based on site vistors' system settings)
    * this is not done with CSS; rather, it is achieved with a simple `<meta>` tag:
        * `<meta name="color-scheme" content="dark light">`
* responsive web design for mobile and desktop (see scrots)
* dynamic navigation with `topnav` and `nextprev` (good for blogs)
* decent amount of code and configuration comments to make it as self-documenting as possible.
* generates an rss feed with a `Makefile` (`public/rss.xml`)
    * ⚠ this `Makefile` does use `sed -i` which works as expected on GNU/Linux. However, I have not been able to test its behaviour on macOS and BSDs — so please at your own risk if you're on those OSs.
