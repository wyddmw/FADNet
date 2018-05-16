# dispnetCSR with all 3x3 kernels + clean data
# python main.py --cuda --outf ./models/cleandata-models-dispCSR-ks --lr 0.001 --logFile cleandata-train-dispCSR-ks.log --showFreq 1 --devices 0,1,2,3 --trainlist ./lists/SHAOHUAI_CLEAN_FlyingThings3D_release_TRAIN.list --vallist ./lists/SHAOHUAI_CLEAN_FlyingThings3D_release_TEST.list --endEpoch 100
# python main.py --cuda --outf ./models/cleandata-models-dispCSR-ks --lr 1e-5 --logFile cleandata-train-dispCSR-ks-cont2.log --showFreq 1 --devices 0,1,2,3 --trainlist ./lists/SHAOHUAI_CLEAN_FlyingThings3D_release_TRAIN.list --vallist ./lists/SHAOHUAI_CLEAN_FlyingThings3D_release_TEST.list --model ./models/cleandata-models-dispCSR-ks/model_best.pth --endEpoch 50

# dispnetCSR best model + KITTI
python main.py --cuda --outf ./models/kitti-models-dispCSR --lr 0.001 --logFile kitti-train-dispCSR.log --showFreq 1 --devices 0,1,2,3 --trainlist ./lists/KITTI_TRAIN.list --vallist ./lists/KITTI_TEST.list --endEpoch 100 --model ./models/cleandata-models-dispCSRes-exp/model_best.pth --endEpoch 100 --devices 0,1
