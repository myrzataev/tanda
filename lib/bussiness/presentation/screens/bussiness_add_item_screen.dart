import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tanda/bussiness/presentation/widgets/bussiness_item_editor.dart';
import 'package:tanda/core/utils/app_colors.dart';
import 'package:tanda/core/utils/pick_image.dart';

class BussinessAddItemScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const BussinessAddItemScreen(),
      );
  const BussinessAddItemScreen({super.key});

  @override
  State<BussinessAddItemScreen> createState() => _BussinessAddItemScreenState();
}

class _BussinessAddItemScreenState extends State<BussinessAddItemScreen> {
  String dropdownvalue = 'Item 1';
  String? selectedValue;

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  final titleController = TextEditingController();
  final addressController = TextEditingController();
  final priceController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  File? image;
  void selectImage() async {
    final pickedImage = await pickImage();
    if (pickedImage != null) {
      setState(() {
        image = pickedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                image != null
                    ? GestureDetector(
                        onTap: selectImage,
                        child: SizedBox(
                          width: double.infinity,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.file(
                              image!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          selectImage();
                        },
                        child: DottedBorder(
                          color: AppColors.accentColor,
                          dashPattern: const [10, 4],
                          radius: const Radius.circular(10),
                          borderType: BorderType.RRect,
                          strokeCap: StrokeCap.round,
                          child: Container(
                            height: 150,
                            width: double.infinity,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.folder_open,
                                  size: 40,
                                  color: AppColors.accentColor,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'Выберите свое изображение',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                const SizedBox(
                  height: 20,
                ),
                BussinessItemEditor(
                  controller: titleController,
                  hintText: 'Название объекта',
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Выберите тип вашего объекта',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 12,
                ),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[800], // Button background color
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: const Text(
                        "Выбрать тип", // Non-selectable title
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      value: selectedValue,
                      icon: const Icon(
                        Icons.arrow_drop_down, // Dropdown arrow
                        color: Colors.white,
                      ),
                      dropdownColor:
                          Colors.grey[800], // Dropdown menu background
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16), // Text style for items
                      items: [
                        // Non-selectable title item
                        DropdownMenuItem<String>(
                          enabled: false, // Makes this item non-selectable
                          child: Text(
                            "Выбрать тип", // Header text
                            style: TextStyle(
                              color: Colors.grey[500], // Grayed-out text
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Selectable options
                        const DropdownMenuItem<String>(
                          value: "Тип 1",
                          child: Text("Тип 1"),
                        ),
                        const DropdownMenuItem<String>(
                          value: "Тип 2",
                          child: Text("Тип 2"),
                        ),
                        const DropdownMenuItem<String>(
                          value: "Тип 3",
                          child: Text("Тип 3"),
                        ),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[800], // Button background color
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: const Text(
                        "Выбрать тип", // Non-selectable title
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      value: selectedValue,
                      icon: const Icon(
                        Icons.arrow_drop_down, // Dropdown arrow
                        color: Colors.white,
                      ),
                      dropdownColor:
                          Colors.grey[800], // Dropdown menu background
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16), // Text style for items
                      items: [
                        // Non-selectable title item
                        DropdownMenuItem<String>(
                          enabled: false, // Makes this item non-selectable
                          child: Text(
                            "Выбрать тип", // Header text
                            style: TextStyle(
                              color: Colors.grey[500], // Grayed-out text
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Selectable options
                        const DropdownMenuItem<String>(
                          value: "Тип 1",
                          child: Text("Тип 1"),
                        ),
                        const DropdownMenuItem<String>(
                          value: "Тип 2",
                          child: Text("Тип 2"),
                        ),
                        const DropdownMenuItem<String>(
                          value: "Тип 3",
                          child: Text("Тип 3"),
                        ),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                    ),
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),
                BussinessItemEditor(
                  controller: addressController,
                  hintText: 'Адрес вашего объекта объекта',
                ),
                const SizedBox(
                  height: 8,
                ),
                BussinessItemEditor(
                  controller: priceController,
                  hintText: 'Цена за час',
                  num: true,
                ),

                // DropdownButton(
                //   // Initial Value
                //   value: dropdownvalue,

                //   // Down Arrow Icon
                //   icon: const Icon(Icons.keyboard_arrow_down),

                //   // Array list of items
                //   items: items.map((String items) {
                //     return DropdownMenuItem(
                //       value: items,
                //       child: Text(items),
                //     );
                //   }).toList(),
                //   // After selecting the desired option,it will
                //   // change button value to selected value
                //   onChanged: (String? newValue) {
                //     setState(() {
                //       dropdownvalue = newValue!;
                //     });
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
