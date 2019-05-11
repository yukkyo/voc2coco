# voc2coco

This is script for converting VOC format XMLs to COCO format json(ex. coco_eval.json).

## Why we need to convert VOC xmls to COCO format json ?

We can use COCO API, this is very useful(ex. calculating mAP).

## How to use

### 1. Make labels.txt

labels.txt if need for making dictionary for converting label to id.

**Sample labels.txt**

```txt
Label1
Label2
...
```


### 2. Usage 1(Use ids list)

```bash
$ python voc2coco.py \
    --ann_dir /path/to/annotation/dir \
    --ann_ids /path/to/annotations/ids/list.txt \
    --labels /path/to/labels.txt \
    --output /path/to/output.json \
    <option> --ext xml
```


### 2. Usage 2(Use annotation paths list)

```bash
$ python voc2coco.py \
    --ann_paths_list /path/to/annotation/paths.txt \
    --labels /path/to/labels.txt \
    --output /path/to/output.json \
    <option> --ext xml
```

### 3. Example of usage

```bash
$ python voc2coco.py \
    --ann_dir sample/Annotations \
    --ann_ids sample/test.txt \
    --labels sample/labels.txt \
    --output sample/bccd_test_cocoformat.json \
    --ext xml
```

You can convert [Shenggan/BCCD_Dataset: BCCD Dataset is a small-scale dataset for blood cells detection.](https://github.com/Shenggan/BCCD_Dataset) by this script.