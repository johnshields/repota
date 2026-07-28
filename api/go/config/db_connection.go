/*
 * DB Connection
 * Logs into MySQL with the details in config.ini and uses the Repota Database.
 */

package config

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
)

// DbConn use the config.ini file to log into MySQL for database access.
func DbConn() (db *sql.DB) {
	// Load config file.
	cfg := MustLoadConfig("Failed to load config file for database.")
	// Set MySQL details from from config file.
	dbName := cfg.Section("database").Key("db_name")
	username := cfg.Section("database").Key("username")
	ip := cfg.Section("database").Key("ip")
	password := cfg.Section("database").Key("password")

	// Log into MySQL driver with details from config file.
	db, err := sql.Open("mysql", fmt.Sprintf("%s:%s@tcp(%s:3306)/%s", username, password, ip, dbName))

	if err != nil {
		panic(err.Error())
	}
	return db
}
