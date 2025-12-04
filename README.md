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

Reproducible Workflow
Programmatically generating and saving figures as .png files
Modular code organization enabling easy updates or parameter changes
Clean labeling and theming for professional-quality visual outputs

Project Structure
1. Load Libraries

Imports core packages:

gapminder (data source)

tidyverse (data manipulation + visualization)

patchwork & gridExtra (multi-plot layouts)

2. Filter Countries of Interest

Extracts data for:

United States

Mexico

Canada

3. Calculate Summary Statistics

Creates separate dataframes for:

Means

Medians

Standard deviations

These are reused across multiple plots for annotations and vertical reference lines.

4. Visualizations

Generated plots include:

Plot	Purpose
Density Plot	Compare distributions of life expectancy across countries
Boxplot	Visualize spread, outliers, mean and median annotations
Scatterplot (with smoothing)	Show life expectancy trends over time (facet per country)
Density Plot (Faceted)	Compare distribution shapes with mean/median lines by country
Bar Chart	Display life expectancy values by year

All visualizations are compiled using grid.arrange() into multi-panel layouts for presentation.

5. Statistical Testing

Runs:

ANOVA on life expectancy ~ country

Tukey HSD to identify which country pairs differ significantly

Saves plots of the confidence intervals for interpretation

6. Export

Saves final composite figures as:

LIFE.png

LIFE2.png

Ready for use in reports, dashboards, or presentations.



![Link to LIFE.png](https://github.com/H12345555/LifeExp-by-Country/blob/main/LIFE.png?raw=true)

![Link to LIFE2.png](https://github.com/H12345555/LifeExp-by-Country/blob/main/LIFE2.png?raw=true)

![Link to AOV Life Expectancies.png](https://github.com/H12345555/LifeExp-by-Country/blob/main/AOV%20Life%20Expectancies.png?raw=true)

![Link to CONF.png](https://github.com/H12345555/LifeExp-by-Country/blob/main/CONF.png?raw=true)


