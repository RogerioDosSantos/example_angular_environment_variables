import { Component } from '@angular/core';
//import {environment} from '../../environments/environment';
import {environment} from '../environments/environment';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  environmentProduction = environment.production;
  environmentRunningEnvironment = environment.runningEnvironment;
  environmentVar01 = environment.var01;
  environmentVar02 = environment.var02;
  environmentVar03 = environment.var03;
}
