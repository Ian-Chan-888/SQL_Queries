USE ICE;

SELECT * FROM CUSTOMER;
SELECT * FROM PRODUCT;
SELECT * FROM CUSTOMER_PRODUCTS;

/*Joining 3 tables
*/
SELECT C.CUST_NAME,p.PROD_DESCTIPTION
FROM CUSTOMER C
LEFT JOIN CUSTOMER_PRODUCTS CP ON (C.CUST_ID=CP.CUST_ID) 
LEFT JOIN PRODUCT P ON (CP.PROD_ID=P.PROD_ID)
WHERE
p.PROD_DESCTIPTION like '%saw%'