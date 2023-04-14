-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS industries;

CREATE TABLE industries (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT
);


CREATE TABLE activities (
id INTEGER PRIMARY KEY AUTOINCREMENT,
contact_id TEXT,
salespersons_id TEXT,
activity_type TEXT,
date TEXT,
notes TEXT
);

CREATE TABLE companies (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT
);

CREATE TABLE salespersons (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT,
last_name TEXT,
email TEXT,
address TEXT
);

CREATE TABLE industries (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT
);

CREATE TABLE industry_memberships (
id INTEGER PRIMARY KEY AUTOINCREMENT,
company_id TEXT,
industry_id TEXT
);
