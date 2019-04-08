#!/bin/bash

#dialog --textbox /etc/passwd 15 45
dialog --menu "Sys Admin Menu" 20 30 10 1 "Display disk space" 2 "Display users" 3 "Display memory usage" 4 "Exit program" 2>test.txt
