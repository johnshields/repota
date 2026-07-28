/*
 * Loader
 * Loads config.ini for reading application settings.
 */

package config

import (
	"gopkg.in/ini.v1"
	"log"
	"os"
)

// LoadConfig loads config.ini for reading application settings.
func LoadConfig() (*ini.File, error) {
	return ini.Load(ConfigPath)
}

// MustLoadConfig loads config.ini or exits the service, logging context on failure.
func MustLoadConfig(context string) *ini.File {
	cfg, err := LoadConfig()
	if err != nil {
		log.Println(context, err)
		os.Exit(1) // Failed to start service
	}
	return cfg
}
