PHOTOTYPE="*.jpg"
HOMEPATH="/home/srini/DB1_B/"
SAVEPATH="/home/srini/output/"

for TIF in *.tif
do
    echo "Converting $TIF to $HOMEPATH/${TIF%.*}.jpg"
    convert "$TIF" -colorspace gray "$HOMEPATH/${TIF%.*}.jpg"
    rm "$TIF"
done

for PIC in $PHOTOTYPE
do
    echo "Processing mindtct and converting to grayscale: $PIC"
    /home/srini/NBIS_Tool/bin/mindtct -m1 "$PIC" "$SAVEPATH/$PIC"
done
