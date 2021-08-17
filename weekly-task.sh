#!/bin/bash

rm -fv /home/*/tmp/Cpanel_*
rm -rf /home/*/.trash/*
rm -rf /usr/local/apache.backup*
rm -rf /home/cpeasyapache
yum clean all

/root/VersionFinder/versionfinder.pl | sendmail helpdesk@webdings.cc,office@webdings.cc
/root/cPanel-fixperms/fixperms.sh -all
