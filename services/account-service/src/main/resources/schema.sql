CREATE TABLE IF NOT EXISTS accounts (
                                        id SERIAL PRIMARY KEY,
                                        account_number VARCHAR(255) UNIQUE NOT NULL,
    balance DECIMAL(19, 4) NOT NULL
    );