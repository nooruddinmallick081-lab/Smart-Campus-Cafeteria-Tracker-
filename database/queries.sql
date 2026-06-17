# To find the Total Revenue 
SELECT 
SUM(o.quantity*m.price) AS Total_Revenue 
FROM orders AS o 
INNER JOIN MENU AS m 
ON o.item_id = m.item_id ;


# To find the Peak Hour 
SELECT
EXTRACT(HOUR FROM order_time )AS order_hours,
COUNT(DISTINCT order_id) AS total_orders  
FROM Orders
GROUP BY order_hours 
ORDER BY total_orders DESC
LIMIT 1;

# To find the Quality Control 
SELECT 
      m.item_name,
      f.rating,
      f.comments 
FROM Feedback AS f 
    INNER JOIN Orders AS o 
ON f.order_id = o.order_id 
    INNER JOIN MENU AS m 
ON o.item_id = m.item_id 
WHERE 
  f.rating < 3 ;

	
