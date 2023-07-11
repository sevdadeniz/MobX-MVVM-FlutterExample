import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_mobx_example/features/view-models/product_view_model.dart';

class ProductListView extends StatelessWidget {
  ProductListView({super.key});

  final _viewProductModel = ProductViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Ürün Listesi",
          style: TextStyle(color: Colors.white),
        ),
        leading: Observer(builder: (_) {
          return Visibility(
            visible: _viewProductModel.isServiceRequestLoading,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          );
        }),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 200.0,
            child: ElevatedButton(
                onPressed: () {
                  _viewProductModel.getAllProduct();
                },
                child: const Text(
                  "Ürünleri Listele",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
          ),
          SingleChildScrollView(
            child: Observer(builder: (_) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: _viewProductModel.products.length,
                  itemBuilder: (context, index) => ListTile(
                        // leading: CircleAvatar(
                        //   backgroundImage: NetworkImage(_viewProductModel
                        //       .products[index].images
                        //       .toString()),
                        // ),
                        title: Text(
                          _viewProductModel.products[index].title.toString(),
                        ),
                        subtitle: Text(_viewProductModel
                            .products[index].description
                            .toString()),
                        trailing: Text(
                            _viewProductModel.products[index].price.toString()),
                      ));
            }),
          )
        ],
      ),
    );
  }
}
