# Order.create!(id:1, orderNumber: 100001, user_id: 1, date: '1/12/2021', total: 0.0, active: true)
# Product.create!(id:2, name:'Estuche', code:'EST101', price: 4000, quantity: 8, active: true)
# User.create!(id:1, name:"Oky", lastName:"Madrigal", birthDate:"07/07/1998",password: "12345678", active:"true", email:"okymelina98@gmail.com")
OrderItem.create(id:5, order_id:1, product_id:2, total:0, quantity:2)