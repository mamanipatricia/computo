#!/bin/bash

for mesa in {1660..1667}
do
echo $mesa
mkdir -p $mesa
cd $mesa
curl -X POST -s https://computo.oep.org.bo/resul/resulActa/$mesa/1 > 1
curl -X POST -s https://computo.oep.org.bo/resul/resulActa/$mesa/2 > 2
curl -X POST -s https://computo.oep.org.bo/resul/resulActa/$mesa/3 > 3
curl -s https://computo.oep.org.bo/resul/imgActa/${mesa}1.jpg --output $mesa.jpg
cd ..
done