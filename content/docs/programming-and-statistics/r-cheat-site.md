---
weight: 1
title: "R cheat site"
bookToC: false
---

# The ultimate R cheat site

Please contribute additional tasks and solutions.

{{< details title="Read/write files" open=false >}}
| File format          | Package | Function(s)      | Tutorial |
| :------------------- | :------ | :--------------- | :------- |
| xls(x)        | `readxl` | `read_excel()` | [Overview](https://readxl.tidyverse.org/index.html) |
{{< /details >}}

{{< details title="Transforming data frames" open=false >}}

| Task                 | Package | Function(s)                                                                   | Tutorial |
| :------------------- | :------ | :---------------------------------------------------------------------------- | :------- |
| Wide-to-long         | `tidyr` | `gather()`, `pivot_longer()`                                                  |          |
| Long-to-wide         | `tidyr` | `spread()`, `pivot_wider()`                                                   |          |
| Summarize columns    | `dplyr` | `summarize()`, `count()`                                                      |          |
| Order data frame     | `base`  | `order()`                                                                     |          |
|                      | `dplyr` | `arrange()`                                                                   |          |
| Summarize data frame | `skimr` | `skim()`                                                                      |          |
|                      | `base`  | `str()`                                                                       |          |
| Merge data frames    | `dplyr` | `bind_cols()`, `bind_rows()`, `left_join()`, `right_join()` + other *_join()s |          |
| Select rows          | `base`  | `df[..., ]`                                                                   |          |
|                      | `dplyr` | `filter()`                                                                    |          |
| Select columns       | `base`  | `df[, ...]`                                                                   |          |
|                      | `dplyr` | `select()`                                                                    |          |

{{< /details >}}

{{< details title="Model functions" open=false >}}

| Task                    | Package        | Function(s)         | Tutorial |
| :---------------------- | :------------- | :------------------ | :------- |
| Linear mixed effects    | `lme4`         | `lmer()`, `glmer()` |          |
| Bayesian modeling       | `brms`         | `brm()`             |          |
| Support-vector machines | `e1071`        | `svm()`             |          |
|                         | `parsnip`      | `svm_poly()`, `svm_rbf()` |    |
| Naïve Bayes             | `e1071`        | `naiveBayes()`      |          |
|                         | `parsnip`/`discrim` |`naive_Bayes()` |          |
| Random Forest           | `randomForest` | `randomForest()`    |          |
|                         | `parsnip`      | `rand_forest()`     |          |
| Neural network          | `keras`        | Framework           |          |
|                         | `tensorflow`   | Framework           |          |
|                         | `nnet`         | `nnet()`,`multinom()` (note: single-hidden-layer only)|          |
| GAMLSS                  | `gamlss`       | `gamlss()`          |          |
| LQM(M)                  | `lqmm`         | `lqm()`, `lqmm()`   |          |
| Nearest Neighbour       | `parsnip`      | `nearest_neighbor()`|          |

{{< /details >}}

{{< details title="Model evaluation" open=false >}}

| Task | Package | Function(s)  | Tutorial  |
| :--- | :------ | :----------- | :-------- |
| Evaluate predictions    | `cvms`       | `evaluate()` - regression and classification. Also: ID-level evaluation.   | [ID evaluation](http://ludvigolsen.dk/cvms/id_evaluations/)  |
|      | `yardstick`      | TODO |       |
| Create confusion matrix | `cvms`       | `evaluate()` or `confusion_matrix()` - see also `plot_confusion_matrix()`  | [Create confusion matrix](http://ludvigolsen.dk/cvms/create_confusion_matrix/)  |
|      | `yardstick`      | `conf_mat()` |               |
|      | `caret`          | `confusionMatrix()`  |       |
| Cross-validation        | `cvms` + `groupdata2` | `cross_validate()` for `lm()`/`lmer()`/`glm()`/`glmer()` or `cross_validate_fn()` for most others | [Cross-validate custom model functions](http://ludvigolsen.dk/cvms/cross_validate_custom_model_function/) |
|      | `caret`          | `trainControl`? TODO  |      |
|      | `tidymodels`     | TODO         |               |

{{< /details >}}

{{< details title="Plotting with ggplot2" open=false >}}

| Task  | Package       | Function(s) | Tutorial  |
| :---- | :------------ | :---------- | :-------- |
| Combine ggplots   | `patchwork` | `+`, `/`, `|` |  |
| Add images        | `ggimage`   | `geom_image()`, `geom_bgimage()`, `geom_icon()` |   |
| Add pokemons      | `ggimage`   | `geom_pokemon()` |   |
| Plot confusion matrix | `cvms`  | `plot_confusion_matrix()` | [Create confusion matrix](http://ludvigolsen.dk/cvms/create_confusion_matrix/) |

{{< /details >}}

