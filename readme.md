# 复现流程

## 数据集下载

kaggle（BraTS2021 challenge)：[BRaTS 2021 Task 1 Dataset](https://www.kaggle.com/datasets/dschettler8845/brats-2021-task1/data)

## 环境安装

```
conda create -n nnunet python3.10
pip install nnunetv2

pip install numpy=1.26.4
pip install blosc2
pip install bio
pip install acvl_utils==0.2

```

## 数据处理

### 数据格式转换

/dataset 下创建nnUNet_preprocessed、nnUNet_raw/nnUNet_raw_data、nnUNet_results文件夹

数据集BraTS2021_Training_Data.tar解压缩到nnUNet_raw/nnUNet_raw_data/Task137_BraTS21

```
dataset
├── nnUNet_preprocessed
├── nnUNet_results
├── nnUNet_raw
│   ├── nnUNet_raw_data
│   │   ├── Task137_BraTS21
│   │   │   ├── BraTS2021_00000
│   │   │   ├── BraTS2021_00002
│   │   │   ├── ...
│   ├── ...
├── imagesTs
│   ├── la_001_0000.nii.gz
│   ├── la_002_0000.nii.gz
│   ├── ...
└── Dataset137_BraTS21.ipynb
```

准备好后，运行Dataset137_BraTS21.ipynb转换数据集格式为nnunet适用格式

### 数据预处理

运行nnUNet/preprocessed.sh

## 模型训练

运行nnUNet/run.sh

## 模型验证

### 预测

运行nnUNet/test.sh

### 指标计算

运行nnUNet/dataset/nnUNet_results/Dataset137_BraTS2021/nnUNetTrainer__nnUNetPlans__3d_fullres/fold_0/metric_calculate.ipynb



