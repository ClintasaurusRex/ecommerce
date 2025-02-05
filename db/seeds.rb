# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# First, let's create some categories
categories = Category.create!([
  { name: 'Electronics', description: 'Electronic devices and gadgets' },
  { name: 'Clothing', description: 'Fashion and apparel' },
  { name: 'Home & Garden', description: 'Items for your home' },
  { name: 'Books', description: 'Books and digital content' },
  { name: 'Sports', description: 'Sports equipment and accessories' }
])

# Now let's create 20 products
Product.create!([
  {
    name: 'Wireless Noise-Cancelling Headphones',
    description: 'High-quality wireless headphones with active noise cancellation and 30-hour battery life',
    price: 249.99,
    active: true,
    category: categories[0] # Electronics
  },
  {
    name: 'Smart Fitness Watch',
    description: 'Track your health and fitness with this advanced smartwatch featuring heart rate monitoring and GPS',
    price: 199.99,
    active: true,
    category: categories[0]
  },
  {
    name: 'Premium Cotton T-Shirt',
    description: 'Comfortable 100% organic cotton t-shirt available in multiple colors',
    price: 24.99,
    active: true,
    category: categories[1] # Clothing
  },
  {
    name: 'Leather Messenger Bag',
    description: 'Handcrafted genuine leather bag perfect for work or travel',
    price: 159.99,
    active: true,
    category: categories[1]
  },
  {
    name: 'Robot Vacuum Cleaner',
    description: 'Smart robot vacuum with mapping technology and smartphone control',
    price: 299.99,
    active: true,
    category: categories[2] # Home & Garden
  },
  {
    name: 'Ergonomic Office Chair',
    description: 'Comfortable office chair with lumbar support and adjustable features',
    price: 249.99,
    active: true,
    category: categories[2]
  },
  {
    name: 'Programming Ruby 3.0',
    description: 'The definitive guide to Ruby programming language',
    price: 49.99,
    active: true,
    category: categories[3] # Books
  },
  {
    name: 'Yoga Mat',
    description: 'Non-slip exercise mat perfect for yoga and fitness',
    price: 29.99,
    active: true,
    category: categories[4] # Sports
  },
  {
    name: '4K Ultra HD Monitor',
    description: '27-inch 4K display with HDR support and built-in speakers',
    price: 399.99,
    active: true,
    category: categories[0]
  },
  {
    name: 'Denim Jacket',
    description: 'Classic denim jacket with modern fit and premium quality',
    price: 79.99,
    active: true,
    category: categories[1]
  },
  {
    name: 'Smart LED Light Bulbs (4-pack)',
    description: 'WiFi-enabled color changing LED bulbs compatible with voice assistants',
    price: 49.99,
    active: true,
    category: categories[2]
  },
  {
    name: 'Artificial Plant Set',
    description: 'Set of 3 realistic artificial plants perfect for home decoration',
    price: 34.99,
    active: true,
    category: categories[2]
  },
  {
    name: 'Wireless Gaming Mouse',
    description: 'High-precision gaming mouse with customizable RGB lighting',
    price: 69.99,
    active: true,
    category: categories[0]
  },
  {
    name: 'Running Shoes',
    description: 'Lightweight and comfortable running shoes with superior cushioning',
    price: 129.99,
    active: true,
    category: categories[4]
  },
  {
    name: 'Stainless Steel Water Bottle',
    description: 'Vacuum-insulated water bottle that keeps drinks cold for 24 hours',
    price: 24.99,
    active: true,
    category: categories[4]
  },
  {
    name: 'Cookbook Collection',
    description: 'Set of 3 bestselling cookbooks with international recipes',
    price: 59.99,
    active: true,
    category: categories[3]
  },
  {
    name: 'Winter Scarf',
    description: 'Soft and warm winter scarf made from premium wool blend',
    price: 29.99,
    active: true,
    category: categories[1]
  },
  {
    name: 'Portable Bluetooth Speaker',
    description: 'Waterproof portable speaker with 20-hour battery life',
    price: 89.99,
    active: true,
    category: categories[0]
  },
  {
    name: 'Garden Tool Set',
    description: 'Complete set of essential garden tools with storage bag',
    price: 45.99,
    active: true,
    category: categories[2]
  },
  {
    name: 'Mystery Novel Collection',
    description: 'Collection of 5 bestselling mystery novels',
    price: 79.99,
    active: true,
    category: categories[3]
  }
])

puts "Created #{Category.count} categories"
puts "Created #{Product.count} products"
