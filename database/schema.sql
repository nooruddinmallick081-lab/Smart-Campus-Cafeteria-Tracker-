
CREATE DATABASE cafeteria ;
USE cafeteria;

# Create the Menu Table 
CREATE TABLE MENU (
item_id INT PRIMARY KEY ,
item_name VARCHAR(50),
category VARCHAR(20),
price DECIMAL(5,2) 
);
# Insert Data into Menu 
INSERT INTO MENU 
(item_id,item_name,category,price)
VALUES 
(101,'Samosa','Snacks',15.00),
(102,'Masala Chai','Drinks',10.00),
(103,'Chicken Biriyani','Meals',120.00),
(104,'Cold Coffee','Drinks',40.00),
(105,'Veg Hakka Noodles','Meals',80.00);

# Create the Orders Table 
CREATE TABLE Orders(
order_id INT PRIMARY KEY,
item_id INT NOT NULL,
quantity INT NOT NULL,
order_time TIMESTAMP
);

#Insert Data into Orders 
INSERT INTO Orders 
(order_id,item_id,quantity,order_time)
VALUES 
(1,101,3,'2026-06-15 11:15:00'),
(2,102,2,'2026-06-15 11:20:00'),
(3,103,1,'2026-06-15 13:05:00'),
(4,105,2,'2026-06-15 13:15:00'),
(5,101,1,'2026-06-15 16:30:00'),
(6,104,2,'2026-06-15 16:45:00'),
(7,103,4,'2026-06-15 13:20:00');

#Create a Feedback Table 
CREATE TABLE Feedback(
order_id INT PRIMARY KEY,
rating INT,
comments VARCHAR(100)
);

#Insert Data into Feedback
INSERT INTO Feedback
(order_id,rating,comments)
VALUES
(1,5,'Fresh and crispy!'),
(3,4,'Good portion size.'),
(4,2,'Too oily,needs less salt.'),
(6,5,'Perfect for summers.');





