set -x

echo "20 newsgroups - only DMD"
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 1
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 2
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 3
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 1 2
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 1 2 3
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 1 2 3 4 5 6
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 1
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 2
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 3
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 1 2
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 1 2 3
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 1 2 3 4 5 6

echo "20 newsgroups - concatenated DMD + avg"
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 1 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 1 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 1 2 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 1 1 2 3 4 5 6 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 1 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 1 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 1 2 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p 2 1 2 3 4 5 6 -c

echo "Reuters 8 - only DMD"
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 1
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 2
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 3
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 1 2
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 1 2 3
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 1 2 3 4 5 6
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 1
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 2
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 3
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 1 2
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 1 2 3
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 1 2 3 4 5 6

echo "Reuters 8 - concatenated DMD + avg"
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 1 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 1 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 1 2 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 1 1 2 3 4 5 6 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 1 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 1 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 1 2 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p 2 1 2 3 4 5 6 -c


echo "SST 5 - only DMD"
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 1
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 2
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 3
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 1 2
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 1 2 3
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 1 2 3 4 5 6
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 1
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 2
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 3
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 1 2
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 1 2 3
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 1 2 3 4 5 6

echo "SST 5 - concatenated DMD + avg"
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 1 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 1 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 1 2 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 1 1 2 3 4 5 6 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 1 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 1 2 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 1 2 3 -c
python ../py_files/evaldmd.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p 2 1 2 3 4 5 6 -c
