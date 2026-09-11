# Excel and R for Statistical Analysis

Two hands-on sessions taking the same tutoring exercise through Excel and then
through R in Google Colab, plus a short guide on choosing between the two.

## Individual Class Info
ECON 3291: Development Economics
<br>
Prof. Silvia Prina
<br>
Fall 2026
<br>
Taught by Sean P. Rogers, DITI Research and Teaching Fellows
<br>

## Summary of Module
Students evaluate a health programme aimed at poor rural households, using a
panel of 550 household-round observations. The same eight questions are worked
step by step in each tool: summary statistics, counting households as against
observations, building an indicator variable, comparing treatment and control at
baseline, plotting a relationship, measuring it, and estimating programme impact
with bivariate and multivariate regression.

Each walkthrough is written to work two ways — as slides to present from, and as
a reference a student can follow afterwards on their own.

## Learning Goals
- Understand how a dataset is stored, and what one row represents in a panel.
- Distinguish counting rows from counting the entities the rows describe.
- Build summary and group-comparison tables.
- Visualise a relationship and measure it with a correlation.
- Estimate and read a regression, with and without controls.
- Choose deliberately between a spreadsheet and a scripting language.

## Documents for Module

[Excel walkthrough (52 slides)](FA26-Prina-ECON3291-Excel-Walkthrough.pptx)

[R walkthrough (52 slides)](FA26-Prina-ECON3291-R-Walkthrough.pptx)

[Guide: Excel or R, which tool for which job (28 slides)](FA26-Prina-ECON3291-Excel-or-R-Guide.pptx)

[Handout: installing Excel and the Analysis ToolPak](ECON3291_Excel_Install_Handout.pdf)

[Student practice notebook (R, Google Colab)](ECON3291_R_techniques.ipynb)

[Dataset](data/ECON3291exceltutoring.xlsx)

## Notes for Instructors

The practice notebook contains no stored output and works on variables the
problem set does not ask about, so students run it themselves without being
handed answers. The worked answer key is kept out of this repository.

The dataset here is the file the notebooks read. Both walkthroughs show the
corrected figures: earlier versions of this exercise reported household counts
that were actually observation counts, and gave the correlation of health
expenditure with the poverty index where the question asked about education.
