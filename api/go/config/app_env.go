/*
 * John Shields
 * Horton - API version: 1.0.0
 *
 * App Env
 * Reads the app environment from config.ini to switch cookie settings between local and hosting.
 */

package config

import (
	"gopkg.in/ini.v1"
	"log"
	"os"
)

// IsHosting reports whether config.ini's [app] env key is set to "hosting".
func IsHosting() bool {
	cfg, err := ini.Load(ConfigPath)
	if err != nil {
		log.Println("Failed to load config file for app env.", err)
		os.Exit(1) // Failed to start service
	}
	return cfg.Section("app").Key("env").String() == "hosting"
}
