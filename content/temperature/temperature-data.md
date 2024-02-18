---
title: Temperature Data
author: ''
date: '2020-04-23'
slug: temperature-data
type: norender
order: 2
categories: 
  - research
tags: 
  - research
  - temperature
  - FGN
  - R
  - open data
---

The goal of this section is to describe the data used in the [Temperature Fluctuation paper](https://rss.onlinelibrary.wiley.com/doi/full/10.1111/rssa.12557) and how these data are organized. All the data are available in the [tempFGN repository](https://github.com/vanlog/tempFGN), and their organization strongly depend from the aim of the analysis that we have carried out.

Since the goal of our work was to study the historical variations of temperature fluctuations, we needed long temperatures time series, possibly for several weather station.
We found a great solution in the data collected by Sigmund H. Moen, co-author of the paper and creator of the web page [www.rimfrost.no](www.rimfrost.no), where most of the records are freely available.

The data consist in a big amount of temperatures time series, certified by NASA, for more than 100 countries, giving a total of 1258 weather stations. The time series are available as yearly, monthly and even three-times-a-day observations, and the length of the time series may vary greatly from station to station: while some of them are less than ten years long, the longer time series, from the city of Upssala in Sweden, is 290 years long, with monthly data from 1722 to 2012, at the time were the data were collected.

The aim of our study was to establish if a Gaussian and self-similar model might be applied to the temperatures fluctuations. We decided to test this hypothesis on all the time series which met a list of selection criteria based on length and cleanness of the records. Details on the selection procedure are described in [Appendix F](/temperature/appendix-f).

Furhtermore, in order to test the same hypothesis on a two millenia recostructed time series, we recurred to temperature data recostructed by [Moberg, et al.](https://www.nature.com/articles/nature03265) (Nature, 2005).

The /data folder in the fgnTemp repository contains all the data that were, in various measures, used to produce this paper.

-   The **original data**, as collected from the Rimfrost system, are available in the /raw folder. It contains 1260 files, one for each collected time series.
-   The **time series selected** and used in our analysis are stored in the /final folder. It contains a subset of 96 of the 1260 files, selected because they meet criteria of lenght and data quality as described in Appendix F.
-   The **Moberg reconstructed data** are available in the /moberg folder.

#### Temperature time series data structure

Each time series is collected in a separate .txt file, usually named with the Norwegian name of the weather station. There are no column names, and the missing data are usually recorded with the string 99 (but several exceptions are present). Each file is structured as follow:

-   Column 1: Year
-   Columns 2-13: Monthly temperatures in that year, from January to December
-   Column 14: Average annual temperature, measured as mean of the monthly temperarures for that year

As an example, these are the first six rows of the Paris.txt file.

<embed src="/img/temperature/Paris_head.png" width="70%" />

#### /raw folder

The /raw folder contains 101 subfolders named with the English or the Norwegian name of the countries included in the Rimfrost system.
Each country folder contains the temperature time series for each weather station included in the Rimfrost system.

#### /final folder

Through the selection procedure described in Appendix F we selected a subset of 96 time series, which satisfy quality criteria as adequate length in years, lack of anomalies, reduced presence of missing records.  
All the selected time series are available in the /final folder. All the names (country and stations) have been translated to English.

#### Moberg data

Temperature records reconstructed by [Moberg, et al.](https://www.nature.com/articles/nature03265) are available in the /moberg folder