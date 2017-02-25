# print jvm properties

### Usage

setup
```
$ git clone https://github.com/jishida/pjp.git
$ source pjp/env
```

print properties
```
$ pjp os.name os.arch
os.name=Linux
os.arch=amd64
```

print all properties
```
$ pjp
awt.toolkit=sun.awt.X11.XToolkit
file.encoding=ISO-8859-1
file.encoding.pkg=sun.io
file.separator=/
java.awt.graphicsenv=sun.awt.X11GraphicsEnvironment
java.awt.printerjob=sun.print.PSPrinterJob
java.class.path=.
java.class.version=52.0
...
```

other java
```
$ export PJP_JAVA=/usr/lib/jvm/java-7-openjdk-amd64/bin/java
$ pjp java.specification.version
java.specification.version=1.7
$ export PJP_JAVA=/usr/lib/jvm/java-8-openjdk-amd64/bin/java
$ pjp java.specification.version
java.specification.version=1.8
```
