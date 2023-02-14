-- Managing Table

-- Q1
CREATE TABLE posts (
	postID INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    content VARCHAR(200) NOT NULL,
    PRIMARY KEY (postID)
);

SHOW COLUMNS FROM posts;

-- Q2
ALTER TABLE posts
ADD writer VARCHAR(100) DEFAULT 'Anonymous',
ADD created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

SHOW COLUMNS FROM posts;

-- Q3
ALTER TABLE posts
MODIFY content TEXT NULL;

SHOW COLUMNS FROM posts;

-- Q4
ALTER TABLE posts
DROP COLUMN writer;

SHOW COLUMNS FROM posts;

-- Q5
DROP TABLE posts;

-- Q6
CREATE TABLE IF NOT EXISTS posts (
	postID INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    content TEXT NOT NULL,
    writer VARCHAR(20) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (postID)
);

SHOW COLUMNS FROM posts;

-- Q7
DROP TABLE IF EXISTS posts;