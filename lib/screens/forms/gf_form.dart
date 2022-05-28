import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class GFFormPage extends StatefulWidget {
  const GFFormPage({Key? key}) : super(key: key);

  @override
  State<GFFormPage> createState() => _GFFormPageState();
}

class _GFFormPageState extends State<GFFormPage> with AutomaticKeepAliveClientMixin {
  final controller1=TextEditingController();
  final controller2=TextEditingController();
  final controller3=TextEditingController();
  final controller4=TextEditingController();
  final controller5=TextEditingController();
  final controller6=TextEditingController();
  final formkeyx=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.DARK,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              CupertinoIcons.back,
              color: GFColors.SUCCESS,
            ),
          ),
          title: const Text(
            'Form',
            style:  TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 6),
    child:
    GfForm(
      formHeading: 'Sample Form',
      radius: 8,
      formkey:formkeyx ,
      // height: 350,
      formBorderColor: Colors.green.shade900,
      formfields:   [
         SizedBox(
          height: 100,
        child:
         GfFormFieldPill(
           autovalidate: true,
          gfFormFieldType: GfFormFieldType.Name,
          hintText: 'Name',
          borderwidth: 3,
         idlebordercolor: Colors.purple,
         editingbordercolor: Colors.yellow.shade700,
         backgroundcolor: Colors.purple.shade50,
                   ),
        ),
        SizedBox(
          height: 100,
          child:
          GfFormFieldPill(
            autovalidate: true,
            gfFormFieldType: GfFormFieldType.Phone,
            hintText: 'Phone',
            borderwidth: 3,
            idlebordercolor: Colors.purple,
            editingbordercolor: Colors.yellow.shade700,
            backgroundcolor: Colors.purple.shade50,
          ),
        ),
        SizedBox(
          height: 100,
          child:
          GfFormFieldPill(
            autovalidate: true,
            gfFormFieldType: GfFormFieldType.email,
            hintText: 'Email',
            borderwidth: 3,
            idlebordercolor: Colors.purple,
            editingbordercolor: Colors.yellow.shade700,
            backgroundcolor: Colors.purple.shade50,
          ),
        ),
        SizedBox(
          height: 100,
          child:
          GfFormFieldPill(
            autovalidate: true,
            gfFormFieldType: GfFormFieldType.Password,
            hintText: 'password',
            borderwidth: 3,
            idlebordercolor: Colors.purple,
            editingbordercolor: Colors.yellow.shade700,
            backgroundcolor: Colors.purple.shade50,
          ),
        ),
      // GFTextFieldSquared(
      //   editingbordercolor: Colors.green.shade400,
      //   idlebordercolor: Colors.green.shade900,
      //   borderwidth:2.5,
      //   hintText: 'Name',
      //   controller: controller1,
      //   backgroundcolor: Colors.green.shade50,
      //   iconPrefix: Icon(Icons.person,color: Colors.green.shade900,size: 24,),
      // ),
      // GFTextFieldSquared(
      //   editingbordercolor: Colors.green.shade400,
      //   idlebordercolor: Colors.green.shade900,
      //   borderwidth:2.5,
      //   hintText: 'Balance',
      //   controller: controller2,
      //   backgroundcolor: Colors.green.shade50,
      //   iconPrefix: Icon(Icons.account_balance_wallet,color: Colors.green.shade900,size: 24,),
      // ),
      // GFTextFieldSquared(
      //   editingbordercolor: Colors.green.shade400,
      //   idlebordercolor: Colors.green.shade900,
      //   borderwidth:2.5,
      //   hintText: 'Password',
      //   controller: controller3,
      //   backgroundcolor: Colors.green.shade50,
      //   iconPrefix: Icon(Icons.lock,color: Colors.green.shade900,size: 24,),
      // ),
      //   GFTextFieldSquared(
      //     editingbordercolor: Colors.green.shade400,
      //     idlebordercolor: Colors.green.shade900,
      //     borderwidth:2.5,
      //     hintText: 'Name',
      //     controller: controller4,
      //     backgroundcolor: Colors.green.shade50,
      //     iconPrefix: Icon(Icons.person,color: Colors.green.shade900,size: 24,),
      //   ),
      //   GFTextFieldSquared(
      //     editingbordercolor: Colors.green.shade400,
      //     idlebordercolor: Colors.green.shade900,
      //     borderwidth:2.5,
      //     hintText: 'Balance',
      //     controller: controller5,
      //     backgroundcolor: Colors.green.shade50,
      //     iconPrefix: Icon(Icons.account_balance_wallet,color: Colors.green.shade900,size: 24,),
      //   ),
      //   GFTextFieldSquared(
      //     editingbordercolor: Colors.green.shade400,
      //     idlebordercolor: Colors.green.shade900,
      //     borderwidth:2.5,
      //     hintText: 'Password',
      //     controller: controller6,
      //     backgroundcolor: Colors.green.shade50,
      //     iconPrefix: Icon(Icons.lock,color: Colors.green.shade900,size: 24,),
      //   ),
    ],
    defaultSubmitButtonEnabled: true,
    defaultSubmitButtontext: 'SAVE',


    ),


    )
    );
  }

  @override
  bool get wantKeepAlive => true;
}
