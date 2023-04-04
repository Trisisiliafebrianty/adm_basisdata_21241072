CREATE TABLE `EMPLOYEE` (
  `employeeNumber` int PRIMARY KEY,
  `lastName` varchar(255),
  `firstName` varchar(255),
  `extention` varchar(255),
  `email` varchar(255),
  `officeCode` int,
  `reportsTo` varchar(255),
  `jobTitle` varchar(255)
);

CREATE TABLE `OFFICES` (
  `officeCode` int PRIMARY KEY,
  `city` varchar(255),
  `phone` int,
  `addressLine1` varchar(255),
  `addressLine2` varchar(255),
  `states` varchar(255),
  `country` varchar(255),
  `postalCode` int,
  `temitory` varchar(255)
);

CREATE TABLE `PRODUCTLINES` (
  `productlines` int PRIMARY KEY,
  `textDescription` varchar(255),
  `htmlDescription` varchar(255),
  `relationship` varchar(255),
  `image` varchar(255)
);

CREATE TABLE `PRODUCTS` (
  `productCode` int PRIMARY KEY,
  `productName` varchar(255),
  `pruductLine` varchar(255),
  `productScale` varchar(255),
  `productVendor` varchar(255),
  `productDescription` varchar(255),
  `quantitylnstock` varchar(255),
  `buyPrice` varchar(255),
  `MRPS` varchar(255)
);

CREATE TABLE `CUSTOMER` (
  `costumberNumber` int PRIMARY KEY,
  `coustumberNumber` varchar(255),
  `contactLastName` varchar(255),
  `contactfirstName` varchar(255),
  `phone` int,
  `addressLine1` varchar(255),
  `addressLine2` varchar(255),
  `city` varchar(255),
  `states` varchar(255),
  `postalCode` int,
  `salesRepEmployeeNumber` int,
  `creditLimit` int
);

CREATE TABLE `ORDERDETAILS` (
  `orderNumber` int PRIMARY KEY,
  `productCode` int,
  `quantityOrdered` varchar(255),
  `priceEach` varchar(255),
  `orderLineNumber` int
);

CREATE TABLE `OREDERS` (
  `orderNumber` int PRIMARY KEY,
  `orderDate` varchar(255),
  `requiredDate` varchar(255),
  `shippedDate` varchar(255),
  `status` varchar(255),
  `comments` varchar(255),
  `costumberNumber` int
);

CREATE TABLE `PAYMENTS` (
  `costumberNumber` intV PRIMARY KEY,
  `checkNumber` int,
  `paymentDate` varchar(255),
  `amount` varchar(255)
);

ALTER TABLE `EMPLOYEE` ADD FOREIGN KEY (`employeeNumber`) REFERENCES `EMPLOYEE` (`reportsTo`);

ALTER TABLE `OFFICES` ADD FOREIGN KEY (`addressLine2`) REFERENCES `EMPLOYEE` (`firstName`);

ALTER TABLE `CUSTOMER` ADD FOREIGN KEY (`contactfirstName`) REFERENCES `EMPLOYEE` (`employeeNumber`);

ALTER TABLE `ORDERDETAILS` ADD FOREIGN KEY (`quantityOrdered`) REFERENCES `PRODUCTS` (`pruductLine`);

ALTER TABLE `OREDERS` ADD FOREIGN KEY (`status`) REFERENCES `CUSTOMER` (`contactLastName`);

ALTER TABLE `PAYMENTS` ADD FOREIGN KEY (`checkNumber`) REFERENCES `CUSTOMER` (`postalCode`);

ALTER TABLE `OREDERS` ADD FOREIGN KEY (`orderNumber`) REFERENCES `ORDERDETAILS` (`orderLineNumber`);
