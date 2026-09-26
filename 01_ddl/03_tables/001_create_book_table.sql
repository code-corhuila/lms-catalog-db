-- The Catalog bounded context's aggregate root — one row per title
-- (library-docs/02-domain/entities-and-rules.md). Named "book" (singular),
-- not "books" — rules/2-anexos/A-db-postgres.md, rule 1.
--
-- isbn's uniqueness is enforced by idx_book_isbn (01_ddl/10_indexes), not an
-- inline UNIQUE here — kept with the other explicitly-named constraints, per
-- rule 4.
CREATE TABLE catalog.book (
  id                 UUID        PRIMARY KEY DEFAULT gen_random_uuid(),

  title              text        NOT NULL CHECK (char_length(title) BETWEEN 1 AND 300),
  author             text        NOT NULL CHECK (char_length(author) BETWEEN 1 AND 200),
  isbn               text        NOT NULL CHECK (char_length(isbn) BETWEEN 1 AND 20),
  category           text        NOT NULL CHECK (char_length(category) BETWEEN 1 AND 100),
  year               integer     NOT NULL,

  total_copies       integer     NOT NULL CHECK (total_copies >= 1),
  available_copies   integer     NOT NULL CHECK (available_copies >= 0 AND available_copies <= total_copies),

  created_at         timestamptz NOT NULL DEFAULT now(),
  updated_at         timestamptz NOT NULL DEFAULT now()
);
