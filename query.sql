CREATE DATABASE Football_Ticket_Booking_System; 
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    role VARCHAR(50) CHECK (role IN ('Ticket Manager', 'Football Fan')),
    phone_number VARCHAR(50)
);
CREATE TABLE Matches (
    match_id SERIAL PRIMARY KEY,
    fixture VARCHAR(100) ,
    tournament_category VARCHAR(100),
    base_ticket_price int CHECK (base_ticket_price > 0),
    match_status VARCHAR(50) CHECK (match_status IN ('Available', 'Selling Fast', 'Sold Out', 'Postponed'))
);
CREATE TABLE Bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    match_id INT REFERENCES Matches(match_id),
    seat_number VARCHAR(100),
    payment_status VARCHAR(50) CHECK (payment_status IN ('Pending', 'Confirmed', 'Cancelled', 'Refunded')),
    total_cost int CHECK (total_cost > 0)
);
