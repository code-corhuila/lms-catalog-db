-- Every foreign-key column has its index — rules/2-anexos/A-db-postgres.md, rule 3.
CREATE INDEX idx_idempotency_key_book_id ON catalog.idempotency_key (book_id);
