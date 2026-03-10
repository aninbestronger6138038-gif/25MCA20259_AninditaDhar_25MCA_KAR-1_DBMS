---Anindita Dhar ; 25MCA20259
---question 1

---An online store records every purchase in a Purchases table. Each record represents a customer buying a product on a specific date.
---The analytics team wants to detect situations where multiple customers purchased the same product on the same day.
---Your task is to identify all unique pairs of customers who bought the same product on the same date.
---Requirements :product_id must be the same,purchase_date must be the same,Customers must be different,Avoid duplicate pairs:
---(CustomerA, CustomerB) should appear once,(CustomerB, CustomerA) should not appear again

CREATE TABLE Purchases (
    purchase_id SERIAL PRIMARY KEY,
    customer_id INT,
    product_id INT,
    purchase_date DATE
);

INSERT INTO Purchases (customer_id, product_id, purchase_date) VALUES(101, 1, '2026-03-01');
INSERT INTO Purchases (customer_id, product_id, purchase_date) VALUES(102, 1, '2026-03-01');
INSERT INTO Purchases (customer_id, product_id, purchase_date) VALUES(103, 2, '2026-03-01');
INSERT INTO Purchases (customer_id, product_id, purchase_date) VALUES(104, 1, '2026-03-01');
INSERT INTO Purchases (customer_id, product_id, purchase_date) VALUES(105, 3, '2026-03-02');
INSERT INTO Purchases (customer_id, product_id, purchase_date) VALUES(101, 2, '2026-03-02');
INSERT INTO Purchases (customer_id, product_id, purchase_date) VALUES(102, 2, '2026-03-02');
INSERT INTO Purchases (customer_id, product_id, purchase_date) VALUES(106, 1, '2026-03-01');
INSERT INTO Purchases (customer_id, product_id, purchase_date) VALUES(107, 3, '2026-03-02');
INSERT INTO Purchases (customer_id, product_id, purchase_date) VALUES(108, 1, '2026-03-03');

SELECT * FROM Purchases;

SELECT p.customer_id AS CustomerA,
       p1.customer_id AS CustomerB,
       p.product_id,
	   p.purchase_date
FROM Purchases AS p
JOIN Purchases AS p1
ON p.product_id=p1.product_id  
AND p.purchase_date=p1.purchase_date
AND p.customer_id<p1.customer_id;
 





