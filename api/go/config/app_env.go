/*
 * App Env
 * Reads the app environment from config.ini to switch cookie settings between local and hosting.
 */

package config

// IsHosting reports whether config.ini's [app] env key is set to "hosting".
func IsHosting() bool {
	cfg := MustLoadConfig("Failed to load config file for app env.")
	return cfg.Section("app").Key("env").String() == "hosting"
}
