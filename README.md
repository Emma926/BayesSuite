![BayesSuite](https://raw.githubusercontent.com/Emma926/BayesSuite/master/bayessuite.png)

# BayesSuite
A Bayesian Inference Benchmark Suite


If you find BayesSuite useful, please cite [our paper](https://yuemmawang.github.io/publications/wang-ispass2019.pdf):

```
Yu Wang, Yuhao Zhu, Glenn G. Ko, Brandon Reagen, Gu-Yeon Wei, and David Brooks.
“Demystifying Bayesian Inference Workloads.” International Symposium on 
Performance Analysis of Systems and Software (ISPASS), 2019.
```

```
@inproceedings{wang2019demystifying,
  title={Demystifying Bayesian Inference Workloads},
  author={Wang, Yu Emma and Zhu, Yuhao and Ko, Glenn G and Reagen, Brandon and Wei, Gu-Yeon and Brooks, David},
  booktitle={2019 IEEE International Symposium on Performance Analysis of Systems and Software (ISPASS)},
  pages={177--189},
  year={2019},
  organization={IEEE}
}
```

The paper profiles the computational characteristics of BayesSuite using single-core and multi-core
CPU. It also has a last level cache miss prediction model based on the model and the datasets.


## Workloads

Name     |        Model        |     Application    
-------- | ------------------- |----------------------------------------------
12cities | Poisson Regression  | Does lowering speed limits save pedestrian lives?
ad       | Logistic Regression | Advertising attribution in the movie industry
ode      | Friberg-Karlsson Semi-Mechanistic  | Solving ordinary differential equations of non-linear systems
memory   | Hierarchical Bayesian | Modeling memory retrieval in sentence comprehension
votes    | Hierarchical Gaussian Processes | Forecasting presidential votes 
tickets  | Logistic Regression | Do police officers alter the ticket writing to match departmental targets?
disease  | Logistic Regression | Measuring the continually worsening progression of Alzheimer’s disease
racial   | Hierarchical Bayesian | Testing for racial bias in vehicle searches by police
butterfly| Hierarchical Bayesian | Estimating butterfly species richness and accumulation
survival | Cormack-Jolly-Seber | Estimating animal survival probabilities

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

## Trouble Shooting
If getting publickey issues when running ``git submodule update``, you need to [generate a new SSH key and add it to the ssh-agent](https://help.github.com/en/enterprise/2.16/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and [add the new SSH key to your GitHub account](https://help.github.com/en/enterprise/2.16/user/articles/adding-a-new-ssh-key-to-your-github-account).

## Licensing
All of the example models are copyrighted by their author(s). The scripts in this repository are
under Apache License 2.0.

Yu (Emma) Wang
3/14/2019
