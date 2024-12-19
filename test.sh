export nnUNet_raw="yourpath/nnUNet/dataset/nnUNet_raw"
export nnUNet_preprocessed="yourpath/nnUNet/dataset/nnUNet_preprocessed"
export nnUNet_results="yourpath/nnUNet/dataset/nnUNet_results"

nnUNetv2_train 137 3d_fullres 0  --val --npz
nnUNetv2_train 137 3d_fullres 1  --val --npz
nnUNetv2_train 137 3d_fullres 2  --val --npz
nnUNetv2_train 137 3d_fullres 3  --val --npz
nnUNetv2_train 137 3d_fullres 4  --val --npz