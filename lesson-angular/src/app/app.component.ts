import { Component } from '@angular/core';

export interface Card{
  title:string
  text:string
}

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  toggle = true



  cards: Card[] = [
    {title: 'Card 1', text: 'this is card 1'},
    {title: 'Card 2 here', text: 'this is card 2'},
    {title: 'Card 3 last card', text: 'this is card 3'}
  ]

  toggleCards(){
    this.toggle = !this.toggle
  }
  title = 'lesson-angular';
}
