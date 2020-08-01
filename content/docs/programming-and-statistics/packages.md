---
weight: 5
title: "Useful packages"
bookToC: false
---

# R Packages

{{< details title="Basic utilities" open=false >}}

| Package                                                   | Description                                      | By             |
| :-------------------------------------------------------- | :----------------------------------------------- | :------------- |
| [`dplyr`](https://github.com/tidyverse/dplyr)             | A grammar of data manipulation                   | tidyverse      |
| [`tidyr`](https://github.com/tidyverse/tidyr)             | Tidy data with spread and gather functions       | tidyverse      |
| [`purrr`](https://github.com/tidyverse/purrr)             | A functional programming toolkit                 | tidyverse      |
| [`plyr`](https://github.com/hadley/plyr)                  | `llply()` and `ldply()` as for-loop replacements | Hadley Wickham |
| [`tibble`](https://github.com/tidyverse/tibble/)          | Modern reimagining of the `data.frame`           | tidyverse      |
| [`data.table`](https://github.com/Rdatatable/data.table)  | Alternative data frame. Quicker for big datasets | Tyson Barrett  |
| [`recipes`](https://github.com/tidymodels/recipes)        | Preprocessing pipelines                          | tidyverse      |
| [`groupdata2`](https://github.com/LudvigOlsen/groupdata2) | Create groups, folds and partitions              | Ludvig Olsen   |
| [`rearrr`](https://github.com/LudvigOlsen/rearrr)         | Transform and *rearrrange* data                  | Ludvig Olsen   |

{{< /details >}}

{{< details title="Text manipulation" open=false >}}

| Package                                              | Description                   | By                                                                          |
| :--------------------------------------------------- | :---------------------------- | :-------------------------------------------------------------------------- |
| [`stringr`](https://github.com/tidyverse/stringr)    | String manipulation           | tidyverse                                                                   |
| [`tidytext`](https://github.com/juliasilge/tidytext) | Tidy text analysis            | Julia Silge, David Robinson                                                 |
| [`quanteda`](https://github.com/quanteda/quanteda)   | Quantitative analysis of text | quanteda                                                                    |
| [`spacyr`](https://github.com/quanteda/spacyr)       | spaCy API for R               | quanteda                                                                    |
| [`sentida`](https://github.com/Guscode/Sentida)      | Sentiment analysis            | Lars Kjartan Bacher Svendsen, Jacob Aarup Dalsgaard, Gustav Aarup Lauridsen |

{{< /details >}}

{{< details title="Modeling" open=false >}}

| Package                                                   | Description                                | By            |
| :-------------------------------------------------------- | :----------------------------------------- | :------------ |
| [`lme4`](https://github.com/lme4/lme4)                    | Linear mixed-effects models                | Douglas Bates, et al. |
| [`brms`](https://github.com/paul-buerkner/brms)           | Bayesian modeling                          | Paul-Christian Bürkner |
| [`cvms`](https://github.com/LudvigOlsen/cvms)             | Evaluation and cross-validation of models  | Ludvig Olsen  |
| [`parsnip`](https://github.com/tidymodels/parsnip)        | Tidy, unified interface to model functions | tidymodels    |
| [`superlearner`](https://github.com/ecpolley/SuperLearner)| Ensemble methods                           | Eric Polley, et al. |
| [`keras`](https://keras.rstudio.com/)                     | Deep learning framework                    | Daniel Falbel, et al. |
| [`tensorflow`](https://tensorflow.rstudio.com/)           | Deep learning framework                    | Daniel Falbel, et al. |
| [`mlr3`](https://github.com/mlr-org/mlr3/)                | Object-oriented machine learning framework | Michel Lang, et al. |
| [`e1071`](https://cran.r-project.org/package=e1071)       | Different model functions                  | David Meyer, et al. |
| [`performance`](https://github.com/easystats/performance) | Evaluating performance of models           | easystats     |
| [`yardstick`](https://github.com/tidymodels/yardstick/)   | Evaluation metrics                         | tidymodels    |
| [`insight`](https://github.com/easystats/insight)         | Extract model attributes                   | easystats     |
| [`MuMIn`](https://cran.r-project.org/package=MuMIn)       | Model object metrics                       | Kamil Bartoń  |

{{< /details >}}

{{< details title="Visualization" open=false >}}

| Package                                               | Description              | By                  |
| :---------------------------------------------------- | :----------------------- | :------------------ |
| [`ggplot2`](https://github.com/tidyverse/ggplot2)     | Make plots               | tidyverse           |
| [`patchwork`](https://github.com/thomasp85/patchwork) | Combine separate ggplots | Thomas Lin Pedersen |
| [`ggforce`](https://github.com/thomasp85/ggforce)     | Accelerating ggplot2     | Thomas Lin Pedersen |
| [`see`](https://github.com/easystats/see)             | Visualisation toolbox    | easystats           |
| [`ggimage`](https://github.com/GuangchuangYu/ggimage) | Add images to ggplots    | Guangchuang YU      |
| [`mathart`](https://github.com/marcusvolz/mathart)    | Create mathematical art  | Marcus Volz         |

{{< /details >}}

{{< details title="R development" open=false >}}

| Package                                           | Description                          | By             |
| :------------------------------------------------ | :----------------------------------- | :------------- |
| [`usethis`](https://github.com/r-lib/usethis)     | Automate package and project setup tasks | Hadley Wickham, et al. |
| [`testthat`](https://testthat.r-lib.org/)         | Framework for unit-testing functions | Hadley Wickham |
| [`xpectr`](https://github.com/LudvigOlsen/xpectr) | Generate `testthat` tests            | Ludvig Olsen   |
| [`checkmate`](https://github.com/mllg/checkmate)  | Fast input checks in functions       | Michel Lang    |

{{< /details >}}


# Python Packages

{{< details title="Basic utilities" open=false >}}

| Package                                             | Description                                      | By             |
| :-------------------------------------------------- | :----------------------------------------------- | :------------- |
| [`numpy`](https://numpy.org/)                       | Numerical computing (arrays and math operations) | Travis Oliphant, et al. |
| [`pandas`](https://pandas.pydata.org/docs/)         | Data frames                                      | Wes McKinney, et al. |
| [`scipy`](https://www.scipy.org)                    | Scientific computing                             | Pauli Virtanen, et al. |

{{< /details >}}

{{< details title="Modeling" open=false >}}

| Package                                                   | Description                                | By            |
| :-------------------------------------------------------- | :----------------------------------------- | :------------ |
| [scikit-learn (`sklearn`)](https://scikit-learn.org/stable/) | Everything in machine learning          | Pedregosa, F., et al. |
| [`tensorflow`](https://www.tensorflow.org/)               | Deep learning framework                    | Martín Abadi, et al. |
| [`pytorch`](https://pytorch.org/)                         | Deep learning framework                    | Adam Paszke, et al. |
| [`jax`](https://github.com/google/jax/)                   | High-performance machine learning research | James Bradbury, et al. |
| [`PyStan`](https://pystan.readthedocs.io/en/latest/)      | Bayesian inference (*stan* interface)      | PyStan |
| [`PyMC3`](https://github.com/pymc-devs/pymc3)  | Bayesian statistical modeling and Probabilistic Machine Learning | Salvatier J., et al. |

{{< /details >}}

{{< details title="Neuro" open=false >}}

| Package                                               | Description                                | By            |
| :---------------------------------------------------- | :----------------------------------------- | :------------ |
| [`mne`](https://github.com/mne-tools/mne-python)      | M/EEG analysis and visualization           | Alexandre Gramfort, et al. |
| [`nipy`](http://nipy.org/nipy/)                       | Neuroimaging tools                         | NiPy |
| [`nitime`](http://nipy.org/nitime/)                   | Timeseries analysis for neuroscience data  | NiPy |
| [`nilearn`](http://nilearn.github.io/)                | scikit-learn for neuroimaging data         | NiPy |
| [`nibabel`](https://nipy.org/nibabel/)      | Read / write common neuroimaging file formats        | NiPy |
| [`nilearn`](https://github.com/nipy/nipype)           | Workflows and interfaces for neuroimaging packages | NiPy |
| [`PySurfer`](https://github.com/nipy/PySurfer)        | Neuroimaging visualization | NiPy |
| [`PyMVPA`](http://www.pymvpa.org/)                    | Multivariate pattern analysis              | Michael Hanke, et al. |
| [`fMRIPrep`](https://fmriprep.org/en/stable/)         | Robust Preprocessing Pipeline for fMRI Data | Oscar Esteban, et al. |

{{< /details >}}

{{< details title="NLP" open=false >}}

| Package                                               | Description                                | By            |
| :---------------------------------------------------- | :----------------------------------------- | :------------ |
| [`nlpaug`](https://github.com/makcedward/nlpaug)      | Text and audio augmentation                | Edward Ma |

{{< /details >}}

