import 'dart:math' as Math;
import 'package:angular/angular.dart';
import 'package:virtual_scroll/virtual_scroll.dart';

class Item {
  String nbr, color, name;
  Item(this.nbr, this.color, this.name) {}
}

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [VirtualScrollComponent, NgFor],
)
class AppComponent {
  var colors = ['#222', '#228', '#282', '#288', '#F22', '#828', '#888'];
  var names = [
    "Αα アルファ",
    "Ββ ベータ",
    "Γγ ガンマ",
    "Δδ デルタ",
    "Εε エプシロン",
    "Ζζ ゼータ",
    "Ηη エータ",
    "Θθ テータ",
    "Ιι イオタ",
    "Κκ カッパ",
    "Λλ ラムダ",
    "Μμ ミュー",
    "Νν ニュー",
    "Ξξ クシー",
    "Οο オミクロン",
    "Ππ パイ",
    "Ρρ ロー",
    "Σσς シグマ",
    "Ττ タウ",
    "Υυ ユプシロン",
    "Φφ ファイ",
    "Χχ キー",
    "Ψψ プシー",
    "Ωω オメガ"
  ];
  List<Item> items = [];
  var viewPortItems;
  var _rand = Math.Random();

  AppComponent() {
    for (int i = 0; i < 10000; i++) {
      this.items.add(Item(
            '$i',
            colors.elementAt(_rand.nextInt(colors.length)),
            names.elementAt(_rand.nextInt(names.length)),
          ));
    }
  }
  add() {
    this.items.add(Item(
          '${this.items.length}',
          colors.elementAt(_rand.nextInt(colors.length)),
          names.elementAt(_rand.nextInt(names.length)),
        ));
    this.items = this.items.toList(); // Make new list to detect changes.
  }
}
