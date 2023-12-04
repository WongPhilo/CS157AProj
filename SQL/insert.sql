USE cs157aproject;

INSERT INTO `MARKET` (MARKET_ID, MARKET_NAME, ADDRESS, STREET, STATE_ABBR, STATE_NAME, CITY, ZIP_CODE)
VALUES
    (1, "Jim's Seafood Emporium", "493 Ponderosa Way, Highland Bluffs, CA 95010", "Ponderosa Way", "CA", "California", "Highland Bluffs", "95010");

INSERT INTO `CUSTOMER` (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_PHONE, CUSTOMER_SPENT, ADDRESS, STREET, STATE_ABBR, STATE_NAME, CITY, ZIP_CODE)
VALUES
    (1, "Crab Harvest", "1-800-949-7777", 31411.83, "888 Sunset Drive, Whiskers, CA 95008", "Sunset Drive", "CA", "California", "Whiskers", "95008"),
    (2, "Langers & Levers Suppliers", "1-833-943-1666", 100129.44, "2 Collards Way, Quentin, CA 95019", "Collards Way", "CA", "California", "Quentin", "95019"),
    (3, "J&K's Catering", "1-888-153-1414", 26798.46, "95200 Bend Lane, Myers, CA 95012", "Bend Lane", "CA", "California", "Myers", "95012");

INSERT INTO `VENDOR` (VENDOR_ID, VENDOR_NAME, VENDOR_PHONE, VENDOR_MARKET_ID, ADDRESS, STREET, STATE_ABBR, STATE_NAME, CITY, ZIP_CODE)
VALUES
    (1, "Fry's Fish", "1-833-711-4555", 1, "1123 Rocky Road, Waterloo, CA 95009", "Rocky Road", "CA", "California", "Waterloo", "95009"),
    (2, "Entree Seafood", "1-844-567-1134", 1, "577 Berthed Avenue, Bratislava, CA 95010", "Berthed Avenue", "CA", "California", "Bratislava", "95010");

INSERT INTO `SUPPLIER` (SUPPLIER_ID, SUPPLIER_NAME, SUPPLIER_PHONE, SUPPLIER_VENDOR_ID, ADDRESS, STREET, STATE_ABBR, STATE_NAME, CITY, ZIP_CODE)
VALUES
    (1, "PCL Fisherman's Cooperative", "1-844-599-7068", 1, "2 Rocky Road, Waterloo, CA 95009", "Rocky Road", "CA", "California", "Waterloo", "95009"),
    (2, "Moult Farms", "1-844-991-1880", 1, "39 Berthed Avenue, Bratislava, CA 95010", "Berthed Avenue", "CA", "California", "Bratislava", "95010"),
    (3, "Lion's Wharf Farm", "1-833-214-413", 2, "846 Haven Road, Walcott, CA 94023", "Haven Road", "CA", "California", "Walcott", "94023");

INSERT INTO `TRANSPORTER` (TRANSPORTER_ID, TRANSPORTER_NAME, TRANSPORTER_PHONE, ADDRESS, STREET, STATE_ABBR, STATE_NAME, CITY, ZIP_CODE)
VALUES
    (1, "BIC Trucking", "1-844-113-7000", "42 Paven Way, Aquila, CA 95001", "Paven Way", "CA", "California", "Aquila", "95001"),
    (2, "Fountain Transportation", "1-845-232-1117", "7999 Washington Place, New York City, NY 10013", "Washington Place", "NY", "New York", "New York City", "10013");

INSERT INTO `STALL` (STALL_ID, STALL_NAME, STALL_FEE, STALL_VENDOR_ID, STALL_PRODUCT_THROUGHPUT, STALL_MONEY_THROUGHPUT, RECENT_INSPECTION_DATE, RECENT_INSPECTION_RESULT)
VALUES
    (1, "Fry's Stall", 2499.99, 1, 9123, 290731.13, "2023-07-01", "PASS"),
    (2, "Stall #17", 1999.99, 2, 7812, 23418.81, "2023-07-01", "PASS"),
    (3, "Stall #18", 1799.99, 2, 5617, 18713.10, "2023-07-01", "PASS");

INSERT INTO `INSPECTION` (INSPECTION_ID, INSPECTION_STALL_ID, INSPECTION_DATE, INSPECTION_RESULT)
VALUES
    (1, 1, "2023-01-01", "QUALIFIED PASS"),
    (2, 1, "2023-04-01", "PASS"),
    (3, 1, "2023-07-01", "PASS");

INSERT INTO `CATEGORY` (CATEGORY_ID, CATEGORY_NAME, ALLERGY_PREVALENCE, ALLERGY_DESCRIPTION, ALLERGY_LABEL)
VALUES
    (1, "Shellfish", 14.0, "Shellfish lorem ipsum dolor", "WARNING: blah blah blah"),
    (2, "Fish", 0.9, "Fish lorem ipsum dolor", "WARNING: blah blah blah");

INSERT INTO `PRODUCT` (PRODUCT_ID, PRODUCT_NAME, PRODUCT_STALL_ID, PRODUCT_CATEGORY_ID, PRODUCT_ON_HAND)
VALUES
    (1, "Green Mitten Crab", 1, 1, 818),
    (2, "King Salmon", 1, 2, 419),
    (3, "Albacore Tuna", 2, 2, 141),
    (4, "Pacific Rockfish", 3, 2, 97);

INSERT INTO `CUSTOMER_LINE_ITEM` (ORDER_ID, ORDER_CUSTOMER_ID, ORDER_PRODUCT_ID, DATE, QUANTITY, UNIT_PRICE, ORDER_TRANSPORTER_ID)
VALUES
    (1, 1, 2, "2023-08-14", 130, 19.99, 1),
    (2, 2, 3, "2023-08-15", 3, 16.99, 2),
    (3, 3, 3, "2023-11-11", 101, 16.49, 2);