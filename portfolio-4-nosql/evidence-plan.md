MongoDB Order Document
{
  "order_id": 1001,
  "customer": {
    "customer_id": 25,
    "name": "Michael Adeoye"
  },
  "order_date": "2026-11-14T10:30:00Z",
  "status": "Shipped",
  "items": [
    {"product_id": 101, "name": "Wireless Headphones",
     "quantity": 2, "price": 75.00},
    {"product_id": 103, "name": "USB-C Charger",
     "quantity": 1, "price": 25.00}
  ],
  "payment": {"method": "Card", "status": "Paid"}
}
MongoDB Queries and Indexes
db.orders.find({ "customer.customer_id": 25 })

db.orders.find({ status: "Shipped" })

db.orders.aggregate([
  { $unwind: "$items" },
  { $group: { _id: "$items.product_id",
              units_sold: { $sum: "$items.quantity" } } },
  { $sort: { units_sold: -1 } }
])

db.orders.createIndex({ "customer.customer_id": 1, order_date: -1 })
