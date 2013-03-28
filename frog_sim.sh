#!/usr/bin/env sh

octave -q frog_sim.m
avconv -r 2 -qscale 1 -i frog1/%05d.png frog1.mp4
avconv -r 2 -qscale 1 -i frog2/%05d.png frog2.mp4
