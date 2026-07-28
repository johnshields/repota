/*
 * Worker Account
 * Model for registered users (workers).
 */

package models

type WorkerAccount struct {
	Id         int
	Username   string
	WorkerName string
	Password   string
}
