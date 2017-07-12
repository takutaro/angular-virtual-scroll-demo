import 'package:angular2/core.dart';
import 'package:virtual_scroll/virtual-scroll.dart';
import 'dart:math' as Math;

@Component(
  selector: 'my-app',
  template: '''
    <h1>&lt;virtual-scroll&gt;</h1>

    <button (click)="plus()">PLUS</button>
    <virtual-scroll [items]="items" [chgTrigger]="chgTrigger" (update)="viewPortItems=\$event" style="width:auto; height:75vh;">
      <div *ngFor="let c of viewPortItems;" style="background-color:{{c[1]}}">{{c[0]}}☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆</div>
    </virtual-scroll>
    ''',
  directives: const [VirtualScrollComponent],
)
class AppComponent {
  var colors = ['#88F','#8F8','#8FF','#F88','#F8F','#FF8','#AAA'];
  var items = [];
  int chgTrigger = 0;
  var viewPortItems;

  var _rand = new Math.Random();

  AppComponent() {
    for (int i = 0; i < 100; i++) {
      this.items.add(['$i', colors.elementAt(_rand.nextInt(7))]);
    }
  }
  plus() {
    this.items.add(['${this.items.length}', colors.elementAt(_rand.nextInt(7))]);
    this.chgTrigger++;
  }
}
