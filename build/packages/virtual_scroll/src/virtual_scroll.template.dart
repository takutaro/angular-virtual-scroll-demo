// **************************************************************************
// Generator: Instance of 'Compiler'
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'virtual_scroll.dart';
export 'virtual_scroll.dart';
import 'dart:async';
import 'dart:html';
import 'dart:math' as Math;
import 'package:angular/angular.dart';
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:virtual_scroll/src/virtual_scroll.css.shim.dart' as import0;
import 'package:angular/src/core/linker/app_view.dart';
import 'virtual_scroll.dart' as import2;
import 'dart:html' as import3;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/view_type.dart' as import5;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import7;
import 'package:angular/angular.dart';

const List<dynamic> styles$VirtualScrollComponent = const [import0.styles];

class ViewVirtualScrollComponent0 extends AppView<import2.VirtualScrollComponent> {
  import3.DivElement _el_0;
  import3.DivElement _el_1;
  var _expr_0;
  var _expr_1;
  static RenderComponentType _renderType;
  ViewVirtualScrollComponent0(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    rootEl = import3.document.createElement('virtual-scroll');
    _renderType ??= import7.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$VirtualScrollComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef<import2.VirtualScrollComponent> build() {
    final _rootEl = rootEl;
    final import3.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    var doc = import3.document;
    _el_0 = createDivAndAppend(doc, parentRenderNode);
    _el_0.className = 'total-padding';
    _el_0.tabIndex = -1;
    addShimC(_el_0);
    _el_1 = createDivAndAppend(doc, parentRenderNode);
    _el_1.className = 'scrollable-content';
    addShimC(_el_1);
    project(_el_1, 0);
    init(const [], null);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import2.VirtualScrollComponent _ctx = ctx;
    final currVal_0 = _ctx.scrollHeight;
    if (!identical(_expr_0, currVal_0)) {
      _el_0.style.setProperty('height', ((currVal_0?.toString() == null) ? null : (currVal_0?.toString() + 'px')));
      _expr_0 = currVal_0;
    }
    final currVal_1 = (('translateY(' + _ctx.topPadding.toString()) + 'px)');
    if (!identical(_expr_1, currVal_1)) {
      _el_1.style.setProperty('transform', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
  }
}

AppView<import2.VirtualScrollComponent> viewFactory_VirtualScrollComponent0(AppView<dynamic> parentView, int parentIndex) {
  return new ViewVirtualScrollComponent0(parentView, parentIndex);
}

const List<dynamic> styles$VirtualScrollComponentHost = const [];

class _ViewVirtualScrollComponentHost0 extends AppView<dynamic> {
  ViewVirtualScrollComponent0 _compView_0;
  import2.VirtualScrollComponent _VirtualScrollComponent_0_5;
  _ViewVirtualScrollComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  @override
  ComponentRef build() {
    _compView_0 = new ViewVirtualScrollComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _VirtualScrollComponent_0_5 = new import2.VirtualScrollComponent(rootEl);
    _compView_0.create(_VirtualScrollComponent_0_5, projectableNodes);
    init0(rootEl);
    return new ComponentRef<import2.VirtualScrollComponent>(0, this, rootEl, _VirtualScrollComponent_0_5);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    if (firstCheck) {
      _VirtualScrollComponent_0_5.ngOnInit();
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0?.destroy();
    _VirtualScrollComponent_0_5.ngOnDestroy();
  }
}

AppView viewFactory_VirtualScrollComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return new _ViewVirtualScrollComponentHost0(parentView, parentIndex);
}

const ComponentFactory<import2.VirtualScrollComponent> VirtualScrollComponentNgFactory = const ComponentFactory<import2.VirtualScrollComponent>('virtual-scroll', viewFactory_VirtualScrollComponentHost0, _VirtualScrollComponentMetadata);
const _VirtualScrollComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(VirtualScrollComponent, VirtualScrollComponentNgFactory);
  _ref0.initReflector();
}
