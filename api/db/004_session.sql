USE repotadb;

-- session table for login sessions
CREATE TABLE session
(
    id           VARCHAR(255)        NOT NULL, -- UUID
    user         INTEGER(4) unsigned NOT NULL,
    expire_after INT(8)              NOT NULL, -- Unix epoch time store

    PRIMARY KEY (id),
    FOREIGN KEY (user) REFERENCES workers (worker_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB;
