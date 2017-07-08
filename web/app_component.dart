import 'package:angular2/core.dart';
import 'package:virtual_scroll/virtual-scroll.dart';
import 'dart:math' as Math;

@Component(
  selector: 'my-app',
  template: '''
    <h1>&lt;virtual-scroll&gt;</h1>

    <virtual-scroll [items]="items" (update)="viewPortItems=\$event" style="width:auto; height:75vh;">
      <div *ngFor="let c of viewPortItems;" style="background-color:{{c[1]}}">{{c[0]}}☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆</div>
    </virtual-scroll>
    ''',
  directives: const [VirtualScrollComponent],
)
class AppComponent {
  var colors = ['#88F','#8F8','#8FF','#F88','#F8F','#FF8','#AAA'];
  var items = [];
  var viewPortItems;

  AppComponent() {
    var rand = new Math.Random();
    for (int i = 0; i < 100000; i++) {
      items.add(['$i', colors.elementAt(rand.nextInt(7))]);
    }
  }
}
