#!/bin/bash -eux

echo "********************************************************************"
echo "nodebrew"
echo "********************************************************************"
nodebrew setup
nodebrew install stable
nodebrew use stable