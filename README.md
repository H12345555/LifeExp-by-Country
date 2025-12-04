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
- Data Wrangling & Tidy Data Principles
- Filtering data by target countries
- Grouping and summarizing numeric variables
- Using the pipe operator (%>%) to structure readable, reproducible workflows
- Creating derived datasets capturing summary statistics for use across visualizations


### Data Visualization
- Demonstrates advanced use of ggplot2:
- Density plots with overlaid mean/median lines
- Boxplots annotated with descriptive statistics
- Scatterplots with smoothing trends and facet wrapping
- Bar plots with dodge positioning
- Unified multi-plot layouts using grid.arrange(), ideal for dashboards or reports
- Consistent styling (dark theme, custom labels, axis scaling)


## Project Structure

### Core packages imported:
- gapminder (data source)
- tidyverse (data manipulation + visualization)
- patchwork (multi-plot layouts)
- gridExtra (multi-plot layouts)

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
- ANOVA/AOV (Analysis of Variance)
- 95% Confidence Interval Analysis (95% CI)
- Tukey HSD was used to identify which country pairs differ significantly
  

### Visualization Summary and .png files exported:
The following plots and subplots were generated using R code. All visualizations are compiled using grid.arrange() into multi-panel layouts for presentation.
- <u>**Density Plot:**</u>	Compares distributions of life expectancy across countries
- <u>**Boxplot:**</u>	Visualize spread, outliers, mean and median annotations
- <u>**Scatterplot (with smoothing):**</u>	Show life expectancy trends over time (facet per country)
- <u>**Density Plot:**</u> Compare distribution shapes with mean/median lines by country
- <u>**Bar Chart:**</u>	Displays life expectancy values by year, grouped by country

The following is an explanation of the .jpg epxports and their contents: 
- LIFE.png:
    - <u>**Top left:**</u>
        Contians 3 subplots (one for each country) showing the escalations in the mean life expectancies over time for each country.
    - <u>**Top right:**</u>
        A plot comparing the mean and median life exectancy values for each country and where they fall on the probability distribution for life expectancy.
    - <u>**Bottom left:**</u>
        Mean life expecatncies for each country vizualized in a column cahrt format for better comparison across countries for particular years.
    - <u>**Bottom right:**</u>
        Box plot showing where the mean and median life expectancies fall for each country. The box plot is used to visually convey what data would be considered statistical anomalies (the left edge of each box is the 25th percentile for life expectancy, and the right edge represents the 75th percentile)
- LIFE2.png:
    - Density plot showing a visual comparison of the probability distributions for each country overlaid on top of each other.
- AOV Life Expectancies.png
    - Shows the results of the Tukey comparison and ANOVA.
- CONF.png
    - Shows the plot representing the % differences in means of each country, within a 95% CI



