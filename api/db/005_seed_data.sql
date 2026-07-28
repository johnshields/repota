-- REPOTA SEED DATA
-- Sample data for repotadb, run after 000_database.sql through 004_session.sql

USE repotadb;

INSERT INTO workers (worker_id, username, worker_name, hash)
VALUES (141, 'john_shields', 'John Shields', '$2a$10$ttINUB.yZkZUKiKSBqRMf.jzRYIL8.MLMldre63SA5u9DtJjuvMNO'),
       (174, 'steve_mon', 'Steve Maloney', '$2a$10$56hLopYTrwAvJs/4Q84vTOcC.T5KCUmR1.m92gcqkKBnQg7qnW8pW');
COMMIT;

INSERT INTO jobreports (job_report_id, worker_id, date_stamp, vehicle_model, vehicle_reg,
                        vehicle_location,
                        miles_on_vehicle, warranty, breakdown, cause, correction, parts, work_hours,
                        job_report_complete)
VALUES (121, 141, '03-04-2020', 'Ford Focus', '151-DL-2308', 'Gort, Co. Galway', '508538', TRUE, FALSE,
        'The lock on the passenger door was broken.', 'A new lock has been fitted.', '1 DOOR LOCK', '1', TRUE),
       (251, 174, '06-04-2020', 'Toyota Yaris', '08-KY-667', 'Laban, Co. Galway', '648598', TRUE, FALSE,
        'The left back wheel bearing was worn.', 'Fitted a new wheel bearing.', '1 WHEEL BEARING', '2', TRUE),
       (342, 174, '07-04-2020', 'Hyundai i30', '163-TS-1459', 'Barefield, Co. Clare', '700891', TRUE, FALSE,
        'The radio connections were disconnected.', 'The radio connections have been reconnected.', 'NONE', '1', TRUE),
       (456, 141, '08-04-2020', 'Ford Mustang', '54-SF-135', 'Furbogh, Co. Galway', '1007538', TRUE, FALSE,
        'Worn out tyres.', 'New tyres have been fitted.', '4 TYRES', '1', TRUE),
       (543, 141, '12-04-2020', 'Volkswagen Passat', '07-DL-298', 'Westside, Co. Galway', '708538', TRUE, FALSE,
        'Service on vehicle was due.', 'Serviced vehicle.', '1 OIL FILTER', '2', TRUE),
       (651, 174, '14-04-2020', 'Honda Civic', '131-DL-298', 'Ballybane, Co. Galway', '318639', TRUE, TRUE,
        'Cables were eroded.', 'Entire system has been replaced.', '2 CABLES, 2 BRAKE PADS', '3', TRUE);
COMMIT;

INSERT INTO customers (job_report_id, customer_name, customer_complaint)
VALUES (121, 'Freddie Quell', 'The passenger side door will not open.'),
       (251, 'Peggy Dod', 'The left back wheel is shaking.'),
       (342, 'Lucy O''Neill', 'The radio is not turning on.'),
       (456, 'Humphrey Bogart', 'The car needs new tyres.'),
       (543, 'Daniel Plainview', 'The car is due a service.'),
       (651, 'Mick Fanning', 'The hand brake is stuck.');
COMMIT;

-- verify seeded data
SELECT * FROM jobreports;
SELECT * FROM customers;
SELECT * FROM workers;
SELECT * FROM session;
