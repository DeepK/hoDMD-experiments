## Information about this repo

This repo contains the code and data to produce the results as reported in the paper titled: **EigenSent: Spectral sentence embeddings using higher-order Dynamic Mode Decomposition** accepted at **ACL 2019** as a long paper.
If you use this code in your work or experiments, please cite the paper as:

@inproceedings{eigensent,
author = {Kayal, Subhradeep and Tsatsaronis, George},
title = {EigenSent: Spectral sentence embeddings using higher-order Dynamic Mode Decomposition},
booktitle = {Proceedings of the 57th Annual Meeting of the Association for Computational Linguistics (ACL)},
year = {2019}
}

## Guide to run code

- In the main folder do: ```mkdir resources```
- Download the pretrained word embeddings from Google: ```GoogleNews-vectors-negative300.bin.gz``` and put them in the ```resources``` folder you've just created
- Go to ```sh_scripts``` and run: ```sh produce_pickled_resources.sh```
- This should read the datasets and produce lists of word embeddings, one list per sentence in the original dataset, and write it to ```data/pickled_data/<dataset_name>```
- For more information about the pickle files, read the code in ```py_files/sent2wv.py```
- Next, do ```sh runall.sh``` to produce all the necessary results written to text files in ```data/results/```
