-- Databricks notebook source

create table customers(c_id int, dates date);

insert into customers values
(1111,'2022-12-01'),
(1111,'2022-10-01'),
(1111,'2022-09-01'),
(1111,'2023-01-01'),
(2222,'2022-01-01'),
(2222,'2022-05-01'),
(2222,'2022-04-01');

select * from customers;


-- COMMAND ----------

SELECT c_id, Round(DATEDIFF(dates, MIN(dates) OVER (PARTITION BY c_id)) / 30) AS month_difference
FROM customers;
