/*
 * Error
 * Model for sending error messages to client.
 */

package models

type Error struct {
	Code int32 `json:"code"`

	Messages string `json:"messages"`
}
