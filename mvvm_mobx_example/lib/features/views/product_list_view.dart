import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_mobx_example/features/view-models/product_view_model.dart';

class ProductListView extends StatelessWidget {
  ProductListView({super.key});

  final _viewProductModel = ProductViewModel();

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            width: 300.0,
            child: ElevatedButton(
                onPressed: () {
                  _viewProductModel.getAllProduct();
                },
                child: Text(
                  "Listele",
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          ),
          Observer(builder: (_) {
            return Expanded(
                child: ListView.builder(
              shrinkWrap: true,
              itemCount: _viewProductModel.products.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      _viewProductModel.products[index].thumbnail!),
                ),
                title: Text(
                  _viewProductModel.products[index].title.toString(),
                ),
                subtitle: Text(
                    _viewProductModel.products[index].description.toString()),
                trailing: Text(
                  "${_viewProductModel.products[index].price} £",
                ),
              ),
            ));
          })
        ],
      
    );
  }
}
