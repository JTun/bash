#!/bin/bash
#yelptext=wget -q0- www.yelp.com | grep yelp | wc -l >> filename
yelptext=wget -q www.yelp.com | grep yelp | wc -l >> filename
sudo sed -n '50,$p' filename
sed 's/yelp/google/p' filename > filename2
