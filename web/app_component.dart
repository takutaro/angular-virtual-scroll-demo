import 'package:angular2/core.dart';
import 'package:virtual_scroll/virtual-scroll.dart';
import 'dart:math' as Math;

class Item {
  String nbr, color, name;
  Item(this.nbr, this.color, this.name) {}
}

@Component(
  selector: 'my-app',
  styles: const ['''
    .scrollview {
      width: auto;
      height:75vh;
    }
    .item {
      display: flex;
      background-color: #EEE;
      margin-bottom: 2px;
    }
    .circle {
      margin: 4px;
      margin-right: 16px;
      width: 50px;
      height: 50px;
      border-radius: 25px;
      display: flex;
    	align-items: center;
      justify-content: center;
      color: white;
    }
  '''],
  template: '''
    <h1>&lt;virtual-scroll&gt;</h1>

    <button (click)="add()" style="margin: 4px;">ADD</button>

    <virtual-scroll [items]="items" [chgTrigger]="chgTrigger" (update)="viewPortItems=\$event" class="scrollview">
      <div *ngFor="let item of viewPortItems;" class="item">
        <span class="circle" style="background-color:{{item.color}}">{{item.nbr}}</span>
        {{item.name}}<br>Hello.<br>Good bye.
      </div>
    </virtual-scroll>
    ''',
  directives: const [VirtualScrollComponent],
)
class AppComponent {
  var colors = ['#222','#228','#282','#288','#F22','#828','#888'];
  var names = [ "Αα アルファ", "Ββ ベータ", "Γγ ガンマ", "Δδ デルタ", "Εε エプシロン", "Ζζ ゼータ", "Ηη エータ", "Θθ テータ",
                "Ιι イオタ", "Κκ カッパ", "Λλ ラムダ", "Μμ ミュー", "Νν ニュー", "Ξξ クシー", "Οο オミクロン", "Ππ パイ",
                "Ρρ ロー", "Σσς シグマ", "Ττ タウ", "Υυ ユプシロン", "Φφ ファイ", "Χχ キー", "Ψψ プシー", "Ωω オメガ" ];
  List<Item> items = [];
  int chgTrigger = 0;
  var viewPortItems;
  var _rand = new Math.Random();

  AppComponent() {
    for (int i = 0; i < 10000; i++) {
      this.items.add(new Item(
        '$i',
        colors.elementAt(_rand.nextInt(colors.length)),
        names.elementAt(_rand.nextInt(names.length))
      ));
    }
  }
  add() {
    this.items.add(new Item(
      '${this.items.length}',
      colors.elementAt(_rand.nextInt(colors.length)),
      names.elementAt(_rand.nextInt(names.length))
    ));
    this.chgTrigger++;
  }
}
