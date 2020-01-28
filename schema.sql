DROP DATABASE IF EXISTS similar_vehicles; 

CREATE DATABASE similar_vehicles; 

USE similar_vehicles; 

CREATE TABLE IF NOT EXISTS vehicle (
    id SERIAL PRIMARY KEY, 
    year INT NOT NULL, 
    make VARCHAR(25) NOT NULL,
    model VARCHAR(25) NOT NULL,
    class VARCHAR(25) NOT NULL,
    price VARCHAR(25) NOT NULL,
    miles VARCHAR(25) NOT NULL,
    engine_L_Cyl VARCHAR(25) NOT NULL,
    transmission VARCHAR(25) NOT NULL,
    exterior_color VARCHAR(25) NOT NULL,
    interior_color VARCHAR(50) NOT NULL,
    picture TEXT NOT NULL
); 

INSERT INTO vehicle (year, make, model, class, price, miles, engine_L_Cyl, transmission, exterior_color, interior_color, picture)
    VALUES (2017, 'Acura', 'MDX', 'SUV', '$26,929', '36,338', '3.5L V-6 Cyl', 'Automatic', 'Lunar Silver', 'Black', 'https://a2ee4b017484f99db28d-250ec659588d774a6f990238e39cf450.ssl.cf1.rackcdn.com/5FRYD4H51HB000535/393d5e0bb0d20777f157a40cd8630803.jpg'), 
    (2016, 'Nissan', 'Rogue', 'SUV', '$16,989', '17,846', '2.5L I-4 Cyl', 'Automatic', 'Magnetic Black', 'Charcoal', 'https://www.ashevilletoyota.com/assets/stock/colormatched_01/white/640/cc_2016nis110007_01_640/cc_2016nis110007_01_640_g41.jpg'),
    (2019, 'Toyota', 'Highlander', 'SUV', '$31,689', '21,433', '3.5L V-6 Cyl', 'Automatic', 'Shoreline Blue Pearl', 'Black', 'https://blogmedia.dealerfire.com/wp-content/uploads/sites/715/2018/11/2019-Toyota-Highlander-in-Shoreline-Blue-Pearledit_o.jpg'),
    (2018, 'Nissan', 'Sentra', 'Sedan', '$11,289', '39,225', '1.8L I-4 Cyl', 'Automatic', 'Fresh Powder', 'Charcoal', 'https://inventory-dmg.assets-cdk.com/evox/color_0640_032/12626/12626_cc0640_032_QM1.jpg'), 
    (2017, 'Jeep', 'Patriot', 'SUV', '$16,189', '24,811', '2.4L I-4 Cyl', 'Automatic', 'Bright White', 'Dark Slate Gray', 'https://pictures.dealer.com/e/echoparkcentennial/1276/a1e8ee0063f77c29174fc2294ceb63e9x.jpg?impolicy=resize&w=650'),
    (2018, 'Jeep', 'Compass', 'SUV', '$19,589', '32,410', '2.4L I-4 Cyl', 'Automatic', 'Rhino', 'Black', 'https://pictures.dealer.com/e/echoparkcentennial/1306/d25c970d7d1b4935f8d9135915331653x.jpg?impolicy=resize&w=650'),
    (2017, 'Chevrolet', 'Equinox', 'SUV', '$15,589', '23,429', '2.4L I-4 Cyl', 'Automatic', 'Nightfall Gray', 'Jet Black', 'https://pictures.dealer.com/e/echoparkdallas/1247/22a039202566d91fd8afea8bb5bb1424x.jpg?impolicy=resize&w=650'),
    (2017, 'Mercedes-Benz', 'CLA 250', 'Coupe', '$20,789', '30,023', '2.0L I-4 Cyl', 'Automatic', 'Night Black', 'Gray', 'https://pictures.dealer.com/e/echoparkthornton/1339/45c264ed748d72488b9e355756960171x.jpg?impolicy=resize&w=650'),
    (2019, 'Dodge', 'Challenger', 'Coupe', '$22,269', '18,468', '3.6L V-6 Cyl', 'Automatic', 'Pitch Black', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1147/30b5b9e45dc43a115fc5ca9341d05d8dx.jpg?impolicy=resize&w=650'),
    (2019, 'Dodge', 'Challenger', 'Coupe', '$22,269', '18,468', '3.6L V-6 Cyl', 'Automatic', 'Pitch Black', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1147/30b5b9e45dc43a115fc5ca9341d05d8dx.jpg?impolicy=resize&w=650'),
    (2016, 'Lexus', 'RC 300', 'Coupe', '$27,969', '20,246', '3.5L V-6 Cyl', 'Automatic', 'Silver', 'Beige', 'https://pictures.dealer.com/e/echoparkthornton/1650/9ad870d0cacb34b80a522b2c3f10b317x.jpg?impolicy=resize&w=650'), 
    (2019, 'Dodge', 'Challenger', 'Coupe', '$22,149', '18,063', '3.6L V-6 Cyl', 'Automatic', 'Octane Red Pearlcoat', 'Black', 'https://pictures.dealer.com/e/echoparkcentennial/1139/73f14b5955dcf319fbf993ae4c727a6cx.jpg?impolicy=resize&w=650'), 
    (2017, 'Lexus', 'RC 300', 'Coupe', '$31,989', '18,057', '3.5L V-6 Cyl', 'Automatic', 'Nebula Gray Pearl', 'Rioja Red', 'https://pictures.dealer.com/e/echoparkcentennial/0211/7dcb814acba0060f2bc813e633aa4af1x.jpg?impolicy=resize&w=650'), 
    (2017, 'Mazda', 'CX-3', 'SUV', '$15,789', '32,638', '2.0L I-4 Cyl', 'Automatic', 'Jet Black Mica', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0668/a7fbcb9718836ef33ed8e21f0d6ea181x.jpg?impolicy=resize&w=650'),
    (2019, 'Hyundai', 'Kona', 'SUV', '$16,589', '23,571', '2.0L I-4 Cyl', 'Automatic', 'Thunder Gray', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0380/07b46f600aee084bd5125cb3a5c83786x.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'Escape', 'SUV', '$16,349', '33,863', '2.0L I-4 Cyl', 'Automatic', 'Oxford White', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkthornton/0138/b5973e4f30a3493a0ed13f7b59dbf9e5x.jpg?impolicy=resize&w=650'),
    (2017, 'Ford', 'Escape', 'SUV', '$16,689', '37,030', '1.5L I-4 Cyl', 'Automatic', 'Magnetic', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkthornton/0556/39576888f6cbd4e6c625021bf2c60d43x.jpg?impolicy=resize&w=650'),
    (2018, 'Hyundai', 'Tucson', 'SUV', '$16,689', '29,615', '2.0L I-4 Cyl', 'Automatic', 'Dazzling White', 'Gray', 'https://pictures.dealer.com/e/echoparkthornton/0425/db7035de6b5c4a1a88c07d2429d5bcf9x.jpg?impolicy=resize&w=650'),
    (2016, 'Kia', 'Sorento', 'SUV', '$13,989', '38,328', '2.4L I-4 Cyl', 'Automatic', 'Blaze Blue', 'Satin Black', 'https://pictures.dealer.com/e/echoparkdallas/0418/333aa130c78a3987325b422f2e55520bx.jpg?impolicy=resize&w=650'),
    (2018, 'Ford', 'Titanium', 'SUV', '$14,419', '32,732', '1.0L I-3 Cyl', 'Automatic', 'Smoke', 'Ebony Black', 'https://pictures.dealer.com/e/echoparkdallas/1471/3ed9fb07a2f17185108a729acef2a9ebx.jpg?impolicy=resize&w=650'),
    (2017, 'Volkswagen', 'Jetta', 'Sedan', '$12,249', '22,845', '1.4L I-4 Cyl', 'Automatic', 'Platinum Gray', 'Titan Black/Palladium Gray', 'https://pictures.dealer.com/e/echoparkthornton/0410/0045345397ed2cf07da4afb68dddd380x.jpg?impolicy=resize&w=650'),
    (2019, 'Hyundai', 'Accent', 'Sedan', '$12,339', '26,509', '1.6L I-4 Cyl', 'Automatic', 'Olympus Silver', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1368/f92dc1fb0c765e7cdfd724ec9a564263x.jpg?impolicy=resize&w=650'),
    (2018, 'Toyota', 'Corolla', 'Sedan', '$12,989', '37,780', '1.8L I-4 Cyl', 'Automatic', 'Slate', 'Ash', 'https://pictures.dealer.com/e/echoparkthornton/1246/6b9bb4af44c265ee923ed0cbb01a28b2x.jpg?impolicy=resize&w=650'),
    (2018, 'Hyundai', 'Elantra', 'Sedan', '$13,129', '37,654', '2.0L I-4 Cyl', 'Automatic', 'Phantom Black', 'Gray', 'https://pictures.dealer.com/e/echoparkthornton/0861/fb04788a34d4ad08002a89f094edc2b9x.jpg?impolicy=resize&w=650'),
    (2018, 'Toyota', 'Corolla', 'Sedan', '$13,209', '37,338', '1.8L I-4 Cyl', 'Automatic', 'Super White', 'Ash', 'https://pictures.dealer.com/e/echoparkthornton/1133/e718134806c25cbcf4edf7060119a431x.jpg?impolicy=resize&w=650'),
    (2016, 'Honda', 'Civic', 'Sedan', '$13,389', '17,457', '2.0L I-4 Cyl', 'Automatic', 'Black', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1997/33fecf83d2182dab8fe029b1e50c504ex.jpg?impolicy=resize&w=650'),
    (2017, 'Chevrolet', 'Cruze', 'Sedan', '$13,689', '32,902', '1.4L I-4 Cyl', 'Automatic', 'Red Hot', 'Jet Black', 'https://pictures.dealer.com/e/echoparkthornton/1170/c92dd4bf3d6ea46b03b9c718f673f149x.jpg?impolicy=resize&w=650'),
    (2019, 'Toyota', 'Yaris', 'Sedan', '$13,989', '19,740', '1.5L I-4 Cyl', 'Automatic', 'Frost', 'Blue Black', 'https://pictures.dealer.com/e/echoparkthornton/1803/bc05776f5bef1c616c336a175e211d5bx.jpg?impolicy=resize&w=650'),
    (2016, 'Chevrolet', 'Malibu', 'Sedan', '$14,359', '30,203', '1.5L I-4 Cyl', 'Automatic', 'Mosaic Black', 'Jet Black', 'https://pictures.dealer.com/e/echoparkthornton/1187/4b062ab8c8b4b27bd1e5a10111d56dabx.jpg?impolicy=resize&w=650'),
    (2019, 'Kia', 'Forte', 'Sedan', '$14,489', '23,024', '2.0L I-4 Cyl', 'Automatic', 'Gravity Gray', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1937/87d9de6e17fd5370e3e70a06fa306ea5x.jpg?impolicy=resize&w=650'),
    (2017, 'Hyundai', 'Sonata', 'Sedan', '$14,959', '33,676', '2.4L I-4 Cyl', 'Automatic', 'Shale Gray', 'Gray', 'https://pictures.dealer.com/e/echoparkthornton/0278/f1036b857dcf3d95b24ec0c18d9a3809x.jpg?impolicy=resize&w=650'),
    (2017, 'Chevrolet', 'Cruze', 'Sedan', '$14,989', '35,641', '1.4L I-4 Cyl', 'Automatic', 'Mosaic Black', 'Jet Black/Kalahari', 'https://pictures.dealer.com/e/echoparkthornton/1760/d1de1f984f61c9890653d463467e9b63x.jpg?impolicy=resize&w=650'), 
    (2017, 'Honda', 'Civic', 'Coupe', '$17,489', '25,556', '1.5L I-4 Cyl', 'Automatic', 'White Orchid Pearl', 'Black/Gray', 'https://pictures.dealer.com/e/echoparkcoloradosprings/1339/026b440a6c78f7f3bd03cf3b441eeb35x.jpg?impolicy=resize&w=650'),
    (2016, 'Kia', 'Forte Koup', 'Coupe', '$13,589', '23,127', '1.6L I-4 Cyl', 'Automatic', 'Graphite Steel', 'Black', 'https://pictures.dealer.com/e/echoparkdallas/0605/7d4649808bce5841ee3d36128c183e10x.jpg?impolicy=resize&w=650'),
    (2017, 'Honda', 'Accord LX-S', 'Coupe', '$15,689', '21,122', '2.4L I-4 Cyl', 'Automatic', 'San Marino Red', 'Black', 'https://pictures.dealer.com/e/echoparkdallas/0449/628432c18fd69734ca89391e8e1ff285x.jpg?impolicy=resize&w=650'),
    (2016, 'Mercedes-Benz', 'CLA 250', 'Coupe', '$18,809', '24,324', '2.0L I-4 Cyl', 'Automatic', 'Cirrus White', 'Black', 'https://pictures.dealer.com/e/echoparkdallas/0597/e3446e040c84eadf93206230a0349633x.jpg?impolicy=resize&w=650'),
    (2016, 'Dodge', 'Challenger SXT', 'Coupe', '$18,869', '33,126', '3.6L V-6 Cyl', 'Automatic', 'Bright White', 'Black', 'https://pictures.dealer.com/e/echoparkdallas/1918/8b879b4eea489f0f2eb7cb0f4e9041a1x.jpg?impolicy=resize&w=650'),
    (2018, 'Ford', 'Mustang', 'Coupe', '$18,989', '36,808', '2.3L I-4 Cyl', 'Automatic', 'Ingot Silver', 'Black', 'https://pictures.dealer.com/e/echoparkdallas/1486/79b99f5234deb6c42b0e5126eff4f40ax.jpg?impolicy=resize&w=650'),
    (2018, 'Ford', 'Focus', 'Hatchback', '$10,989', '38,234', '2.0L I-4 Cyl', 'Automatic', 'Ingot Silver', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkthornton/0613/53683e02b8d349f6edf4231917f0e18ex.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'Focus', 'Hatchback', '$10,989', '28,498', '1.0L I-3 Cyl', 'Automatic', 'Magnetic', 'Medium Light Stone', 'https://pictures.dealer.com/e/echoparkthornton/0206/472b931abf2096de25324372f68518d4x.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'Focus', 'Hatchback', '$11,389', '23,840', '2.0L I-4 Cyl', 'Automatic', 'Kona Blue', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkthornton/0926/d19f2246ba0c9ea2ebb8c68924ecf869x.jpg?impolicy=resize&w=650'),
    (2016, 'Hyundai', 'Elantra', 'Hatchback', '$12,709', '33,857', '2.0L I-4 Cyl', 'Automatic', 'Shimmering Silver', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0531/4451f4c93e8248adb0ccdaa1f02acc74x.jpg?impolicy=resize&w=650'),
    (2018, 'Hyundai', 'Elantra', 'Hatchback', '$13,469', '29,239', '2.0L I-4 Cyl', 'Automatic', 'Symphony Air Silver', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0451/6cc086758a1bf2aa41bcd909639d7310x.jpg?impolicy=resize&w=650'),
    (2018, 'Kia', 'Forte', 'Hatchback', '$13,239', '32,418', '2.0L I-4 Cyl', 'Automatic', 'Aurora Black Pearl', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/0052/923aa86f3f73831dea169dc795770100x.jpg?impolicy=resize&w=650'),
    (2019, 'Kia', 'Soul +', 'Hatchback', '$14,269', '27,055', '2.0L I-4 Cyl', 'Automatic', 'Clear White', 'Black', 'https://pictures.dealer.com/e/echoparkthornton/1225/cbc043867c70a865fae0aaa3ad4fbe86x.jpg?impolicy=resize&w=650'),
    (2018, 'Kia', 'Soul +', 'Hatchback', '$12,589', '39,075', '2.0L I-4 Cyl', 'Automatic', 'Shadow Black', 'Gray 2-Tone', 'https://pictures.dealer.com/e/echoparkthornton/1225/cbc043867c70a865fae0aaa3ad4fbe86x.jpg?impolicy=resize&w=650'),
    (2017, 'Kia', 'Soul +', 'Hatchback', '$14,229', '29,876', '2.0L I-4 Cyl', 'Automatic', 'Bright Silver', 'Gray 2-Tone', 'https://pictures.dealer.com/e/echoparkcentennial/0328/046927e0fb8b9e2fbb619825f29190bfx.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'Fiesta', 'Hatchback', '$9,999', '28,297', '1.6L I-4 Cyl', 'Automatic', 'Magnetic', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkcoloradosprings/1349/747e687ec41b611e51953676b839ead6x.jpg?impolicy=resize&w=650'),
    (2016, 'Ford', 'Fiesta', 'Hatchback', '$9,379', '37,845', '1.6L I-4 Cyl', 'Automatic', 'Shadow Black', 'Charcoal Black', 'https://pictures.dealer.com/e/echoparkdallas/0585/c44ef7a745a0031898877232d49c10e7x.jpg?impolicy=resize&w=650'),
    (2017, 'Chevrolet', 'Cruze', 'Hatchback', '$13,279', '23,712', '1.4L I-4 Cyl', 'Automatic', 'Cajun Red Tintcoat', 'Jet Black', 'https://pictures.dealer.com/e/echoparkdallas/1947/2758e1ae40983f93b8a867204141f3d5x.jpg?impolicy=resize&w=650'); 

