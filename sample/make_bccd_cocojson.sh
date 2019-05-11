#!/bin/bash

# Usage: sh sample/make_bccd_cocojson.sh

for split in train val trainval test
do
    python voc2coco.py \
        --ann_dir sample/Annotations \
        --ann_ids sample/dataset_ids/${split}.txt \
        --labels sample/labels.txt \
        --output sample/outputs/${split}.json \
        --ext xml
done
