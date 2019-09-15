#! /bin/bash
#
# IMPORTANT FILE.
# Date: Sept, 14 2019
# 
# This script shows desktop notification from cronjob. 
# Just run this file as cronjob and it will show the notification.
#
# First, we have to export two environment variable because 
# these two variable are mandatory for destop notification and 
# these variable are not present in the session used by cronjob.
#
# 
# The DISPLAY environment variable is used by all X clients to determine
#  what X server to display on.
export DISPLAY=:0.0
#
# Learn about DBUS_SESSION_BUS_ADDRESS environment variable:
# https://dbus.freedesktop.org/doc/dbus-launch.1.html
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

notify-send "This is a desktop notification" "Shyam Kumar"



#                      Environment variable VS Shell variables
# Environment variable as considered as global variables and shell variables can be
# considered as local variable.
#
# Whenever you start a new shell or a Unix program, it inherits all of its parent's
# environment variables. However, it does not inherit any shell variables. 
# Use env command to list all environment variables
