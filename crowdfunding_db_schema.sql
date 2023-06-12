--Use the information from the ERD to create a table schema for each CSV file.

--Putting these here for easy use:
--DROP TABLE category
--DROP TABLE subcategory
--DROP TABLE campaign
--DROP TABLE contacts


CREATE TABLE category(
    category_id character varying NOT NULL,
    category character varying NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory(
    subcategory_id character varying NOT NULL,
    subcategory character varying NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts(
    contact_id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying,
    PRIMARY KEY (contact_id)
);
	
CREATE TABLE campaign(
    cf_id integer NOT NULL,
    contact_id integer,
    company_name character varying,
    description character varying,
    goal numeric,
    pledged numeric,
    outcome character varying,
    backers_count integer,
    country character varying,
    currency character varying,
    launched_date date,
    end_date date,
    category_id character varying,
    subcategory_id character varying,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
 );
 
 --Verify table creation
 
 SELECT *
 FROM contacts;
 
 SELECT *
 FROM category;
 
 SELECT *
 FROM subcategory;
 
 SELECT *
 FROM campaign;