# LifeExp-by-Country
## Overview
Using R, performed statistical analysis and data visualization of life expectancies of United States, Canada, and Mexico. This also contains the plots that the R code generates (the code can be found in the Gapminder Life Expectancies.R upload)


This project performs an end-to-end exploratory data analysis (EDA) of life expectancy trends in Canada, Mexico, and the United States using the Gapminder dataset.
The workflow demonstrates core data science, data analytics, and data visualization skills in R, including:


Grouped statistical summaries (mean, median, standard deviation)
Multi-facet visualization and plot composition with ggplot2, patchwork, and gridExtra
Statistical inference using ANOVA and Tukey’s HSD
Automated export of figures for reporting
The code results in a complete suite of visualizations (density plots, boxplots, bar charts, scatterplots with trends) and statistical tests to evaluate differences in life expectancy across countries from 1957–2007.

## Skills Demonstrated
Data Wrangling & Tidy Data Principles
Filtering data by target countries
Grouping and summarizing numeric variables
Using the pipe operator (%>%) to structure readable, reproducible workflows
Creating derived datasets capturing summary statistics for use across visualizations

## Statistical Analysis
Descriptive statistics: mean, median, and standard deviation
Inferential statistics:
ANOVA to test for differences in mean life expectancy across countries
Interpretation of significance and confidence intervals

## Data Visualization
Demonstrates advanced use of ggplot2:
Density plots with overlaid mean/median lines
Boxplots annotated with descriptive statistics
Scatterplots with smoothing trends and facet wrapping
Bar plots with dodge positioning
Unified multi-plot layouts using grid.arrange(), ideal for dashboards or reports
Consistent styling (dark theme, custom labels, axis scaling)


## Project Structure

### Core packages imported:
- gapminder (data source)
- tidyverse (data manipulation + visualization)
- patchwork & gridExtra (multi-plot layouts)

### Filtered Countries of Interest:
Data was filtered to include only the following countries from North America:
- United States
- Mexico
- Canada

### Statistics Analysis:
Analyzed the following statistical parameters of the dataset.
- Means
- Medians
- Standard deviations
- ANOVA (Analysis of Variance)
- 95% Confidence Ineterval Analysis (95% CI)
- Tukey HSD was used to identify which country pairs differ significantly

### Visualization Summary and .png files exported:
The following plots and subplots were generated using R code. All visualizations are compiled using grid.arrange() into multi-panel layouts for presentation.
- Density Plot :	Compares distributions of life expectancy across countries
- Boxplot:	Visualize spread, outliers, mean and median annotations
- Scatterplot (with smoothing):	Show life expectancy trends over time (facet per country)
- Density Plot:	Compare distribution shapes with mean/median lines by country
- Bar Chart:	Displays life expectancy values by year, grouped by country

The following is an explanation of the .jpg epxports and their contents: 
- LIFE.png
- LIFE2.png
- AOV Life Expectancies
- CONF



![Link to LIFE.png](https://github.com/H12345555/LifeExp-by-Country/blob/main/LIFE.png?raw=true)

![Link to LIFE2.png](https://github.com/H12345555/LifeExp-by-Country/blob/main/LIFE2.png?raw=true)

![Link to AOV Life Expectancies.png](https://github.com/H12345555/LifeExp-by-Country/blob/main/AOV%20Life%20Expectancies.png?raw=true)

![Link to CONF.png](https://github.com/H12345555/LifeExp-by-Country/blob/main/CONF.png?raw=true)


