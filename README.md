virtual-scroll-demo for AngularDart
==============================


## Description

A scrolling demonstration of a large list using:<br>
https://github.com/takutaro/angular-virtual-scroll

## Demo

Live demo.<br>
https://takutaro.github.io/angular-virtual-scroll-demo/build/web/

## Requirement

* Dart >= 2.0.0
* AngularDart >= 5.0.0
* Modern browser

## Installation

```bash
$ git clone https://github.com/takutaro/angular-virtual-scroll-demo.git
$ cd angular-virtual-scroll-demo/
$ pub get
```

## Usage

```bash
$ cd angular-virtual-scroll-demo/
$ pub run build_runner serve
(Open http://localhost:8080/ in your browser.)
```

```bash
$ cd angular-virtual-scroll-demo/
$ pub run build_runner build --define "build_web_compilers|entrypoint=compiler=dart2js" -o build
(Open ./build/web/ in your browser.)
```

## Author

takutaro.

## License

The MIT License (MIT).