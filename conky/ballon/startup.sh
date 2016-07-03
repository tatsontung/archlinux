#!/bin/sh

# attendo il caricamento
 #(CORRECT WITH YOUR PATH!!)
sleep 20   

conky -c ~/.conky/ballon/conkyrc0 &
conky -c ~/.conky/ballon/conkyrc1 &
 
exit

