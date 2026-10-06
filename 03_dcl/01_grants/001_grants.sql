GRANT USAGE ON SCHEMA catalog TO catalog_reader, catalog_writer;

GRANT SELECT ON catalog.book TO catalog_reader;
GRANT SELECT, INSERT, UPDATE ON catalog.book TO catalog_writer;
