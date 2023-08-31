#!/bin/bash

layers=("ADM0" "ADM1" "ADM2")
# layers=("ADM0")

datadir=./data
distdir=./dist

rm -rf $distdir

mkdir -p $distdir

for layer in "${layers[@]}"
do
    dist="${distdir}/geoBoundariesCGAZ_${layer}.fgb"
    gpkg="${datadir}/geoBoundariesCGAZ_${layer}.gpkg"
    ogr2ogr -f FlatGeobuf -skipfailures $dist $gpkg
done

for layer in "${layers[@]}"
do
    minzoom="-Z0"
    maxzoom="-z3"
    if [[ "$layer" == 'ADM1' ]]; then
        minzoom="-Z4"
        maxzoom="-z5"
    elif [[ "$layer" == 'ADM2' ]]; then
        minzoom="-Z6"
        maxzoom="-z10"
    fi
    
    tippecanoe $minzoom $maxzoom -rg -ps -pS -pf -pk -P -l admin -f -o ./dist/${layer}.pmtiles ./dist/geoBoundariesCGAZ_${layer}.fgb
done

tile-join -pk -pC -f \
-n "Comprehensive Global Administrative Zones (CGAZ)" \
-N "The CGAZ dataset provides single-file integrations of boundaries for every country in the world. We provide three downloads for this product, for ADM levels ADM0 (Country Boundaries), ADM1 (States) and ADM2 (Municipalities). Extensive efforts are made to ensure that file sizes are small enough to be used in most traditional desktop software. Both polygon simplification and gap filling along the edges of polygons are used in this product; this will result in imprecision that may be undesireable for some use cases. If you are working with a single or small number of countries, we recommend you use one of our single-country products. \nUnlike our other products, by its nature CGAZ must define contested areas. Today, we rely on the US Department of State definitions. We recognize that this strategy will not be optimal for all use cases, and intend to produce additional world views with different boundary sets in the near future. Further, if you prefer to construct your own world view using our data, you can do so using our single country products, which seek to represent each country as they would represent themselves (thus resulting in overlaps in some contested cases)." \
-A "©<a href='https://www.geoboundaries.org/downloadCGAZ.html'>geoBoundaries by the William & Mary geoLab</a>" \
-o cgaz-geoboundaries.pmtiles \
"./dist/ADM0.pmtiles" \
"./dist/ADM1.pmtiles" \
"./dist/ADM2.pmtiles" 