-- NOLOGIN: these carry permissions only. The infrastructure creates the
-- actual login users from secrets and grants them one of these roles
-- (rules/2-anexos/A-db-postgres.md, rule 10).
CREATE ROLE catalog_reader NOLOGIN;
CREATE ROLE catalog_writer NOLOGIN;
