USE repotadb;

-- customers table
CREATE TABLE IF NOT EXISTS customers
(
    customer_id        int(6) unsigned NOT NULL AUTO_INCREMENT,
    job_report_id      int(6) unsigned NOT NULL,
    customer_name      varchar(50)     NOT NULL,
    customer_complaint varchar(500)    NOT NULL,
    PRIMARY KEY (customer_id),
    FOREIGN KEY (job_report_id) REFERENCES jobreports (job_report_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 6;
