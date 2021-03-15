# Analysis for 'Heliconiini butterflies can learn time-dependent reward associations'

This is the GitHub repository containing the data and code for the analysis conducted in the manuscript ‘Heliconiini butterflies can learn time-dependent reward associations’. You can find a link to the site which walks through the analysis described in the main text [here](https://wyatt-toure.github.io/butterfly-learning). This repository contains all the code to produce the analyses and figures in the manuscript. The code to produce the supplementary results and figures and in the ESM-code folder. The code for the hecale analysis is located in 02-hecale-analysis.Rmd and the code for the dryas analysis is located in the 03-dryas-analysis.Rmd

## Website

https://wyatt-toure.github.io/butterfly-learning

## Metadata 

Data: heliconiini-data.csv

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
