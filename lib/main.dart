import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/blocs/home.bloc.dart';
import 'package:shopping/ui/shared/widgets/category/category-list.widget.dart';
import 'package:shopping/ui/shared/widgets/product/product-list.widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeBloc>.value(
          value: HomeBloc(),
        ),
      ],
      child: const Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = Provider.of<HomeBloc>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),
              Text(
                "Categorias",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 10),
              CategoryList(categories: bloc.categories),
              const SizedBox(height: 10),
              Text(
                "Mais Vendidos",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 10),
              ProductList(products: bloc.products),
            ],
          ),
        ),
      ),
    );
  }
}
