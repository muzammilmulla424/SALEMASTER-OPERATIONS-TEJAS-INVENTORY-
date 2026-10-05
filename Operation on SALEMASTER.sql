
-- sale count with each customer.
select CustName , count(*) as totalsale from tblOrderMaster 
group by custname

-- sale count of each year's each customer.

select year(OrderDate)as year , CustName , count(*) from tblOrderMaster
group by year(OrderDate), CustName

-- sale count of each year's each customer.and their totalsaleamount
select year(OrderDate)as year , CustName , count(*)as totalsale,sum(GrandTotal)as totalamount from tblOrderMaster
group by year(OrderDate), CustName 

-- last 5 years sale
select * from tblOrderMaster
where OrderDate between dateadd(year , -5 , getdate()) and getdate()

-- previous month sale
select * from tblOrderMaster
where year(OrderDate) = year(dateadd(month , -1 ,getdate()))
and month(OrderDate) = month(dateadd(month , -1 , getdate()))




select * from tblOrderMaster