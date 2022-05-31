import 'package:flutter/material.dart';
import 'package:capstone2/sample_data/jobs_categories.dart';
import 'package:capstone2/sample_data/cities.dart';
import 'package:capstone2/sample_data/provinces.dart';
import 'package:capstone2/sample_data/jobs_salary.dart';
import 'package:capstone2/sample_data/jobs_types.dart';

class ModalButtomSheetWidget extends StatefulWidget {
  const ModalButtomSheetWidget({Key? key}) : super(key: key);

  @override
  State<ModalButtomSheetWidget> createState() => _ModalButtomSheetWidgetState();
}

class _ModalButtomSheetWidgetState extends State<ModalButtomSheetWidget> {
  String categoryDropdownValue = 'All';
  String subCategoryDropdownValue = 'All';
  String locationDropdownValue = 'Remote';
  String salaryDropdownValue = 'All';

  @override
  Widget build(BuildContext context) {
    List categoryDropdownItems = List.empty(growable: true);
    jobsCategories['jobsCategories'].forEach((value) {
      value.forEach((key2, value2) {
        if (key2 == 'categoryName') {
          categoryDropdownItems.add(value2);
        }
      });
    });
    categoryDropdownItems.add('All');
    int subCategoryCount = 1;
    List subCategoryDropdownItems = List.empty(growable: true);
    jobsCategories['jobsCategories'].forEach((value) {
      value.forEach((key2, value2) {
        if (value['categoryName'] == categoryDropdownValue &&
            subCategoryCount == 1) {
          subCategoryCount += 1;

          value['subCategory'].forEach((value3) {
            subCategoryDropdownItems.add(value3['subCategoryName']);
          });
        }
      });
    });
    subCategoryDropdownItems.add('All');

    List<String> locationDropdownItems = List.empty(growable: true);
    cities['cities'].forEach((cityValue) {
      provinces['provinces'].forEach((provValue) {
        if (provValue['key'] == cityValue['province']) {
          locationDropdownItems
              .add('${cityValue['name']}, ${provValue['name']}');
        }
      });
    });

    locationDropdownItems.sort((a, b) => a.compareTo(b));
    locationDropdownItems.add('Remote');

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: MediaQuery.of(context).size.height * .87,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Text(
            'Set Filters',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .06,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Category',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .018,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.067,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: DropdownButton(
                style: Theme.of(context).textTheme.labelMedium,
                value: categoryDropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: categoryDropdownItems
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                onChanged: (categoryNewValue) {
                  setState(() {
                    categoryDropdownValue = categoryNewValue.toString();
                    subCategoryDropdownValue = 'All';
                  });
                }),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Sub Category',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .018,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.067,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: DropdownButton(
                style: Theme.of(context).textTheme.labelMedium,
                value: subCategoryDropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: subCategoryDropdownItems
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                onChanged: (subCategoryNewValue) {
                  setState(() {
                    subCategoryDropdownValue = subCategoryNewValue.toString();
                  });
                }),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Location',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .018,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.067,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: DropdownButton(
                        isExpanded: true,
                        style: Theme.of(context).textTheme.subtitle2,
                        value: locationDropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: locationDropdownItems
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Container(
                                  child: Text(
                                    e,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (locationDropdownNewValue) {
                          setState(() {
                            locationDropdownValue =
                                locationDropdownNewValue.toString();
                          });
                        }),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Salary',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .018,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.067,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: DropdownButton(
                        isExpanded: true,
                        style: Theme.of(context).textTheme.subtitle2,
                        value: salaryDropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: salaryDropdownItems
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Container(
                                  child: Text(
                                    e,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (salaryDropdownNewValue) {
                          setState(() {
                            salaryDropdownValue =
                                salaryDropdownNewValue.toString();
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Job Type',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .018,
          ),
          Expanded(
            child: Container(
              height: 100,
                    width: 100,
              padding: const EdgeInsets.all(5),
              child: GridView.builder(
                itemCount: jobsTypes.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 0.55),
                itemBuilder: (context, index) {
                  final card = jobsTypes[index];
                  print(jobsTypes);
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: (Container(
                      padding: EdgeInsets.all(10),
                      height: 10,
                      width: 10,
                      color: Colors.yellow,
                      child: Text(card),
                    )),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
