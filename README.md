![Hugo Logo](assets/hugo-logo.png)

# kj_sh604's Hugo Theme (kj_shugo)

a VERY minimal Hugo theme that I use on my [blog](https://aedrielkylejavier.me/articles/) and [scripts/tools](https://aedrielkylejavier.me/scripts-and-tools/) sites.

## features:
* dead simple stylesheet (`static/style.css`)
* responsive web design for mobile and desktop (see screenshots)
* dynamic navigation with `topnav` and `nextprev` (good for blogs)
* decent amount of code and configuration comments to make it as self-documenting as possible.
* generates an rss feed with a `Makefile` (`public/rss.xml`) ![rss logo](assets/rss.webp)
* dark mode and light mode (based on site vistors' system settings)
    * this is not done with CSS; rather, it is achieved with a simple `<meta>` tag:
        * `<meta name="color-scheme" content="dark light">`

## screenshots

**deskop**

![scrot on desktop](assets/desktop-scrot.png)

**with example content** *([aedrielkylejavier.me/scripts-and-tools](https://aedrielkylejavier.me/scripts-and-tools/))*

![scrot with content](assets/example_content-scrot.png)

**mobile**

![scrot on mobile](assets/mobile-scrot.png)

## usage

### theme installation

```sh
hugo new site [YOUR SITE NAME]
cd [YOUR SITE NAME]
git clone https://github.com/kj-sh604/kj_shugo themes/kj_shugo
# copy CSS to parent directory
cp themes/kj_shugo/static/style.css static/
# be careful with the next command ("ungits" the theme directory)
rm -rf themes/kj_shugo/.git
```

you can now declare `theme = kj_shugo` in your `hugo.toml`/`config.toml` file.

### generate rss feed

* run the following in the main working directory (where `Makefile` is located)
```sh
make
```
⚠ Disclaimer: this `Makefile` originally used `sed -i` which works as expected on GNU/Linux. However, I have not been able to test its behaviour on macOS or the BSDs. I've rewrote it to not utilize any OS specific arguments (`-i` in this case), but it's still untested at the moment. So please be very careful when running `make` when you're on those OSs.

## additional links and information

* [Hugo's Templates Documentation](https://gohugo.io/templates/).
