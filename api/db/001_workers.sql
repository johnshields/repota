USE repotadb;

-- workers table
CREATE TABLE IF NOT EXISTS workers
(
    worker_id   int(5) unsigned NOT NULL AUTO_INCREMENT,
    username    varchar(20)     NOT NULL UNIQUE,
    worker_name varchar(50)     NOT NULL,
    hash        varchar(255)    NOT NULL,
    PRIMARY KEY (worker_id),
    UNIQUE KEY (worker_name)
) ENGINE = InnoDB
  AUTO_INCREMENT = 6;
