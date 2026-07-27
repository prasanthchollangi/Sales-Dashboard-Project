use SalesDashboard;
SELECT COUNT(*) AS TotalRows FROM SampleSuperstore_Clean;
SELECT TOP 10 * FROM SampleSuperstore_Clean;
SELECT SUM(Sales) AS TotalSales FROM SampleSuperstore_Clean;
select sum(Profit) as totalProfit from SampleSuperstore_Clean;
select avg(sales) as averageSales from SampleSuperstore_Clean;
select max(sales) as highestsale from SampleSuperstore_Clean;
select min(sales) as lowestsale from SampleSuperstore_Clean;
select Category, count(*) as orders from SampleSuperstore_Clean group by category;
select sum(Quantity) as totalQuantity from SampleSuperstore_Clean;
select Category, sum(Sales) as TotalSales from SampleSuperstore_Clean group by Category order by TotalSales DESC;
select Category, sum(Profit) as Totalprofit from SampleSuperstore_Clean group by Category order by Totalprofit DESC;
SELECT TOP 10 * FROM SampleSuperstore_Clean ORDER BY Sales DESC;

--using where clause

SELECT * FROM SampleSuperstore_Clean WHERE Category = 'Technology';
SELECT *FROM SampleSuperstore_Clean WHERE Sales > 1000;
SELECT *
FROM SampleSuperstore_Clean
WHERE Profit < 0;
SELECT *
FROM SampleSuperstore_Clean
WHERE State = 'California';
SELECT *
FROM SampleSuperstore_Clean
WHERE Category = 'Technology'
AND Sales > 1000;
select * from SampleSuperstore_Clean order by Sales desc;
select * from SampleSuperstore_Clean order by Sales ASC;
select top 10 * from SampleSuperstore_Clean order by Sales desc;
select top 10 * from SampleSuperstore_Clean order by Sales desc;
select top 10 * from SampleSuperstore_Clean order by Profit desc;
select top 10 * from SampleSuperstore_Clean order by Profit asc;

--group by 
select Category, sum(Sales) as totalsales from SampleSuperstore_Clean group by Category;
select Category, sum(Profit) as totalprofit from SampleSuperstore_Clean group by Category;
select Region, sum(Sales) as totalsales from SampleSuperstore_Clean group by Region;

--having 
 select Category , sum(sales) as totalsales from SampleSuperstore_Clean group by Category having sum(sales)>500000;


