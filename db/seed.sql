-- Insert sample Categories
INSERT INTO Categories (category_name) VALUES
  ('Electronics'),
  ('Clothing'),
  ('Home & Kitchen');

-- Insert sample Products
INSERT INTO Products (product_name, price, stock, category_id) VALUES
  ('Smartphone', 599.99, 50, 1),
  ('Laptop', 899.99, 30, 1),
  ('T-shirt', 19.99, 100, 2),
  ('Dress', 49.99, 75, 2),
  ('Coffee Maker', 69.99, 25, 3),
  ('Blender', 39.99, 40, 3);

-- Insert sample Tags
INSERT INTO Tags (tag_name) VALUES
  ('New'),
  ('On Sale'),
  ('Popular'),
  ('Summer');

-- Insert sample ProductTags
INSERT INTO ProductTags (product_id, tag_id) VALUES
  (1, 1),
  (2, 1),
  (3, 2),
  (4, 2),
  (5, 3),
  (6, 3),
  (6, 4);
