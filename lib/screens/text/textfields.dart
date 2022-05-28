import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TextFields extends StatefulWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
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
    'TextFields',
    style: TextStyle(fontSize: 17),
    ),
    centerTitle: true,
    ),
    body: Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
    child:
    ListView(
    children: <Widget>[
      const SizedBox(height: 8,),
    Container(
        margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 3,horizontal:4),
        child:
      GFTextField(
        decoration: const  InputDecoration(
          hintText: 'Original Style'
        ),
      ),
        ),
      const SizedBox(height: 12,),
     const  GFTypography(
        text: 'Outline Only',
        type: GFTypographyType.typo4,
        showDivider: true,
      ),

      const SizedBox(height: 12,),
      GFTextFieldPill(
        editingbordercolor: Colors.purple.shade400,
        idlebordercolor: Colors.purple.shade900,
        borderwidth: 2.5,
        hintText: 'Pill Style',
      ),
      const SizedBox(height: 24,),
      GFTextFieldRounded(
       editingbordercolor: Colors.purple.shade400,
       idlebordercolor: Colors.purple.shade900,
        borderwidth: 2.5,
         cornerradius: 8,
         hintText: 'Rounded Corner Style',
     ),
      const SizedBox(height: 24,),
       GFTextFieldSquared(
        editingbordercolor: Colors.purple.shade400,
        idlebordercolor: Colors.purple.shade900,
         borderwidth: 2.5,
        hintText: 'Squared Style',
      ),
      const SizedBox(height: 12,),
      const GFTypography(
        text: 'Filled with Outline',
        type: GFTypographyType.typo4,
        showDivider: true,
      ),
      const SizedBox(height: 12,),
       GFTextFieldPill(
         editingbordercolor: Colors.purple.shade400,
         idlebordercolor: Colors.purple.shade900,
        borderwidth: 2.5,
        hintText: 'Pill Style - filled',
         backgroundcolor: Colors.purple.shade50,
      ),
      const SizedBox(height: 24,),
       GFTextFieldRounded(
         editingbordercolor: Colors.orange.shade400,
         idlebordercolor: Colors.orange.shade900,
        borderwidth: 2.5,
        cornerradius: 8,
        hintText: 'Rounded Corner Style - filled',
         backgroundcolor: Colors.orange.shade50,

      ),
      const SizedBox(height: 24,),
       GFTextFieldSquared(
       editingbordercolor: Colors.green.shade400,
       idlebordercolor: Colors.green.shade900,
        borderwidth:2.5,
        hintText: 'Squared Style - filled',
       backgroundcolor: Colors.green.shade50,
      ),
      const SizedBox(height: 12,),
      const GFTypography(
        text: 'Filled with Icon and outline',
        type: GFTypographyType.typo4,
        showDivider: true,
      ),
      const SizedBox(height: 12,),
      GFTextFieldPill(
        editingbordercolor: Colors.purple.shade400,
        idlebordercolor: Colors.purple.shade900,
        borderwidth: 2.5,
        hintText: 'Pill Style - filled',
        backgroundcolor: Colors.purple.shade50,
        iconPrefix:  Icon(Icons.person,color: Colors.purple.shade900,size: 24,),
      ),
      const SizedBox(height: 24,),
      GFTextFieldRounded(
        editingbordercolor: Colors.orange.shade400,
        idlebordercolor: Colors.orange.shade900,
        borderwidth: 2.5,
        cornerradius: 8,
        hintText: 'Rounded Corner Style - filled',
        backgroundcolor: Colors.orange.shade50,
        iconPrefix:  Icon(Icons.mail,color: Colors.orange.shade900,size: 24,),
      ),
      const SizedBox(height: 24,),
      GFTextFieldSquared(
        editingbordercolor: Colors.green.shade400,
        idlebordercolor: Colors.green.shade900,
        borderwidth:2.5,
        hintText: 'Squared Style - filled',
        backgroundcolor: Colors.green.shade50,
        iconPrefix: Icon(Icons.account_balance_wallet,color: Colors.green.shade900,size: 24,),
      ),


    ]))
    );
  }
}
