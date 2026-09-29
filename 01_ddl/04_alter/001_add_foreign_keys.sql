ALTER TABLE catalog.idempotency_key
  ADD CONSTRAINT fk_idempotency_key_book_id
  FOREIGN KEY (book_id) REFERENCES catalog.book (id)
  ON DELETE CASCADE;
