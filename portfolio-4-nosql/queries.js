db.orders.find({ "customer.customer_id": 25 })

db.orders.find({ status: "Shipped" })

db.orders.aggregate([
  { $unwind: "$items" },
  { $group: { _id: "$items.product_id",
              units_sold: { $sum: "$items.quantity" } } },
  { $sort: { units_sold: -1 } }
])

db.orders.createIndex({ "customer.customer_id": 1, order_date: -1 })
