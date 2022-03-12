import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../core/store.dart';

class CartModel {
  CatalogModel _catalog = CatalogModel();

  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

//  num get totalPrice =>
      // items.fold(0, (total, current) => total + current?.price);

  List<Item?> get items => _itemIds.map((id) => _catalog.getById(id)).toList();
}

// class AddMutation extends VxMutaation(),
class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store.cart?._itemIds.add(item.id!);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store.cart?._itemIds.remove(item.id);
  }
}