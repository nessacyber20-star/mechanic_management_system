USE garage;
INSERT INTO users(name,email,phone,password_hash,role) VALUES
('Garage Admin','admin@example.com','0712345678','$2y$12$2jy6SSBqN78asnDTpJwlJ.GH9qNmjwNXOLcMhrkXC/ASogVMreruu','admin'),
('John Mechanic','mechanic@example.com','0722000000','$2y$12$2jy6SSBqN78asnDTpJwlJ.GH9qNmjwNXOLcMhrkXC/ASogVMreruu','mechanic'),
('Jane Customer','customer@example.com','0711000000','$2y$12$2jy6SSBqN78asnDTpJwlJ.GH9qNmjwNXOLcMhrkXC/ASogVMreruu','customer');
INSERT INTO vehicles(customer_id,registration_no,make,model,year,mileage) VALUES(3,'KDA 123A','Toyota','Premio',2017,126400);
INSERT INTO suppliers(name,phone) VALUES('Auto Parts Kenya','0700000000');
INSERT INTO parts(sku,name,quantity,reorder_level,buying_price,selling_price,supplier_id) VALUES('BP-001','Brake Pads',12,5,3000,4500,1),('BF-001','Brake Fluid',20,5,700,1200,1),('OF-001','Engine Oil 5W-30',8,3,2800,3500,1);
INSERT INTO repair_jobs(vehicle_id,mechanic_id,title,description,status,estimated_cost,labour_cost) VALUES(1,2,'Brake system replacement','Replace front brake pads and inspect discs','in_progress',8700,3000);
INSERT INTO job_parts(job_id,part_id,quantity,unit_price) VALUES(1,1,1,4500),(1,2,1,1200);
INSERT INTO notifications(user_id,title,body,type,reference_id) VALUES(3,'Repair started','Your Toyota Premio brake repair is in progress.','job',1),(2,'New repair job','Job #1 has been assigned to you.','job',1);
