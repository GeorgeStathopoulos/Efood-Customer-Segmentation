SELECT
  city,
  COUNT(DISTINCT order_id) AS Order_Count,
  COUNT(DISTINCT user_id) AS User_Count,
  AVG(basket) AS AVG_Basket
FROM
  `bi-2019-test.ad_hoc.orders_jan2021`
WHERE
  cuisine_parent = 'Breakfast'
GROUP BY
  city
HAVING
  COUNT(order_id) > 500
