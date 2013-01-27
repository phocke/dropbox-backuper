#How to use it

Clone the repo:

    git clone git://github.com/phocke/dropbox-backuper.git

Bundle your gems:

    cd dropbox-backuper
    bundle

Create your config file:

    cp config.example.yml config.yml

Obtain client token and secret:

    rake dropbox:authorize

Now fire your favorite editor and update config.yml with your freshly obtained credentials. You need to edit only last three lines.

Last step is to execute the script:

    ruby simple_backup.rb

Upload can take a while, but once it's finished you'll see your file in /Dropbox/Apps/duplays-backuper directory

Optionally you can add this script to your crontab. Remember - you'll get free versioning for 30 days with dropox :). If you need to keep your backups for more than 30 days, go take a look at [Packrat](https://www.dropbox.com/help/113/en).

Voila!