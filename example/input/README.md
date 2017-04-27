# docker-daux.io

## Why?

Because the need to have php and composer locally is 
annoying if all we want to do is turn some markdown into
 beautiful docs.

## How?

Small php-alpine image exposing daux.io in entry point. No changes have been made to daux.io in any way.

## Usage

Assuming your markdown documentation is in a `./input` folder, and you want to generate output to `./output` you need to 

```
docker run -v `pwd`/input:/input -v `pwd`/output:/output -it --rm michaeldonat/daux.io
```
