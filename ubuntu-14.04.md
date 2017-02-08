# Installation Ubuntu 14.04 LTS

## Essential Software

* [Google Chrome](http://google.com/chrome).
* [Dropbox](https://www.dropbox.com/install).
* [TeX-Live](http://tug.org/texlive/acquire-netinstall.html).

## Pandoc

~~~
sudo apt-get install haskell-platform
~~~

Build relocatable binary according to http://johnmacfarlane.net/pandoc/installing.html.

## Oracle Java

~~~
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
~~~

Source: [Install Oracle Java 7 in Ubuntu via PPA repository](http://www.webupd8.org/2012/01/install-oracle-java-jdk-7-in-ubuntu-via.html).

## Android Tools

Needed in order to debug Android devices. Fist, install Ubuntu packages:

~~~
sudo apt-get install android-tools-adb android-tools-fastboot
~~~

Then install the `51-android.rules` file:

~~~
wget https://raw.githubusercontent.com/snowdream/51-android/master/51-android.rules
sudo cp 51-android.rules /etc/udev/rules.d
sudo chmod a+r /etc/udev/rules.d/51-android.rules
sudo service udev restart
~~~

There are [packages available on WebUpd8](http://www.webupd8.org/2012/08/install-adb-and-fastboot-android-tools.html) that includes the `51-android.rules` file. However, i doubt they are necessary; the Ubuntu packages seem to include their own rule set (although put into the `/lib` dir -- I don't really get this).

Source: [51-android](https://github.com/snowdream/51-android).

***

`$Revision: 1.1 $`
