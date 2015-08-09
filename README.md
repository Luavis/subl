# subl
Sublime Text 2/3 command line opener for osx

Support
====

* Mac

Installation
====

###Caution
Install script must run in root!


#####Dependency
* curl

#####Via curl
```
bash <(curl -sL https://raw.github.com/Luavis/subl/master/install.sh)
```

#####Via wget
```
bash <(wget -qO- https://raw.github.com/Luavis/subl/master/install.sh)
```

How to use
====

#####Usage:
  subl [-v version] [-h] [<existed file> | <new file> | <existed dir>] [-d <existed dir>|<new dir name>] [-f <existed file> | <new file>]

#####Options:
  -v                      open with specific sublime version, if not set, find sublime version(2 to 3)
  
  -d                      create or open directory with sublime text
  
  -f                       create or open file with sublime text
  
  -h[, --help]         create or open directory with sublime

Example
====
```shell
$ subl .gitignore
$ subl -d src
$ subl -d project_dir
$ subl index.html style.css
```
