# Toolchain
Standard toolchain for Backy.io projects

## Overview
Backy using the following tools
<br>

* Webadmin tools - [Go-Buffalo](https://gobuffalo.io/)
* Data serialization - [Protocol Buffers](https://protobuf.dev/)
* Web documentation - [Go-Hugo](https://gohugo.io/)
* Client and server libraries - [OpenAPI generator](https://openapi-generator.tech/)
* Design driven development - [Goa Design](https://goa.design/)
* Database migration - [Migrate](https://github.com/backyio/migrate)
* Type-safe sql query compiler - [SqlC](https://sqlc.dev/)
* Micro service framework - [Go-Micro](https://github.com/go-micro/go-micro/)
* Database - [Cockroachdb](https://www.cockroachlabs.com/)
* Release management - [GoReleaser](https://goreleaser.com/)
<br>

## Dependencies

* Installed go with windows and linux packages
* Linux Make



## Installation
```
    make install   // install all entire component
    make nodb      // install without cockroachdb
```
