FROM camandel/django-wiki
MAINTAINER Erik Peldan<fullname@gmail.com>

RUN rm /testproject/testproject/settings.py
RUN rm /testproject/testproject/settings.pyc

ADD testproject/testproject/settings.py /testproject/testproject/settings.py
ADD data /data/

VOLUME /data/

RUN rm /testproject/db.sqlite3
RUN ln -s /data/db.sqlite3 /testproject/db.sqlite3

EXPOSE 8000

ENTRYPOINT ["python","/testproject/manage.py","runserver","0.0.0.0:8000"]
