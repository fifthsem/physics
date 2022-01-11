hdfsdfs -mkdir /pig 
hdfsdfs -put pigexercise.txt /pig/pigexercise.txt

A = LOAD '/pig/pigexercise.txt/ USING PigStorage (',') AS (name:chararray,age:int,gpa:float);
DUMP A
B = GROUP A BY age;
DUMP B

 customers = LOAD '/pig/customers.txt'USING PigStorage(',') as (id:int, name:chararray, age:int, address:chararray, salary:int);

 orders = LOAD '/pig/orders.txt' USING PigStorage(',') as (oid:int, date:chararray, customer_id:int, amount:int);

customer_orders = JOIN customers BY id, orders BY customer_id;

Dump customer_orders
STORE customer_orders INTO '/pig/Output/' USING PigStorage (',');
student_details = LOAD /pig/StudentDetails.txt' USING PigStorage(',')as (id:int, firstname:chararray, lastname:chararray,age:int, phone:chararray, city:chararray);

order_by_data = ORDER student_details BY age DESC;
Dump order_by_data;


