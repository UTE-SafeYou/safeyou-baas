-- Create the 'province' table
CREATE TABLE IF NOT EXISTS province (
    idProvince VARCHAR(2) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create an index on the 'name' column for the 'province' table
CREATE INDEX IF NOT EXISTS idx_province_name ON province(name);

-- Create the 'district' table
CREATE TABLE IF NOT EXISTS district (
    idProvince VARCHAR(2) REFERENCES province(idProvince) ON DELETE CASCADE,
    idDistrict VARCHAR(3) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    CONSTRAINT fk_district_province FOREIGN KEY (idProvince) REFERENCES province(idProvince) ON DELETE CASCADE
);

-- Create an index on the 'name' column for the 'district' table
CREATE INDEX IF NOT EXISTS idx_district_name ON district(name);

-- Create the 'commune' table
CREATE TABLE IF NOT EXISTS commune (
    idCommune SERIAL PRIMARY KEY,
    idDistrict VARCHAR(3) REFERENCES district(idDistrict) ON DELETE CASCADE,
    name VARCHAR(255) NOT NULL,
    CONSTRAINT fk_commune_district FOREIGN KEY (idDistrict) REFERENCES district(idDistrict) ON DELETE CASCADE
);

-- Create an index on the 'name' column for the 'commune' table
CREATE INDEX IF NOT EXISTS idx_commune_name ON commune(name);

