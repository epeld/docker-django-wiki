#docker-django-wiki

A fork that build on top of [django-wiki](https://github.com/django-wiki/django-wiki) container
but tries to put the database on a separate volume.

I couldn't get the original image to build, so this image just refers to the latest snapshot of it.

### Building
```sh
$ sudo docker build -t djangowiki .
```
### Usage
```sh
$ sudo docker run -d -P --name=django-wiki djangowiki
$ sudo docker port django-wiki 8000
0.0.0.0:49153
$ wget http://localhost:49153 (admin/admin)
```
