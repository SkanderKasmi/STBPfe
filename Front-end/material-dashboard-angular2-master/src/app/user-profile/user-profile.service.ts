import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UserProfileService {
  private apiUrl = 'http://registrationapi:8004/api/v1/Register'; 

  constructor(private http: HttpClient) {}

  updateProfile(profileData: any): Observable<any> {
    return this.http.post<any>(this.apiUrl, profileData);
  }
}
