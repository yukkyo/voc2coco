# voc2coco

This is script for converting VOC format XMLs to COCO format json(ex. coco_eval.json).

### Why we need to convert VOC xmls to COCO format json ?

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

### 2. Run script

##### 2.1 Usage 1(Use ids list)

```bash
$ python voc2coco.py \
    --ann_dir /path/to/annotation/dir \
    --ann_ids /path/to/annotations/ids/list.txt \
    --labels /path/to/labels.txt \
    --output /path/to/output.json \
    <option> --ext xml
```

##### 2.2 Usage 2(Use annotation paths list)

**Sample paths.txt**

```txt
/path/to/annotation/file.xml
/path/to/annotation/file2.xml
...
```

```bash
$ python voc2coco.py \
    --ann_paths_list /path/to/annotation/paths.txt \
    --labels /path/to/labels.txt \
    --output /path/to/output.json \
    <option> --ext xml
```

### 3. Example of usage

In this case, you can convert [Shenggan/BCCD_Dataset: BCCD Dataset is a small-scale dataset for blood cells detection.](https://github.com/Shenggan/BCCD_Dataset) by this script.

```bash
$ python voc2coco.py
    --ann_dir sample/Annotations \
    --ann_ids sample/dataset_ids/test.txt \
    --labels sample/labels.txt \
    --output sample/bccd_test_cocoformat.json \
    --ext xml

# Check output
$ ls sample/ | grep bccd_test_cocoformat.json
bccd_test_cocoformat.json

# Check output
cut -f -4 -d , sample/bccd_test_cocoformat.json
{"images": [{"file_name": "BloodImage_00007.jpg", "height": 480, "width": 640, "id": "BloodImage_00007"}
```
