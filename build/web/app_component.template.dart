// **************************************************************************
// Generator: Instance of 'Compiler'
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'app_component.dart';
export 'app_component.dart';
import 'package:angular/angular.dart';
import 'package:virtual_scroll/virtual_scroll.dart';
import 'app_component.template.dart';
import 'dart:math' as Math;
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'app_component.template.dart' as _ref0;
import 'package:angular/angular.template.dart' as _ref1;
import 'package:virtual_scroll/virtual_scroll.template.dart' as _ref2;
import 'package:angular/src/core/linker/app_view.dart';
import 'app_component.dart' as import1;
import 'dart:html' as import2;
import 'package:virtual_scroll/src/virtual_scroll.template.dart' as import3;
import 'package:virtual_scroll/src/virtual_scroll.dart' as import4;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import6;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/view_type.dart' as import8;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import10;
import 'package:angular/angular.dart';
import 'package:angular/src/core/linker/template_ref.dart';

const List<dynamic> styles$AppComponent = const ['.scrollview._ngcontent-%COMP% { width:auto; height:75vh; } .item._ngcontent-%COMP% { display:flex; background-color:#EEE; margin-bottom:2px; } .circle._ngcontent-%COMP% { margin:4px; margin-right:16px; width:50px; height:50px; border-radius:25px; display:flex; align-items:center; justify-content:center; color:white; }'];

