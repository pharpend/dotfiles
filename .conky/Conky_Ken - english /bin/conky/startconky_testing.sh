#!/bin/bash

conky -c ~/.Conky/cpu &
sleep 1
conky -c ~/.Conky/mem &
sleep 1
conky -c ~/.Conky/rings &
sleep 1
conky -c ~/.Conky/weather &
sleep 1
conky -c ~/.Conky/mail

