# LifeExp-by-Country
## Overview
Using R, performed statistical analysis and data visualization of life expectancies of United States, Canada, and Mexico. This also contains the plots that the R code generates (the code can be found in the Gapminder Life Expectancies.R upload)


This project performs an end-to-end exploratory data analysis (EDA) of life expectancy trends in Canada, Mexico, and the United States using the Gapminder dataset.
The workflow demonstrates core data science, data analytics, and data visualization skills in R, including grouped statistical summaries (mean, median, standard deviation), multi-faceted visualization and plot composition with multiple libraries (ggplot2, tidyverse, patchwork, and gridExtra), statistical interference, and more. The code results in a complete suite of visualizations (density plots, boxplots, bar charts, scatterplots with trends) and statistical tests to evaluate differences in life expectancies across countries from 1957–2007. <br><br>

## Skills Demonstrated 
### Data Wrangling & Tidy Data Principles
- Filtering data by target countries
- Grouping and summarizing numeric variables
- Using the pipe operator (%>%) to structure readable, reproducible workflows
- Creating derived datasets capturing summary statistics for use across visualizations

### Statistical Analysis
- Descriptive statistics:<br>
   - mean, median, and standard deviation
- Inferential statistics:<br>
   - ANOVA to test for differences in mean life expectancy across countries
   - TukeyHSD post-hoc comparisons
- Interpretation of significance and confidence intervals<br>

### Reproducible Workflow
- Programmatically generating and saving figures as .png files
- Modular code organization enabling easy updates or parameter changes
- Clean labeling and theming for professional-quality visual outputs<br>

### Data Visualization
- Demonstrates advanced use of ggplot2:
- Density plots with overlaid mean/median lines
- Boxplots annotated with descriptive statistics
- Scatterplots with smoothing trends and facet wrapping
- Bar plots with dodge positioning
- Unified multi-plot layouts using grid.arrange(), ideal for dashboards or reports
- Consistent styling (dark theme, custom labels, axis scaling)<br><br>


## Project Structure

### Core packages imported:
- gapminder (data source)
- tidyverse (data manipulation + visualization)
- patchwork (multi-plot layouts)
- gridExtra (multi-plot layouts)<br>

### Filtered Countries of Interest:
Data was filtered to include only the following countries from North America:
- United States
- Mexico
- Canada<br>

### Statistics Analysis:
Analyzed the following statistical parameters of the dataset:
- Means
- Medians
- Standard deviations
- ANOVA/AOV (Analysis of Variance)
- 95% Confidence Interval Analysis (95% CI)
- Tukey HSD was used to identify which country pairs differ significantly<br>
  

### Visualization Summary and .png files exported:
All visualizations are compiled using grid.arrange() into multi-panel layouts for presentation. Plots & subplots were also saved and exported as .png files, which can also be viewed in this git repository.
- <u>**Density Plot:**</u><br>
    - Compares distributions of life expectancy across countries
- <u>**Boxplot:**</u><br>
    - Visualize spread, outliers, mean and median annotations
- <u>**Scatterplot (with smoothing):**</u><br>
    - Show life expectancy trends over time (facet per country)
- <u>**Density Plot:**</u><br>
    - Compare distribution shapes with mean/median lines by country
- <u>**Bar Chart:**</u><br>
    - Displays life expectancy values by year, grouped by country
- <u>**LIFE.png:**</u><br>
    - **Top left:**<br>
        Contians 3 subplots (one for each country) showing the escalations in the mean life expectancies over time for each country.
    - **Top right:**<br>
        A plot comparing the mean and median life exectancy values for each country and where they fall on the probability distribution for life expectancy.
    - **Bottom left:**<br>
        Mean life expecatncies for each country vizualized in a column cahrt format for better comparison across countries for particular years.
    - **Bottom right:**<br>
        Box plot showing where the mean and median life expectancies fall for each country. The box plot is used to visually convey what data would be considered statistical anomalies (the left edge of each box is the 25th percentile for life expectancy, and the right edge represents the 75th percentile)
- <u>**LIFE2.png:**</u><br>
    - Density plot showing a visual comparison of the probability distributions for each country overlaid on top of each other.
- <u>**AOV Life Expectancies.png**</u><br>
    - Shows the results of the Tukey comparison and ANOVA.
- <u>**CONF.png**</u><br>
    - Shows the plot representing the % differences in means of each country, within a 95% CI