class ViewAppComponent0 extends AppView<import1.AppComponent> {
  import2.Element _el_0;
  import2.Element _el_2;
  import3.ViewVirtualScrollComponent0 _compView_2;
  import4.VirtualScrollComponent _VirtualScrollComponent_2_5;
  ViewContainer _appEl_3;
  import6.NgFor _NgFor_3_9;
  import2.ButtonElement _el_4;
  var _expr_0;
  var _expr_1;
  static RenderComponentType _renderType;
  ViewAppComponent0(AppView<dynamic> parentView, int parentIndex) : super(import8.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    rootEl = import2.document.createElement('my-app');
    _renderType ??= import10.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$AppComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef<import1.AppComponent> build() {
    final _rootEl = rootEl;
    final import2.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    var doc = import2.document;
    _el_0 = createAndAppend(doc, 'h1', parentRenderNode);
    addShimE(_el_0);
    import2.Text _text_1 = new import2.Text('<virtual-scroll>');
    _el_0.append(_text_1);
    _compView_2 = new import3.ViewVirtualScrollComponent0(this, 2);
    _el_2 = _compView_2.rootEl;
    parentRenderNode.append(_el_2);
    _el_2.className = 'scrollview';
    addShimC(_el_2);
    _VirtualScrollComponent_2_5 = new import4.VirtualScrollComponent(_el_2);
    var _anchor_3 = ngAnchor.clone(false);
    _appEl_3 = new ViewContainer(3, 2, this, _anchor_3);
    TemplateRef _TemplateRef_3_8 = new TemplateRef(_appEl_3, viewFactory_AppComponent1);
    _NgFor_3_9 = new import6.NgFor(_appEl_3, _TemplateRef_3_8);
    _compView_2.create(_VirtualScrollComponent_2_5, [
      [_appEl_3]
    ]);
    _el_4 = createAndAppend(doc, 'button', parentRenderNode);
    createAttr(_el_4, 'style', 'margin: 4px;');
    addShimC(_el_4);
    import2.Text _text_5 = new import2.Text('ADD');
    _el_4.append(_text_5);
    final subscription_0 = _VirtualScrollComponent_2_5.update.listen(eventHandler1(_handle_update_2_0));
    _el_4.addEventListener('click', eventHandler0(ctx.add));
    init(const [], [subscription_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import1.AppComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    final currVal_0 = _ctx.items;
    if (!identical(_expr_0, currVal_0)) {
      _VirtualScrollComponent_2_5.items = currVal_0;
      _expr_0 = currVal_0;
    }
    if (firstCheck) {
      _VirtualScrollComponent_2_5.ngOnInit();
    }
    final currVal_1 = _ctx.viewPortItems;
    if (!identical(_expr_1, currVal_1)) {
      _NgFor_3_9.ngForOf = currVal_1;
      _expr_1 = currVal_1;
    }
    _NgFor_3_9.ngDoCheck();
    _appEl_3.detectChangesInNestedViews();
    _compView_2.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_3?.destroyNestedViews();
    _compView_2?.destroy();
    _VirtualScrollComponent_2_5.ngOnDestroy();
  }

  void _handle_update_2_0($event) {
    ctx.viewPortItems = $event;
  }
}

AppView<import1.AppComponent> viewFactory_AppComponent0(AppView<dynamic> parentView, int parentIndex) {
  return new ViewAppComponent0(parentView, parentIndex);
}

class _ViewAppComponent1 extends AppView<import1.AppComponent> {
  import2.DivElement _el_0;
  import2.Element _el_1;
  import2.Text _text_2;
  import2.Text _text_3;
  import2.Element _el_4;
  import2.Element _el_6;
  var _expr_0;
  var _expr_1;
  var _expr_2;
  _ViewAppComponent1(AppView<dynamic> parentView, int parentIndex) : super(import8.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    componentType = ViewAppComponent0._renderType;
  }
  @override
  ComponentRef<import1.AppComponent> build() {
    var doc = import2.document;
    _el_0 = doc.createElement('div');
    _el_0.className = 'item';
    addShimC(_el_0);
    _el_1 = createSpanAndAppend(doc, _el_0);
    _el_1.className = 'circle';
    addShimE(_el_1);
    _text_2 = new import2.Text('');
    _el_1.append(_text_2);
    _text_3 = new import2.Text('');
    _el_0.append(_text_3);
    _el_4 = createAndAppend(doc, 'br', _el_0);
    addShimE(_el_4);
    import2.Text _text_5 = new import2.Text('Hello.');
    _el_0.append(_text_5);
    _el_6 = createAndAppend(doc, 'br', _el_0);
    addShimE(_el_6);
    import2.Text _text_7 = new import2.Text('Good bye.');
    _el_0.append(_text_7);
    init0(_el_0);
    return null;
  }

  @override
  void detectChangesInternal() {
    final local_item = locals['\$implicit'];
    final currVal_0 = import10.interpolate1('background-color:', local_item.color, '');
    if (!identical(_expr_0, currVal_0)) {
      setProp(_el_1, 'style', import10.appViewUtils.sanitizer.sanitizeStyle(currVal_0));
      _expr_0 = currVal_0;
    }
    final currVal_1 = import10.interpolate0(local_item.nbr);
    if (!identical(_expr_1, currVal_1)) {
      _text_2.text = currVal_1;
      _expr_1 = currVal_1;
    }
    final currVal_2 = import10.interpolate0(local_item.name);
    if (!identical(_expr_2, currVal_2)) {
      _text_3.text = currVal_2;
      _expr_2 = currVal_2;
    }
  }
}

AppView<import1.AppComponent> viewFactory_AppComponent1(AppView<dynamic> parentView, int parentIndex) {
  return new _ViewAppComponent1(parentView, parentIndex);
}

const List<dynamic> styles$AppComponentHost = const [];

class _ViewAppComponentHost0 extends AppView<dynamic> {
  ViewAppComponent0 _compView_0;
  import1.AppComponent _AppComponent_0_5;
  _ViewAppComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import8.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  @override
  ComponentRef build() {
    _compView_0 = new ViewAppComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _AppComponent_0_5 = new import1.AppComponent();
    _compView_0.create(_AppComponent_0_5, projectableNodes);
    init0(rootEl);
    return new ComponentRef<import1.AppComponent>(0, this, rootEl, _AppComponent_0_5);
  }

  @override
  void detectChangesInternal() {
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0?.destroy();
  }
}

AppView viewFactory_AppComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return new _ViewAppComponentHost0(parentView, parentIndex);
}

const ComponentFactory<import1.AppComponent> AppComponentNgFactory = const ComponentFactory<import1.AppComponent>('my-app', viewFactory_AppComponentHost0, _AppComponentMetadata);
const _AppComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(AppComponent, AppComponentNgFactory);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
