//-----------------Devam edilecek (Shared Preferences Örneği)-------------------
//
//
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../view-models/calc_view_model.dart';
// import 'home_view.dart';

// class LoginView extends StatefulWidget {
//   LoginView({super.key});

//   @override
//   State<LoginView> createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   final _viewModel = CalcViewModel();

//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: TextField(
//               controller: emailController,
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Kullanıcı adı',
//                   hintText: 'Kullanıcı adı veya e-posta giriniz'),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Şifre',
//                   hintText: 'Şifre giriniz'),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(vertical: 30.0),
//             width: 300.0,
//             child: ElevatedButton(
//               onPressed: () async {
//                 final SharedPreferences sharedPreferences =
//                     await SharedPreferences.getInstance();
//                 sharedPreferences.setString("email", emailController.text);
//                 _viewModel.nextPage(context, HomeView());
//               },
//               child: Text("Giriş yap",
//                   style: Theme.of(context).textTheme.titleMedium),
//             ),
//           )
//         ]),
//       ),
//     );
//   }
// }
