# BayesSuite
A Bayesian Inference Benchmark Suite

If you find BayesSuite useful, please cite our paper

Yu Wang, Yuhao Zhu, Glenn G. Ko, Brandon Reagen, Gu-Yeon Wei, and David Brooks. “Demystifying Bayesian Inference Workloads.” International Symposium on Performance Analysis of Systems and Software (ISPASS).

## Getting Started
1. After git clone this repo, please run
```
git submodule init
git submodule update
```

2. To create BayesSuite and generate run scripts
```
cd scripts
bash start.sh
```

3. To install R packages
```
Rscript setup.R
```

4. To test run BayesSuite
```
python test.py
```

## Trouble Shooting
If getting ``publickey'' issues when running ``git submodule update'', you need to [generate a new SSH key and add it to the ssh-agent](https://help.github.com/en/enterprise/2.16/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and [add the new SSH key to your GitHub account](https://help.github.com/en/enterprise/2.16/user/articles/adding-a-new-ssh-key-to-your-github-account).

Yu (Emma) Wang
3/14/2019
