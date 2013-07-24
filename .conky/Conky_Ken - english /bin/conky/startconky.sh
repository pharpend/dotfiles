#!/bin/bash
sleep 15
conky -c ~/.Conky/cpu &
sleep 1
conky -c ~/.Conky/mem &
sleep 5
conky -c ~/.Conky/rings &
sleep 30
conky -c ~/.Conky/weather &
sleep 1
conky -c ~/.Conky/mail
