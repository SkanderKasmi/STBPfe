import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { UserProfileService } from './user-profile.service';



@Component({
  selector: 'app-user-profile',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css']
})
export class UserProfileComponent {
  
  profileForm: FormGroup;
  showEditProfileCard: boolean = true;
  
  constructor(private fb: FormBuilder, private UserProfileService: UserProfileService) {
    this.profileForm = this.fb.group({
      civility: [''],
      firstName: [''],
      lastName: [''],
      email: [''],
      phoneNumber: [''],
      birthDate: [''],
      address: this.fb.group({
        city: [''],
        country: [''],
        governance: [''],
        number: [''],
        street: [''],
        postalCode: ['']
      }),
      isEmailValid: ['false'],
      isNumberValid: ['false']
    });
  }

  
  onSubmit() {
    if (this.profileForm.valid) {
      this.UserProfileService.updateProfile(this.profileForm.value).subscribe(
        response => {
          console.log('Profile updated successfully', response);
          this.switchCard();
        },
        error => {
          console.error('Error updating profile', error);
        }
      );
    }
  }

  switchCard() {
    this.showEditProfileCard = !this.showEditProfileCard;
  }

}
