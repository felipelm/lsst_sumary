# LSST Focal Plane Summary

_Make sure you have the data_repo files_

## Initialization

```
docker-compose up
```

## Inside the container
```
source /opt/lsst/software/stack/loadLSST.bash
setup lsst_distrib
setup -r .
scons -Q -j 6 opt=3
cd ../data_repo/
makeFpSummary.py . --output output --id visit=193824
```

## Example with configuration

```
e.g makeFpSummary.py . --output output4 --id visit=193824 -c binSize=4 contrast=0.1
```

## Create tiff

```
vips im_vips2tiff calexp-v00193824.fits teste.tif:deflate,tile:256x256,pyramid
```