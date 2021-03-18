#! /usr/bin/env python3
python3 $PWD/python/Simulator.py -Nexp ${1:-1000} -Nmes ${2:-10}  -seed ${3:-430} -output ${4:-"H0.txt"} -cause ${5:-"HF"}
python3 $PWD/python/Simulator.py -Nexp ${1:-1000} -Nmes ${2:-10}  -seed ${3:-450} -output ${6:-"H1.txt"} -cause ${7:-"ED"}
#echo $7
#echo $5
python3 $PWD/python/ElectricityUse.py -input0 ${5:-H0.txt} -input1 ${7:-H1.txt}
