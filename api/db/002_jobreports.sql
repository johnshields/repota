USE repotadb;

-- jobreports table
CREATE TABLE IF NOT EXISTS jobreports
(
    job_report_id       int(6) unsigned NOT NULL AUTO_INCREMENT,
    worker_id           int(5) unsigned NOT NULL,
    date_stamp          varchar(20)     NOT NULL,
    vehicle_model       varchar(60)     NOT NULL,
    vehicle_reg         varchar(60)     NOT NULL,
    vehicle_location    varchar(500)    NOT NULL,
    miles_on_vehicle    int(20)         NOT NULL,
    warranty            boolean         NOT NULL DEFAULT 1,
    breakdown           boolean         NOT NULL DEFAULT 0,
    cause               varchar(500),
    correction          varchar(500),
    parts               varchar(500),
    work_hours          int(10),
    job_report_complete boolean         NOT NULL DEFAULT 0,
    PRIMARY KEY (job_report_id),
    FOREIGN KEY (worker_id) REFERENCES workers (worker_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 6;
