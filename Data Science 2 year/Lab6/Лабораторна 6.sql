CREATE TABLE categories 
(
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255)
);

CREATE TABLE news
 (
    news_id INT PRIMARY KEY,
    category_id INT,
    title_name VARCHAR(255),
    content _text TEXT,
    
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE comments
 (
    comment_id INT PRIMARY KEY,
    news_id INT,
    comment_text TEXT,
    comment_date TIMESTAMP,
    FOREIGN KEY (news_id) REFERENCES News(news_id)
);

CREATE TABLE ratings
 (
    rating_id INT PRIMARY KEY,
    news_id INT,
    ip_address VARCHAR(45),
    rating_value INT CHECK (rating_value >= 1 AND rating_value <= 5),
    UNIQUE(news_id, ip_address), -- Унікальність оцінки для кожної новини від одного IP
    FOREIGN KEY (news_id) REFERENCES News(news_id)
);
