set -x

if [ ! -d ../data/results ]; then
  mkdir -p ../data/results;
fi

sh powermeans.sh >> ../data/results/powermeans.txt
sh pca.sh >> ../data/results/pca.txt
sh dct.sh >> ../data/results/dct.txt
sh dmd.sh >> ../data/results/dmd.txt
sh elmo.sh >> ../data/results/elmo.txt
sh bert.sh >> ../data/results/bert.txt
