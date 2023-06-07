Create table Branch(
    branch_id number not null primary key,
    branch_location varchar2(50)
  );

  
Insert into Branch(Branch_id, branch_location) Values ('01', 'Birmingham');
Insert into Branch(Branch_id, branch_location) Values ('02', 'London');
Insert into Branch(Branch_id, branch_location) Values ('03', 'Cardiff');
Insert into Branch(Branch_id, branch_location) Values ('04', 'Stoke on Trent');
Insert into Branch(Branch_id, branch_location) Values ('05', 'Manchester');

Create table Employee
(
    employee_id number Not Null Primary Key,
    firstName varchar2(50),
    surname varchar2(50),
    employee_position varchar2(50),
    branch_id number not null,
    constraint fk_employee_branch
    foreign key (branch_id) references Branch(branch_id)
);


Insert into Employee(employee_id, FirstName, Surname, employee_position,  branch_id)  Values   ('123', 'Mbappe',     'Clinton', 'Admin',   '01');
Insert into Employee(employee_id, FirstName, Surname, employee_position,  branch_id)  Values   ('223', 'Christaino', 'Rolando', 'Cleaner',  '02');
Insert into Employee(employee_id, FirstName, Surname, employee_position,  branch_id)  Values   ('323', 'Janet',      'Caren',   'Manager',  '03');
Insert into Employee(employee_id, FirstName, Surname, employee_position,  branch_id)  Values   ('423', 'Jessica',     'Peters', 'Cleaner',  '04');
Insert into Employee(employee_id, FirstName, Surname, employee_position,  branch_id)  Values   ('523', 'Marcelo',     'Twelve' , 'Admin',   '05');

 Create table Room (
    room_id number Not Null Primary Key,
    room_type varchar2(50),
    room_description varchar2(50),
    room_location varchar2(50),
    RoomNo varchar2(10),
    branch_id number not null,
    foreign key(RoomNo) references Standard_Room(RoomNo),
    foreign key(RoomNo) references Executive_Room(RoomNo),
    foreign key(branch_id) references Branch(branch_id)  
  );

Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('1',  'executiveRoom', 'Has Tv_sets_plus_Internet_access','london','B413','02');
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('2',  'executiveRoom', 'Has Tv_sets plus Internet access',  'London',     'B416', '02' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('3',  'standardRoom',  'perfect for parties',               'Manchester', 'A412', '05' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('4',  'executiveRoom', 'Has Tv_sets plus Internet access',  'Manchester', 'B411', '05' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('5',  'executiveRoom', 'Has Tv_sets plus Internet access',  'Manchester', 'B415', '05' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('6',  'executiveRoom', 'Has Tv_sets plus Internet access',  'London',     'B414', '02' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('7',  'standardRoom',  'perfect for parties',               'London',     'A411', '02' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('8',  'standardRoom',  'perfect for parties',               'London',     'A417', '01' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('9',  'executiveRoom', 'Has Tv_sets plus Internet access',  'Birmingham',  'B417', '01' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('10', 'standardRoom', 'perfect for parties',                'Birmingham',  'A416', '01' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('11', 'executiveRoom', 'Has Tv_sets plus Internet access',  'Birmingham',  'B417', '01' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('12', 'executiveRoom', 'Has Tv_sets plus Internet access',  'Manchester',  'B413', '05' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('13', 'executiveRoom', 'Has Tv_sets plus Internet access',  'Manchester',  'B416', '05 ');
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('14', 'executiveRoom', 'Has Tv_sets plus Internet access',  'Manchester',  'B417', '05' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('15', 'executiveRoom',  'Has Tv_sets plus Internet access', 'Birmingham',  'B412', '01' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('16', 'standardRoom',  'perfect for parties',               'London',      'A414', '02' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('17', 'standardRoom',  'perfect for parties',               'London',      'A414', '02' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('18', 'standardRoom',  'perfect for parties',               'Cardiff',     'A415', '03' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('19', 'standardRoom',  'perfect for parties',               'Cardiff',     'A411', '03' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('20', 'executiveRoom', 'Has Tv_sets plus Internet access',  'Cardiff',     'B414', '03' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('21', 'executiveRoom', 'Has Tv_sets plus Internet access', 'Cardiff',     'B412', '03' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('23', 'standardRoom',  'perfect for parties',               'Cardiff',     'A414', '03' );
Insert into Room(room_id, room_type, room_description, room_location, RoomNo, branch_id ) Values ('24', 'standardRoom',  'perfect for parties',               'Cardiff',     'A416', '03' );








Create table Standard_Room(
    RoomNo varchar2 (5) Not Null ,
    decoration_option varchar2 (5),
    Primary Key (RoomNo)
);

Insert into Standard_Room(RoomNo, decoration_option) Values ('A411','Yes');
Insert into Standard_Room(RoomNo, decoration_option) Values ('A412', 'No');
Insert into Standard_Room(RoomNo, decoration_option) Values ('A413', 'No');
Insert into Standard_Room(RoomNo, decoration_option) Values ('A414', 'Yes');
Insert into Standard_Room(RoomNo, decoration_option) Values ('A415', 'Yes');
Insert into Standard_Room(RoomNo, decoration_option) Values ('A416', 'No');
Insert into Standard_Room(RoomNo, decoration_option) Values ('A417', 'Yes');


 Create table Executive_Room(
    RoomNo varchar2 (5) Not Null,
    buffet_option varchar2 (5),
    Primary Key(RoomNo)
);



Insert into Executive_Room(RoomNo, buffet_option) Values ('B411', 'Yes');
Insert into Executive_Room(RoomNo, buffet_option) Values ('B412', 'No');
Insert into Executive_Room(RoomNo, buffet_option) Values ('B413', 'Yes');
Insert into Executive_Room(RoomNo, buffet_option) Values ('B414', 'No');
Insert into Executive_Room(RoomNo, buffet_option) Values ('B415', 'Yes');
Insert into Executive_Room(RoomNo, buffet_option) Values ('B416', 'Yes');
Insert into Executive_Room(RoomNo, buffet_option) Values ('B417', 'No');


Create table Booking(
    booking_id number Not Null Primary Key,
    payment_method varchar2(50),
    startdate date,
    enddate date,
    customer_id number not null,
    room_id number not null,
   Constraint fk_customer_booking  foreign key(customer_id) references Customer(customer_id),
    Constraint fk_room_booking foreign key(room_id) references Room(room_id)
  );

  Insert into Booking(booking_id, payment_method, startdate, enddate, customer_id, room_id)  Values  ('01101', 'invoice', '08 May 2023', '09 May 2023' ,  '03', '5');
  Insert into Booking(booking_id, payment_method, startdate, enddate, customer_id, room_id)  Values  ('01201', 'card',    '10 June 2023', '15 June 2023' , '02', '18');
  Insert into Booking(booking_id, payment_method, startdate, enddate, customer_id, room_id)  Values  ('01301', 'cash',    '16 June 2023', '17 June 2023' , '04', '10');
  Insert into Booking(booking_id, payment_method, startdate, enddate, customer_id, room_id)  Values  ('01401', 'invoice', '21 July 2023', '24 July 2023' , '02', '6');
  Insert into Booking(booking_id, payment_method, startdate, enddate, customer_id, room_id)  Values  ('01501', 'invoice', '30 August 2023', '31 August 2023' , '05', '3');

Create table Customer(
    customer_id number Not Null Primary Key ,
    FirstName varchar2(50),
    Surname varchar2(50),
    Sex char(1)
  );

Insert into Customer(Customer_id, FirstName, Surname, Sex)  Values  ('01', 'Jarett', 'Archie', 'M');
Insert into Customer(Customer_id, FirstName, Surname, Sex)  Values  ('02', 'Alvin', 'Chipmunk','M');
Insert into Customer(Customer_id, FirstName, Surname, Sex)   Values  ('03', 'Aaliyah', 'Darren', 'F');
Insert into Customer(Customer_id, FirstName, Surname, Sex)   Values  ('04', 'Jenny', 'Lopez', 'F');
Insert into Customer(Customer_id, FirstName, Surname, Sex)   Values  ('05', 'Gabby', 'Sanders', 'F');
  
Create table Account(
    account_id number Not Null Primary Key,
    customer_id number,
    Constraint fk_customer_account 
   foreign key(customer_id) references Customer(customer_id)
  );

Insert into Account(account_id, customer_id)  Values  ('01', '03');
Insert into Account(account_id, Customer_id)  Values  ('02', '05');
Insert into Account(account_id, customer_id)   Values  ('03', '01');


  
Create table Supplier
(
    supplier_id varchar2(10) Primary Key,
    supplier_location varchar2(50),
    branch_id number ,
    product_id number,
    Foreign key(branch_id) references Branch(branch_id), 
    Foreign key(product_id) references Product(product_id)

  );

Insert into Supplier(supplier_id, supplier_location, branch_id, product_id) Values ('0010', 'Birmingham',    '01', '001');
Insert into Supplier(supplier_id, supplier_location, branch_id, product_id) Values ('0020', 'Manchester',    '05', '002');
Insert into Supplier(supplier_id, supplier_location, branch_id, product_id) Values ('0030', 'Cardiff',       '03',  '004');
Insert into Supplier(supplier_id, supplier_location, branch_id, product_id) Values ('0040', 'London',        '02', '003');
Insert into Supplier(supplier_id, supplier_location, branch_id, product_id) Values ('0050', 'Stoke on Trent','04', '005');

Create table Product(
    product_id number Not Null Primary Key,
    product_quantity number,
    product_description varchar2(50)
  );

Insert into Product(product_id, product_quantity, product_description)  Values  ('001','50' ,'fruits');
Insert into Product(product_id, product_quantity, product_description)  Values  ('002','40' ,'beverages');
Insert into Product(product_id, product_quantity, product_description)  Values  ('003','35' ,'Cereals');
Insert into Product(product_id, product_quantity, product_description)  Values  ('004','20' ,'Decor sets');
Insert into Product(product_id, product_quantity, product_description)  Values  ('005','15' ,'Meats');

