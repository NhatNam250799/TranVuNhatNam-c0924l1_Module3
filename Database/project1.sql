create database book_shop1;
use book_shop1;
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
	role ENUM('admin', 'customer') DEFAULT 'customer'
);
CREATE TABLE cart
(
    id        INT         NOT NULL AUTO_INCREMENT,
    user_id    INT         NOT NULL,
    createdAt DATETIME    NOT NULL,
    updatedAt DATETIME    NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES Users (user_id)
);
CREATE TABLE cart_item
(
    id        INT         NOT NULL AUTO_INCREMENT,
    cart_Id    INT         NOT NULL,
    quantity  INT         NOT NULL,
    createdAt DATETIME    NOT NULL,
    updatedAt DATETIME    NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (cart_Id) REFERENCES cart (id) ON DELETE CASCADE
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    description TEXT,
    cover_image VARCHAR(255),
    published_year INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
