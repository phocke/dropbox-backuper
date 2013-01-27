#How to use it

Bundle your gems:

    bundle

Create your config file:

    cp config.example.yml config.yml

Obtain client token and secret:

    rake dropbox:authorize

Now fire your favorite editor and update config.yml with your freshly obtained credentials. You need to edit only last three lines.

Last step is to execute the script:

    ruby simple_backup.rb

Upload can take a while, but once it's finished you'll see your file in /Dropbox/Apps/duplays-backuper directory

Voila!