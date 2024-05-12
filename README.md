
# Manufacturing-Dashboard

### Dashboard Link : https://app.powerbi.com/groups/me/reports/7ffb0eb6-209c-42c1-b682-22daad42b34e/ReportSection?experience=power-bi

## Problem Statement

This analysis delves into a comprehensive dataset focused on Manufacturing Analysis to extract valuable insights for Cost Structure, Efficiency Metrics, Resource Utilization, Quality Performance, Supply Chain Optimization, Risk Identification, Market Trends within the Manufacturing domain. By harnessing data analytics, we aim to uncover patterns, correlations, and key indicators that drive decision-making in Manufacturing and delivery of Products


### Steps followed 

- Step 1 : Load data into Power BI Desktop, dataset is a csv file.

- Step 2 : Open power query editor & in view tab under Data preview section, check "column distribution", "column quality" & "column profile" options.

- Step 3 : Also since by default, profile will be opened only for 1000 rows so you need to select "column profiling based on entire dataset".

- Step 4 : For calculating total manufactured quantity, null values were not taken into account.

- Step 5 : In the report view, under the view tab, theme was selected.

- Step 6 : Visual filters were added for four fields named "buyer", "operation name", "department name" & "Employee name".

- Step 7 : Four card visuals were added to the canvas, one representing total manufacturing quantity , total second representing rejected quantity, total third representing processed quantity, fourth representing wastage %.

- Step 8 : A donut chart was also added to the report design area representing the manufacturing v/s rejected quantity. 

- Step 9 : bar chart was used to represent employee wise rejected quantity.

- Step 10 : line chart was used to represent Product comparsion trend & buyer wise manufacture v/s rejected quantity.

- Step 11 : Treemap was used to represent machine wisw rejected quantity.

- Step 12 : Area chart was used to represent operation wise manufacture v/s rejected quantity.

- Step 13 : clustered column chart was used to represent department wise manufacture v/s rejected quantity.

- Step 14 : In the report view, under the insert tab, two text boxes were added to the canvas, project name was mention.

for creating new measure following DAX expression was written;
       
        wastage% = SUM('Manufecturing exc data'[RejectedQty])/SUM('Manufecturing exc data'[ProcessedQty]) 

A card visual was used to represent this perecntage.        
Snap of new measure ,

![Snap1](https://github.com/astha-s09/Manufacturing-Analysis/assets/169142674/b830cff8-2652-4971-816b-da516e211ec0)

        
- Step 15 : New measure was created to find total manufacture quantity.

Following DAX expression was written for the same,
        
      total manufacture qty = SUM('Manufecturing exc data'[ManufacturedQty])
        
A card visual was used to represent manufactur qty.

Snap of new measure ,

![snap 2](https://github.com/astha-s09/Manufacturing-Analysis/assets/169142674/76802452-da24-4d37-8ade-a2c00a9f3c1e)

        
 - Step 16 : New measure was created to find  rejected quantity,
 
 Following DAX expression was written to find rejected quantity,
 
        total rejected qty = SUM('Manufecturing exc data'[RejectedQty]) 
 
 A card visual was used to represent rejected qty.
 
Snap of new measure ,
 
 ![snap3](https://github.com/astha-s09/Manufacturing-Analysis/assets/169142674/3dc0ef42-0122-4502-9d05-6bab9764d471)
 
 - Step 17 : measure was created to calculate total processed quantity & a card visual was used to represent this.
 
 Following DAX expression was written to find,
 
        total processed qty = SUM('Manufecturing exc data'[ProcessedQty])

Snap of new measure ,

 ![Snap4](https://github.com/astha-s09/Manufacturing-Analysis/assets/169142674/6efedae7-ec88-4113-b510-f262d0834d35)
 
 - Step 18 : The report was then published to Power BI Service.


# Snapshot of Dashboard (Power BI Service)

![snap5](https://github.com/astha-s09/Manufacturing-Analysis/assets/169142674/a4bbd332-cb3e-4971-8540-a0425da64088)

 
 # Report Snapshot (Power BI DESKTOP)

![snap6](https://github.com/astha-s09/Manufacturing-Analysis/assets/169142674/e3b3cb01-c0c0-4343-b7ed-e92343dd51a3)

# Insights

A single page report was created on Power BI Desktop & it was then published to Power BI Service.

Following inferences can be drawn from the dashboard;

### [1] Total Number of manufacture quantity = 86.8M

The KPI Manufacturing Quantity provides essential insights into the production performance of a manufacturing project, enabling stakeholders to monitor efficiency, optimize resources, meet customer demand, and drive continuous improvement efforts.

           
### [2] Rejected quantity = 524.7K

The KPI Rejected Quantity provides critical insights into the quality performance of a manufacturing project, enabling stakeholders to identify quality issues, drive process improvements, reduce costs, and enhance customer satisfaction.

  
### [3] total processed quantity = 86.2M

: The KPI Processed Quantity provides essential insights into the operational performance, capacity utilization, and efficiency of a manufacturing project, enabling stakeholders to optimize resources, improve productivity and drive continuous improvement efforts
  
### [4] Wastage % = 0.6%

The KPI Wastage Quantity provides valuable insight into the efficiency and resource utilization of a manufacturing project by measuring the total amount of material, energy, or resources that are wasted during the production process.

### [5] Employee Wise Rejected Quantity

The KPI Employee-wise Rejected Quantity provides valuable insights into individual employee performance, training needs, process improvement opportunities, and the overall quality culture within a manufacturing project. By analyzing this KPI, stakeholders can identify areas for improvement, optimize processes, and enhance product quality to drive project success

### [6] Machine Wise Rejected Qty

 The KPI Machine-wise Rejected Quantity provides valuable insights into equipment performance, maintenance needs, process optimization opportunities, and quality assurance efforts within a manufacturing project. 


### [7] Production Comparison Trend

1- The KPI Production Comparison Trend provides valuable insights into production performance, capacity utilization, demand forecasting, and decision-making within a manufacturing project.

2- By analyzing this KPI, stakeholders can analyze trends in production quantities, stakeholders can make informed decisions regarding resource allocation, capacity planning, investment priorities, and strategic initiatives to drive business growth and profitability.

### [8] Manufacture Vs Rejected

By Comparing manufactured quantities with rejected quantities allows stakeholders to assess the quality performance of the manufacturing process. A higher ratio of manufactured to rejected units indicates better quality control and adherence to quality standards, whereas a lower ratio may suggest quality issues or inefficiencies in the production process.


### [9] Department Wise Manufacture Vs Rejected

Department-wise Manufacture vs. Rejected provides valuable insight into the quality performance and efficiency of different departments or areas within a manufacturing project by comparing the total number of units manufactured to the number of units rejected in each department. It provides valuable insights into departmental quality performance, process efficiency, resource allocation, and opportunities for continuous improvement within a manufacturing project.

### [10] operation Wise Manufacture Vs Rejected

operation-wise Manufacture vs. Rejected provides valuable insight into the action performance or  comparing the total number of units manufactured to the number of units rejected in each operation. It provides valuable insights into operational performance, process efficiency, resource allocation, and opportunities for continuous improvement within a manufacturing project.

