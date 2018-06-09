master:
[![Build Status](https://travis-ci.org/joehecn/cinode.svg?branch=master)](https://travis-ci.org/joehecn/cinode)
dev:
[![Build Status](https://travis-ci.org/joehecn/cinode.svg?branch=dev)](https://travis-ci.org/joehecn/cinode)

# cinode

``` bash

docker build -t joe/cinode:1.0.0 .

docker run -d -p 8080:3000 -v /"$PWD"/dist:/joe/dist --name cinode joe/cinode:1.0.0

```
