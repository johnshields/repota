/*
 * Session Model
 * Model for session token and expiry time.
 */

package models

type Session struct {
	Token  string
	Expiry int
}
