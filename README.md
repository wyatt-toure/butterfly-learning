## Summary

This is the GitHub repository containing the data and code for the analysis conducted in the manuscript ‘Heliconiini butterflies can learn time-dependent reward associations’. 

You can find a site which walks through the analysis described in the main text at https://wyatt-toure.github.io/butterfly-learning/. Additionally, this repository contains all the code to produce the analyses and figures in the manuscript. 

The code to produce the supplementary results and figures are in the [ESM-code folder](https://github.com/wyatt-toure/butterfly-learning/tree/main/ESM-code). 

The code for the *Heliconius hecale* analysis is located in the file [01-hecale-analysis.Rmd](https://github.com/wyatt-toure/butterfly-learning/blob/main/01-hecale-analysis.Rmd)

The code for the *Dryas iulia* analysis is located in the file [02-dryas-analysis.Rmd](https://github.com/wyatt-toure/butterfly-learning/blob/main/02-dryas-analysis.Rmd)

Below I additionally present the [metadata](#metadata) for the dataset and the [packages required](#required-tools-and-references) to conduct the analyses and construct the as well as their versions, and citations. 

## Website

https://wyatt-toure.github.io/butterfly-learning

## Metadata 

Data: [heliconiini-data.csv](https://github.com/wyatt-toure/butterfly-learning/blob/main/heliconiini-data.csv)

| Variable                         | Description                                                                                                                          |
|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| id                               | The individual id of the butterfly                                                                                                   |
| sex                              | The sex of the individual butterfly                                                                                                  |
| cage                             | The identity of the cage in which the butterfly was trained and tested                                                               |
| time.of.day                      | The time of day at which the data was collected                                                                                      |
| n.correct.training               | The number of correct choices made throughout all of training                                                                        |
| n.incorrect.training             | The number of incorrect choices made throughout all of training                                                                      |
| session.reward.colour            | The colour that is, or would have been, rewarding for that time period                                                               |
| n.morning.colour.test            | The number of choices made for the colour which is rewarding in the morning during the final test                                    |
| n.afternoon.colour.test          | The number of choices made for the colour which is rewarding in the afternoon during the final test                                  |
| final.presentation               | The order of the final presentation                                                                                                  |
| n.correct.training.last.2        | The number of correct choices made in the last 2 days of training                                                                    |
| n.incorrect.training.last.2      | The number of incorrect choices made in the last 2 days of training                                                                  |
| prop.correct.training.last.2     | The proportion of correct choices made in the last 2 days of training                                                                |
| n.morning.colour.initial         | The number of choices made for the colour which will become rewarding in the morning during initial, naive tests                     |
| n.afternoon.colour.initial       | The number of choices made for the colour which will become rewarding in the afternoon during initial, naive tests                   |
| species                          | The species of the individual                                                                                                        |
| criterion                        | Whether the individual passed or failed the training criterion                                                                       |
| n.morning.colour.training        | The number of choices made for the colour which is rewarding in the morning during training                                          |
| n.afternoon.colour.training      | The number of choices made for the colour which is rewarding in the afternoon during training                                        |
| prop.morning.reward.colour       | The proportion of choices for the colour which is rewarding in the morning made throughout all of training                           |
| shift.in.prop.morning.colour     | The shift in proportional preference for the colour rewarding in the morning from the morning to the afternoon                       |
| abs.shift.in.prop.morning.colour | The absolute value of the shift in proportional preference for the colour rewarding in the morning from the morning to the afternoon |
| colour.training.scheme           | The time of day at which particular colours were rewarding                                                                           |


## Required tools and references
<div id="tools-used-and-references" class="section level1">
<table>
<colgroup>
<col width="4%" />
<col width="3%" />
<col width="91%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Package</th>
<th align="left">Version</th>
<th align="left">Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">broom</td>
<td align="left">0.5.5</td>
<td align="left">David Robinson and Alex Hayes (2020). broom: Convert Statistical Analysis Objects into Tidy Tibbles. R package version 0.5.5. <a href="https://CRAN.R-project.org/package=broom" class="uri">https://CRAN.R-project.org/package=broom</a></td>
</tr>
<tr class="even">
<td align="left">broom.mixed</td>
<td align="left">0.2.6</td>
<td align="left">Ben Bolker and David Robinson (2020). broom.mixed: Tidying Methods for Mixed Models. R package version 0.2.6. <a href="https://CRAN.R-project.org/package=broom.mixed" class="uri">https://CRAN.R-project.org/package=broom.mixed</a></td>
</tr>
<tr class="odd">
<td align="left">carData</td>
<td align="left">3.0.3</td>
<td align="left">John Fox, Sanford Weisberg and Brad Price (2019). carData: Companion to Applied Regression Data Sets. R package version 3.0-3. <a href="https://CRAN.R-project.org/package=carData" class="uri">https://CRAN.R-project.org/package=carData</a></td>
</tr>
<tr class="even">
<td align="left">cowplot</td>
<td align="left">1.0.0</td>
<td align="left">Claus O. Wilke (2019). cowplot: Streamlined Plot Theme and Plot Annotations for ‘ggplot2.’ R package version 1.0.0. <a href="https://CRAN.R-project.org/package=cowplot" class="uri">https://CRAN.R-project.org/package=cowplot</a></td>
</tr>
<tr class="odd">
<td align="left">DHARMa</td>
<td align="left">0.3.3.0</td>
<td align="left">Florian Hartig (2020). DHARMa: Residual Diagnostics for Hierarchical (Multi-Level / Mixed) Regression Models. R package version 0.3.3.0. <a href="http://florianhartig.github.io/DHARMa/" class="uri">http://florianhartig.github.io/DHARMa/</a></td>
</tr>
<tr class="even">
<td align="left">dplyr</td>
<td align="left">1.0.3</td>
<td align="left">Hadley Wickham, Romain François, Lionel Henry and Kirill Müller (2021). dplyr: A Grammar of Data Manipulation. R package version 1.0.3. <a href="https://CRAN.R-project.org/package=dplyr" class="uri">https://CRAN.R-project.org/package=dplyr</a></td>
</tr>
<tr class="odd">
<td align="left">effects</td>
<td align="left">4.1.4</td>
<td align="left">John Fox and Sanford Weisberg (2019). An R Companion to Applied Regression, 3rd Edition. Thousand Oaks, CA <a href="http://tinyurl.com/carbook" class="uri">http://tinyurl.com/carbook</a></td>
</tr>
<tr class="even">
<td align="left">ggplot2</td>
<td align="left">3.3.3</td>
<td align="left">H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2016.</td>
</tr>
<tr class="odd">
<td align="left">ggpubr</td>
<td align="left">0.2.5</td>
<td align="left">Alboukadel Kassambara (2020). ggpubr: ‘ggplot2’ Based Publication Ready Plots. R package version 0.2.5. <a href="https://CRAN.R-project.org/package=ggpubr" class="uri">https://CRAN.R-project.org/package=ggpubr</a></td>
</tr>
<tr class="even">
<td align="left">lme4</td>
<td align="left">1.1.21</td>
<td align="left">Douglas Bates, Martin Maechler, Ben Bolker, Steve Walker (2015). Fitting Linear Mixed-Effects Models Using lme4. Journal of Statistical Software, 67(1), 1-48. <a href="doi:10.18637/jss.v067.i01" class="uri">doi:10.18637/jss.v067.i01</a>.</td>
</tr>
<tr class="odd">
<td align="left">lmerTest</td>
<td align="left">3.1.1</td>
<td align="left">Kuznetsova A, Brockhoff PB, Christensen RHB (2017). “lmerTest Package:Tests in Linear Mixed Effects Models.” <em>Journal of StatisticalSoftware</em>, <em>82</em>(13), 1-26. doi: 10.18637/jss.v082.i13 (URL:<a href="https://doi.org/10.18637/jss.v082.i13" class="uri">https://doi.org/10.18637/jss.v082.i13</a>).</td>
</tr>
<tr class="even">
<td align="left">magrittr</td>
<td align="left">2.0.1</td>
<td align="left">Stefan Milton Bache and Hadley Wickham (2020). magrittr: A Forward-Pipe Operator for R. R package version 2.0.1. <a href="https://CRAN.R-project.org/package=magrittr" class="uri">https://CRAN.R-project.org/package=magrittr</a></td>
</tr>
<tr class="odd">
<td align="left">Matrix</td>
<td align="left">1.2.18</td>
<td align="left">Douglas Bates and Martin Maechler (2019). Matrix: Sparse and Dense Matrix Classes and Methods. R package version 1.2-18. <a href="https://CRAN.R-project.org/package=Matrix" class="uri">https://CRAN.R-project.org/package=Matrix</a></td>
</tr>
<tr class="even">
<td align="left">psych</td>
<td align="left">1.9.12.31</td>
<td align="left">Revelle, W. (2019) psych: Procedures for Personality and Psychological Research, Northwestern University, Evanston, Illinois, USA, <a href="https://CRAN.R-project.org/package=psych" class="uri">https://CRAN.R-project.org/package=psych</a> Version = 1.9.12.</td>
</tr>
<tr class="odd">
<td align="left">R</td>
<td align="left">3.6.2</td>
<td align="left">R Core Team (2019). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL <a href="https://www.R-project.org/" class="uri">https://www.R-project.org/</a>.</td>
</tr>
<tr class="even">
<td align="left">report</td>
<td align="left">0.2.0</td>
<td align="left">Makowski, D., Lüdecke, D., &amp; Ben-Shachar, M.S. (2020). Automated reporting as a practical tool to improve reproducibility and methodological best practices adoption. CRAN. Available from <a href="https://github.com/easystats/report" class="uri">https://github.com/easystats/report</a>. doi: .</td>
</tr>
<tr class="odd">
<td align="left">tidyr</td>
<td align="left">1.0.2</td>
<td align="left">Hadley Wickham and Lionel Henry (2020). tidyr: Tidy Messy Data. R package version 1.0.2. <a href="https://CRAN.R-project.org/package=tidyr" class="uri">https://CRAN.R-project.org/package=tidyr</a></td>
</tr>
</tbody>
</table>

</div>