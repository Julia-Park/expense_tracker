CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount numeric(6,2) NOT NULL CONSTRAINT positive_amount CHECK(amount >= 0),
  memo text NOT NULL,
  created_on date NOT NULL DEFAULT current_date
);
