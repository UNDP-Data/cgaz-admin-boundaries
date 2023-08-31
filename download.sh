#!/bin/bash

DATA_DIR=./data

rm -rf $DATA_DIR
mkdir -p $DATA_DIR

curl -L https://github.com/wmgeolab/geoBoundaries/raw/main/releaseData/CGAZ/geoBoundariesCGAZ_ADM0.gpkg -o $DATA_DIR/geoBoundariesCGAZ_ADM0.gpkg

curl -L https://github.com/wmgeolab/geoBoundaries/raw/main/releaseData/CGAZ/geoBoundariesCGAZ_ADM1.gpkg -o $DATA_DIR/geoBoundariesCGAZ_ADM1.gpkg

curl -L https://github.com/wmgeolab/geoBoundaries/raw/main/releaseData/CGAZ/geoBoundariesCGAZ_ADM2.gpkg -o $DATA_DIR/geoBoundariesCGAZ_ADM2.gpkg