# print jvm properties

### Usage

setup
```
$ git clone https://github.com/jishida/pjp.git
$ pjp/bin/pjp --help
USAGE:
  pjp [OPTIONS] [PROPERTY...]

OPTIONS:
  -d, --java-home <java home> Overwrites JAVA_HOME
  -r, --runtime <java>        Specifies executable runtime path
  -c, --compiler <javac>      Specifies executable compiler path
  -t, --target <jdk version>  Specifies target JDK version

FLAGS:
  -f, --force-compile         Force compile
  -h, --help                  Prints this message
```

install
```
$ git clone https://github.com/jishida/pjp.git
$ cd pjp
$ sudo make install
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
$ export PJP_JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
$ pjp java.specification.version
java.specification.version=1.7
$ pjp java.specification.version --java-home /usr/lib/jvm/java-8-openjdk-amd64
java.specification.version=1.8
```
