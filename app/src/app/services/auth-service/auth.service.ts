import {Injectable} from '@angular/core';
import {CookieService} from 'ngx-cookie-service';

/**
 * @title Authentication Service
 * @desc Checks for user's cookie in the application storage.
 */

@Injectable({
    providedIn: 'root'
})
export class AuthService {

    constructor(private cookieService: CookieService) {
    }

    /**
     * @title Logged In
     * @desc Get the cookie 'session_id' set by API.
     */
    loggedIn() {
        return !!this.cookieService.get('session_id');
    }

}
