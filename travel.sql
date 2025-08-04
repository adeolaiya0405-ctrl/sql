-- create database
create database travel_details;
use travel_details;
-- create Passengers Table
create TABLE passengers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    sex ENUM('male', 'female', 'other') NOT NULL,
    age INT, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- create Trips Table
createpassengers TABLE trips (
    id INT AUTO_INCREMENT PRIMARY KEY,
    passenger_id INT NOT NULL,
    passenger_class ENUM('1', '2', '3') NOT NULL,
    ticket_number VARCHAR(30) NOT NULL,
    fare DECIMAL(10,2) NOT NULL,
    cabin VARCHAR(10), 
    parents_children_aboard INT NOT NULL,
    siblings_spouses_aboard INT NOT NULL,
    embarkation_point VARCHAR(50) NOT NULL,
    survived BOOLEAN NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (passenger_id) REFERENCES passengers(id)
);
CREATE TABLE survivors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    passenger_id INT NOT NULL,
    survived BOOLEAN NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES passengers(id)
);
