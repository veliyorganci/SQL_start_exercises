
--You need to create a report on whether customers who purchased the product named '2TB Red 5400 rpm SATA III 3.5 Internal NAS HDD' buy the product below or not.
--'Polk Audio - 50 W Woofer - Black' -- (other_product)


CREATE VIEW HDD_product_buyer
AS
SELECT DISTINCT A.customer_id, A.First_Name, A.Last_Name
FROM sale.customer A, sale.orders B, sale.order_item C, product.product D
WHERE A.customer_id = B.customer_id
AND B.order_id = C.order_id
AND C.product_id = D.product_id
AND D.product_name = '2TB Red 5400 rpm SATA III 3.5 Internal NAS HDD'


--Created a view with the details of customer who bought the second product
CREATE VIEW polk_product_buyer
AS
SELECT DISTINCT A.customer_id, A.First_Name, A.Last_Name
FROM sale.customer A, sale.orders B, sale.order_item C, product.product D
WHERE A.customer_id = B.customer_id
AND B.order_id = C.order_id
AND C.product_id = D.product_id
AND D.product_name = 'Polk Audio - 50 W Woofer - Black'


--Created a view with the details of customer who bought the both, buy using above tables.
CREATE VIEW buyed_both AS
SELECT *, other_product = 'YES'
FROM HDD_product_buyer
WHERE customer_id IN (
SELECT customer_id
FROM polk_product_buyer)


--Created a view with the details of customer who bought only one, buy using above tables.
CREATE VIEW buyed_one AS
SELECT *, other_product = 'NO'
FROM HDD_product_buyer
WHERE customer_id NOT IN (
SELECT customer_id
FROM polk_product_buyer)


--Made a union to see the customers who bought both products and who bought only one product.
(
 SELECT 
  * 
   FROM buyed_both
)
UNION
(
 SELECT 
  * 
   FROM buyed_one
)
ORDER BY other_product DESC