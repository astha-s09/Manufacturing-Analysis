SELECT * FROM manufacturing.mf;
use manufacturing;
desc mf;

#KPI 1: manufacturingManufacturing Quantity
select concat((round((format((sum(ManufacturedQty)),3)),0)),"K") as Manufactured_Quantity from mf;

#KPI 2: Rejected Quantity
select concat((round((format((sum(RejectedQty)),3)),0)),"K") as Rejected_Quantity from mf;

#KPI 3: Processed Quantity
select concat((round((format((sum(ProcessedQty)),3)),0)),"K") as Processed_Quantity from mf;

#KPI 4: Wastage Quantity
select concat(sum(RejectedQty)/sum(ProcessedQty)*100,'%') as Wastage_Percentage from mf;

#KPI 5: Employee Wise Rejected Qty
Select EmpName, sum(RejectedQty) as Rejected_Qty from mf group by 1 order by 2 desc;

#KPI 6: Machine Wise Rejected Qty
Select MachineName, sum(RejectedQty) as Rejected_Qty  from mf group by 1 order by 2 desc;

#KPI 7: Production Comparision
Select SODeliveryDate, Sum(ProducedQty) as Produced_Qty  from mf group by 1 order by 2 desc;

#KPI 8: Manufactured Qty V/s Rejected Qty 	
Select concat((round((format((sum(ManufacturedQty)),3)),0)),"K") as Manufactured_Qty, concat((round((format((sum(RejectedQty)),3)),0)),"K") as Rejected_Qty from mf;

#KPI 9: DepartmentWise Manufactured Qty V/s Rejected Qty 
Select DepartmentName, concat((round((format((sum(ManufacturedQty)),3)),0)),"M") as Manufactured_Qty, concat((round((format((sum(RejectedQty)),3)),0)),"K") as Rejected_Qty 
from mf GROUP BY 1;

#KPI 10: Operation Wise Manufactured Qty V/s Rejected Qty 
Select OperationName, concat((round((format((sum(ManufacturedQty)),3)),0)),"M") as Manufactured_Qty, concat((round((format((sum(RejectedQty)),3)),0)),"K") as Rejected_Qty 
from mf GROUP BY 1;

#KPI 11: Delivery Period Wise Manufactured Qty V/s Rejected Qty 
Select DeliveryPeriod, concat((round((format((sum(ManufacturedQty)),3)),0)),"M") as Manufactured_Qty, concat((round((format((sum(RejectedQty)),3)),0)),"K") as Rejected_Qty 
from mf GROUP BY 1;