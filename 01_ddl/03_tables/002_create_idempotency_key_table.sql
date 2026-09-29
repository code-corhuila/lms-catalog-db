-- Backs internal/adapter/out/idempotency's durable adapter in lms-catalog-api
-- (rules/2-anexos/A-db-postgres.md's own idempotency_key example, and
-- rules/2-anexos/C-api-hexagonal.md numeral 5.3.8).
CREATE TABLE catalog.idempotency_key (
  key         text        PRIMARY KEY CHECK (char_length(key) BETWEEN 8 AND 128),
  book_id     UUID        NOT NULL,
  created_at  timestamptz NOT NULL DEFAULT now()
);
