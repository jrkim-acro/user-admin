CREATE TABLE USERS
(
    id          SERIAL PRIMARY KEY,
    username    VARCHAR(50) NOT NULL,
    nickName    VARCHAR(50) NOT NULL,
    gender      VARCHAR(10),
    isActive    BOOLEAN,
    type        VARCHAR(20) NOT NULL,
    description VARCHAR(255),
    createdAt   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deletedAt   TIMESTAMP DEFAULT NULL
);

CREATE TABLE ADMINS
(
    id        SERIAL PRIMARY KEY,
    username  VARCHAR(50)  NOT NULL,
    nickName  VARCHAR(50)  NOT NULL,
    password  VARCHAR(255) NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE auth_tokens
(
    id         SERIAL PRIMARY KEY,
    user_id    INT       NOT NULL,
    token      TEXT      NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);


INSERT INTO USERS (username, nickName, gender, isActive, type, description, createdAt, updatedAt, deletedAt)
VALUES ('john_doe', 'Johnny', 'Male', TRUE, 'Admin', 'System administrator', NOW(), NOW(), NULL),
       ('jane_smith', 'Janie', 'Female', TRUE, 'User', 'Loves photography', NOW(), NOW(), NULL),
       ('michael_89', 'Mike', 'Male', FALSE, 'User', 'Gamer and tech enthusiast', NOW(), NOW(), NULL),
       ('sarah_w', 'Sari', 'Female', TRUE, 'Moderator', 'Enjoys reading novels', NOW(), NOW(), NULL),
       ('chris_p', 'Chris', 'Non-binary', TRUE, 'User', 'Traveler and blogger', NOW(), NOW(), NULL),
       ('emily_rose', 'Em', 'Female', FALSE, 'User', 'Learning how to cook', NOW(), NOW(), NULL),
       ('david_k', 'Dave', 'Male', TRUE, 'Admin', 'Cybersecurity expert', NOW(), NOW(), NULL),
       ('linda_m', 'Lindy', 'Female', FALSE, 'User', 'Yoga instructor', NOW(), NOW(), NULL),
       ('peter_pan', 'Pete', 'Male', TRUE, 'User', 'Avid movie watcher', NOW(), NOW(), NULL),
       ('amy_lee', 'Amy', 'Female', TRUE, 'Moderator', 'Passionate about music', NOW(), NOW(), NULL);


INSERT INTO ADMINS (username, nickName, password, createdAt)
VALUES ('admin_01', 'SuperAdmin', 'hashed_password_1', NOW()),
       ('admin_02', 'RootMaster', 'hashed_password_2', NOW()),
       ('admin_03', 'SystemKing', 'hashed_password_3', NOW()),
       ('admin_04', 'GodMode', 'hashed_password_4', NOW());