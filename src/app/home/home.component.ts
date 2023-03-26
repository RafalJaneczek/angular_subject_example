import { Component } from '@angular/core';
import { MessageService } from '../services/message.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.less']
})
export class HomeComponent {
  constructor(private messageService: MessageService){}

  public sendMessage(): void {
    this.messageService.sendMessage('Message from Home Component to App Component!');
  }

  public clearMessages(): void {
    this.messageService.clearMessages();
  }

}
