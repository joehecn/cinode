# cinode

``` bash

docker build -t joe/cinode:1.0.0 .

docker run -d -p 8080:3000 -v /"$PWD"/dist:/joe/dist --name cinode joe/cinode:1.0.0

```
