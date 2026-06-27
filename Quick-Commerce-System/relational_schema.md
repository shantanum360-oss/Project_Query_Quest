Customers(
    customer_id PRIMARY KEY,
    name,
    email,
    phone_number,
    address
)

Products(
    product_id PRIMARY KEY,
    product_name,
    category,
    price,
    stock_quantity
)

Orders(
    order_id PRIMARY KEY,
    customer_id FOREIGN KEY REFERENCES Customers(customer_id),
    order_date,
    total_amount
)

Order_Items(
    order_item_id PRIMARY KEY,
    order_id FOREIGN KEY REFERENCES Orders(order_id),
    product_id FOREIGN KEY REFERENCES Products(product_id),
    quantity
)

Additional relations to be added:
- Payments
- Inventory
- Delivery Partners
