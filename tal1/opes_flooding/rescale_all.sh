#!/bin/bash

for i in {1..20}
do
	cd run$i
	cp ../rescale_time.py .
	python3 rescale_time.py
	tail -n 1 time
	cd ..
done
