#!/bin/bash


killall -9 waybar 
killall -9 swaync 

waybar & disown
swaync & disown
