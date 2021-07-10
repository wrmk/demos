import {Component,Input, OnInit} from '@angular/core';
import {Card} from '../app.component';

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls:['./card.component.scss'],
 // interpolation: ['{{','}}'] #какие символы для динамического обозначения переменных

})
export class CardComponent implements OnInit {

  @Input() card: Card
  @Input() index: number

  title= 'My card title'
  text: string = 'My sample text'
  textColor = 'black'

  cardDate: Date = new Date()

  changeTitle(){
    this.card.title = 'Title has been changed'
  }

  inputHandler (value) {
    // const value = event.target.value
    this.title = value
  }



  // disabled = false

  // number=42

  // array = [1,1,2,3,6,18]

  // obj = {name: 'Vlad', info:{age: 25, job: 'Frontend'}}

  // getInfo(){
  //   return 'this is my info'

  // }

  // imgUrl = 'https://angular.io/assets/images/logos/angular/angular.png'

  ngOnInit() {
    // setTimeout(() => {
    //   this.imgUrl = 'https://assets.codepen.io/t-1003/internal/avatars/teams/default.png';
    //   this.disabled = true
    // },3000)
  }


}