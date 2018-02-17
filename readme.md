# A tool that helps you convert images(jpg, png) to webp
##### Author: Mats Wikmar, mow-github, matwik@gmail.com

![bviking](img/bVikingFullBlack-logo-150x150.png)
![webp-logo-150x150](img/webp-logo-150x150.png)

##### Technologies etc:
* Images: jpg, png, webp
* `Git bash (.bashrc file)`
* Windows 10 .bat scripts

###### Installation example:
<pre>git clone https://github.com/mow-github/image2webp.git</pre>

###### Prerequisites:
* Install Git bash with default configs (Windows)
* Make sure that: `C:\Users\<username>` gets an .bashrc file (do the: `Instructions` first)
* Install cwebp (Google commandline tool for converting a single image) - Read below for the Windows 10 setup

```

The Windows 10 setup - Googles cwebp

1. https://developers.google.com/speed/webp/download
2. Click: "Download for Windows"
3. Extract content.. and copy/cut everything inside the created folder
4. Add it to path: `C:\webp`
5. Add a WINDOWS PATH ENV VARIABLE: `Windows key` + `pause key`
6. Adv. System Settings > Environment variables > PATH(edit) > New > `Add: C:\webp\bin `

Note: We can now use the cwebp tool everywhere (but only for 1 image at a time).. continue with the: `Instructions`

```

###### Instructions:
```
Note:
 - I created this image2webp converter in Windows 10.
 - It is based on Googles cwebp tool
 - It uses .bat scripts in order to automate the tasks:
    a. Makes sure that we have the correct functions in our .bashrc file ( You must install git bash with default configs )  
    b. Executes the added functions
      - jpg2webp [0-100]  (arg: quality range)
      - png2webp          (-lossless flag behind the scene)
    c. It takes etc. all the jpgs in the jpg folder.. converts them to webp.. and places them in the webp folder

* Git clone the repo
* Move the image2webp folder to etc: C:\Users\<username>\Desktop
* Dbl-click the: `add fns to bashrc.bat`  (adds functions to the .bashrc file)
* Dbl-click the: `jpg2webp.bat`           (Press Enter the first time..to create the img_folder,jpg,webp folders)
* Add all the dummy images from `_imgs` to the `img_folder/jpg`
* Dbl-click the: `jpg2webp.bat`           (enter your desired quality number and press ENTER)
* It is the same process for png2webp.bat (and yes.. can run thesse function directly in git bash)
```


###### References:
* [Git Bash Windows - download](https://gitforwindows.org/)
* [Google webp - docs](https://developers.google.com/speed/webp/)
* [Google webp - Download cwebp etc](https://developers.google.com/speed/webp/download)
* [Telegraphics PS plugin for webp](http://telegraphics.com.au/sw/product/WebPFormat#webpformat)
* [Google cwebp - command line tool](https://developers.google.com/speed/webp/docs/using)


<hr>

> _"Failure is just a symptom for success"_

`          | Links          | My webpage                              |
---------- | -------------- | --------------------------------------- |
*Author(s)*| `Mats Wikmar`  | [bviking.se](https://www.bviking.se)    |
