# cgaz-admin boundaries

## Download admin data

```shell
./download.sh
```

https://www.geoboundaries.org/downloadCGAZ.html

## Maintain attributes in QGIS

original CGAZ datasets does not have good attributes. You need to organise necessary fields before creating tiles.

## Generate

```shell
./generate.sh
```

## Final PMTiles

PMTiles was uploaded in the below Azure blob container.

https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz-geoboundaries.pmtiles

[PMTiles Viewer](https://protomaps.github.io/PMTiles/?url=https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz-geoboundaries.pmtiles)

| Zoom | Admin Level|
|---|---|
| 0 - 3 | Admin 0 |
| 4 - 5 | Admin 1 |
| 6 - 10 | Admin 2 |

## Data generated for final PMTiles

| Level | GeoPackage | Flatgeobuf | PMTiles |
|---|---|---|---|
|Admin 0|[173MB](https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz/geoBoundariesCGAZ_ADM0.gpkg)|[154MB](https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz/geoBoundariesCGAZ_ADM0.fgb)|[1.8MB](https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz/ADM0.pmtiles)|
|Admin 1|[241MB](https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz/geoBoundariesCGAZ_ADM1.gpkg)|[162MB](https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz/geoBoundariesCGAZ_ADM1.fgb)|[7.3MB](https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz/ADM1.pmtiles)|
|Admin 2|[265MB](https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz/geoBoundariesCGAZ_ADM2.gpkg)|[241MB](https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz/geoBoundariesCGAZ_ADM2.fgb)|[167MB](https://undpngddlsgeohubdev01.blob.core.windows.net/admin/cgaz/ADM2.pmtiles)|

## License

Using the [geoBoundaries](https://www.geoboundaries.org) database, we constructed a time-series illustrating how under 5 child mortality has shifted over time.

See their [LICENSE](https://github.com/wmgeolab/geoBoundaries/blob/main/LICENSE) file.
