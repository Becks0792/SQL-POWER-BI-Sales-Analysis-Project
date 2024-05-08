select distinct(currency) from transactions ;

select sum(t.sales_amount) as Revenue , p.product_code from transactions t
left join
products p on
t.product_code = p.product_code 
group by p.product_code 
order by Revenue desc
LIMIT 5;

select * from transactions where product_code is NULL;
