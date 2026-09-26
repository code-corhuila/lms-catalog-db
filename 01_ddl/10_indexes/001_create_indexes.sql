CREATE UNIQUE INDEX idx_book_isbn ON catalog.book (isbn);
CREATE INDEX idx_book_title ON catalog.book (title);
CREATE INDEX idx_book_author ON catalog.book (author);
CREATE INDEX idx_book_category ON catalog.book (category);
