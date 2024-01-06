import 'package:df/const.dart';
import 'package:flutter/material.dart';

class DentalPage extends StatefulWidget {
  const DentalPage({super.key});

  @override
  State<DentalPage> createState() => _DentalPageState();
}

class _DentalPageState extends State<DentalPage> {
  bool statmntActServ = false;
  late List<bool> isSelected;
  bool no = false;
  bool yes = false;
  bool gendermale = false;
  bool subgendermale = false;
  bool patGendermale = false;
  bool orthdTreatN = false;
  bool orthdTreatY = false;
  bool replmntOfPrsY = false;
  bool replmntOfPrsN = false;
  bool treatResultOccupa = false;
  bool treatResultAuto = false;
  bool treatResultOther = false;

  bool patGenderfmale = false;
  bool subgenderfmale = false;
  bool patRelSelf = false;
  bool relToPatSelf = false;
  bool relToPatSpouse = false;
  bool relToPatDep = false;
  bool relToPatOther = false;
  bool patRelSpouse = false;
  bool patRelDep = false;
  bool patRelother = false;
  bool genderfmale = false;
  bool reqforpredermination = false;
  bool epsdt = false;
  @override
  void initState() {
    super.initState();
    isSelected = List.generate(32, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double mainfontsize = size.width * 0.011;
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //First Row of three cols
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //col One
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    card(
                        size,
                        Column(
                          children: [
                            Text(
                              headertxt,
                              style: TextStyle(
                                  fontSize: mainfontsize * 1.2,
                                  color: blackclr),
                            ),
                          ],
                        )),
                    firstCard(size, mainfontsize),
                    secCard(size, mainfontsize),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    card(
                      size,
                      Text(
                        "INSURENCE COMPANY/DENTAL BENEFIT PLAN INFORMATION",
                        style: TextStyle(
                            fontSize: mainfontsize * 1.2, color: blackclr),
                      ),
                    ),
                    thirdCard(size, mainfontsize),
                    otherCoverageCard(size, mainfontsize),
                    namePolicyHolerCard(size, mainfontsize),
                    dobCard(size, mainfontsize),
                    genderCard(size, mainfontsize),
                    subIdCard(size, mainfontsize),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    planeGrpCard(size, mainfontsize),
                    patRelationCard(size, mainfontsize),
                    card(
                      size,
                      Text(
                        "POLICYHOLDER/SUBCRIBER INFORMATION(For Insurance Comapny Named in #3)",
                        style: TextStyle(
                            fontSize: mainfontsize * 1.2, color: blackclr),
                      ),
                    ),
                    othInsuredCmpNmCard(size, mainfontsize),
                    namePolicyHolerWithAddressCard(size, mainfontsize),
                    subDOBCard(size, mainfontsize),
                  ],
                ),
                Column(
                  children: [
                    subGenderCard(size, mainfontsize),
                    holderSubIdCard(size, mainfontsize),
                    subplaneGrpCard(size, mainfontsize),
                    empNameCard(size, mainfontsize),
                    card(
                      size,
                      Text(
                        "PATIENT INFORMATION",
                        style: TextStyle(
                            fontSize: mainfontsize * 1.2, color: blackclr),
                      ),
                    ),
                    relationToPatCard(size, mainfontsize),
                    patNameCard(size, mainfontsize),
                    patDOBCard(size, mainfontsize),
                    patGenderCard(size, mainfontsize)
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.green[50],
                    ),
                    child: Center(
                      child: Text(
                        "RECORD OF SERVICES PROVIDED",
                        style: TextStyle(
                            fontSize: mainfontsize * 1.2, color: blackclr),
                      ),
                    ),
                  ),
                ),
                recordOfServProvid(size, mainfontsize),
                Row(
                  children: [
                    recordpostCard(size, mainfontsize),
                    diagCodeCard(size, mainfontsize),
                  ],
                ),
                teethxCard(size, mainfontsize),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    diagCodepostCard(size, mainfontsize),
                    Column(
                      children: [
                        card(
                          size,
                          Text(
                            "ANCILLARY CLAIM/TREATMENT INFORMATION ",
                            style: TextStyle(
                                fontSize: mainfontsize * 1.2, color: blackclr),
                          ),
                        ),
                        placeTreatmnt(size, mainfontsize),
                        enclosureCard(size, mainfontsize),
                        treatmntOrthoCard(size, mainfontsize),
                        dateAppliPlaceCard(size, mainfontsize),
                        monthOfTreatmntCard(size, mainfontsize),
                        replaceOfProsCard(size, mainfontsize),
                        dateOfPrioPlacCard(size, mainfontsize),
                        treatResultfromCard(size, mainfontsize),
                        dateOfAccidntCard(size, mainfontsize),
                        autoAccidntStateCard(size, mainfontsize),
                      ],
                    ),
                    Column(
                      children: [
                        //Billing Dentist or dental entity
                        card(
                          size,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "BILLING DESTIST OR DENTAL ENTITY (Leave blank if dentist or dental entity is not submitting claim on behalf of the pateint or insured/subscriber.)",
                                style: TextStyle(
                                    fontSize: mainfontsize * 1.2,
                                    color: blackclr),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "48) Name",
                                    style:
                                        TextStyle(fontSize: mainfontsize * 0.9),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.1,
                                    width: size.width * 0.3,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: greenClr),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Text(
                                    addressOnetxt,
                                    style:
                                        TextStyle(fontSize: mainfontsize * 0.9),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.1,
                                    width: size.width * 0.3,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: greenClr),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Text(
                                    citytxt,
                                    style:
                                        TextStyle(fontSize: mainfontsize * 0.9),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.1,
                                    width: size.width * 0.3,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: greenClr),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Text(
                                    "State",
                                    style:
                                        TextStyle(fontSize: mainfontsize * 0.9),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.1,
                                    width: size.width * 0.3,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: greenClr),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Text(
                                    "Zip Code",
                                    style:
                                        TextStyle(fontSize: mainfontsize * 0.9),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.1,
                                    width: size.width * 0.3,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: greenClr),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        card(
                            size,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "49) NPI",
                                  style: TextStyle(
                                      fontSize: mainfontsize * 1.2,
                                      color: blackclr),
                                ),
                                SizedBox(
                                  height: size.height * 0.1,
                                  width: size.width * 0.3,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: greenClr),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                ),
                              ],
                            )),
                        card(
                            size,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "50) License Number",
                                  style: TextStyle(
                                      fontSize: mainfontsize * 1.2,
                                      color: blackclr),
                                ),
                                SizedBox(
                                  height: size.height * 0.1,
                                  width: size.width * 0.3,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: greenClr),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                ),
                              ],
                            )),
                        card(
                            size,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "51) SSN or TIN",
                                  style: TextStyle(
                                      fontSize: mainfontsize * 1.2,
                                      color: blackclr),
                                ),
                                SizedBox(
                                  height: size.height * 0.1,
                                  width: size.width * 0.3,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: greenClr),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                ),
                              ],
                            )),
                        card(
                            size,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "52) Phone Number ",
                                  style: TextStyle(
                                      fontSize: mainfontsize * 1.2,
                                      color: blackclr),
                                ),
                                SizedBox(
                                  height: size.height * 0.1,
                                  width: size.width * 0.3,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: greenClr),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                ),
                              ],
                            )),
                        card(
                            size,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "53) Additional Provider ID",
                                  style: TextStyle(
                                      fontSize: mainfontsize * 1.2,
                                      color: blackclr),
                                ),
                                SizedBox(
                                  height: size.height * 0.1,
                                  width: size.width * 0.3,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: greenClr),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    )
                  ],
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.green[50],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "TREATING DENTIST AND TREATMENT LOCATION INFORMATION ",
                          style: TextStyle(
                              fontSize: mainfontsize * 1.2, color: blackclr),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    card(
                      size,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "53) I hereby certify that the procedures as indicated by date are in progress (for procedures that require multiple visits) or have been completed",
                            style: TextStyle(fontSize: mainfontsize * 0.9),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "Signed (Treating Dentist)",
                            style: TextStyle(fontSize: mainfontsize * 0.9),
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                            width: size.width * 0.3,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: greenClr),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                          Text(
                            "Date (MM/DD/CCYY)",
                            style: TextStyle(fontSize: mainfontsize * 0.9),
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                            width: size.width * 0.3,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: greenClr),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                          Text(
                            "54) NPI",
                            style: TextStyle(
                                fontSize: mainfontsize * 0.9, color: blackclr),
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                            width: size.width * 0.3,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: greenClr),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    card(
                      size,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "55) License Number",
                            style: TextStyle(
                                fontSize: mainfontsize * 1.2, color: blackclr),
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                            width: size.width * 0.3,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: greenClr),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                "56) $addressOnetxt",
                                style: TextStyle(fontSize: mainfontsize * 0.9),
                              ),
                              SizedBox(
                                height: size.height * 0.1,
                                width: size.width * 0.3,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: greenClr),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                citytxt,
                                style: TextStyle(fontSize: mainfontsize * 0.9),
                              ),
                              SizedBox(
                                height: size.height * 0.1,
                                width: size.width * 0.3,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: greenClr),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                "State",
                                style: TextStyle(fontSize: mainfontsize * 0.9),
                              ),
                              SizedBox(
                                height: size.height * 0.1,
                                width: size.width * 0.3,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: greenClr),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                "Zip Code",
                                style: TextStyle(fontSize: mainfontsize * 0.9),
                              ),
                              SizedBox(
                                height: size.height * 0.1,
                                width: size.width * 0.3,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: greenClr),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        card(
                            size,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "56a) Provider Specialty Code",
                                  style: TextStyle(
                                      fontSize: mainfontsize * 1.2,
                                      color: blackclr),
                                ),
                                SizedBox(
                                  height: size.height * 0.1,
                                  width: size.width * 0.3,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: greenClr),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                ),
                              ],
                            )),
                        card(
                            size,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "57) Phone Number",
                                  style: TextStyle(
                                      fontSize: mainfontsize * 1.2,
                                      color: blackclr),
                                ),
                                SizedBox(
                                  height: size.height * 0.1,
                                  width: size.width * 0.3,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: greenClr),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                ),
                              ],
                            )),
                        card(
                            size,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "58) Additional Provider ID",
                                  style: TextStyle(
                                      fontSize: mainfontsize * 1.2,
                                      color: blackclr),
                                ),
                                SizedBox(
                                  height: size.height * 0.1,
                                  width: size.width * 0.3,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: greenClr),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget card(Size size, Widget child) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: size.width * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.green[50],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }

  Widget secCard(Size size, double mainfontsize) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: size.width * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.green[50],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                twotxt,
                style: TextStyle(fontSize: mainfontsize),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              SizedBox(
                height: size.height * 0.1,
                width: size.width * 0.3,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greenClr),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget firstCard(Size size, double mainfontsize) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.green[50],
        ),
        height: size.height * 0.25,
        width: size.width * 0.3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      onetxt,
                      style: TextStyle(fontSize: mainfontsize),
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: statmntActServ,
                            onChanged: (value) {
                              setState(() {
                                statmntActServ = value!;
                              });
                            }),
                        Text(
                          oneponetxt,
                          style: TextStyle(fontSize: mainfontsize * 0.9),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: reqforpredermination,
                            onChanged: (value) {
                              setState(() {
                                reqforpredermination = value!;
                              });
                            }),
                        Text(
                          oneptwotxt,
                          style: TextStyle(fontSize: mainfontsize * 0.9),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: epsdt,
                            onChanged: (value) {
                              setState(() {
                                epsdt = value!;
                              });
                            }),
                        Text(
                          onepthreetxt,
                          style: TextStyle(fontSize: mainfontsize * 0.9),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget thirdCard(Size size, double mainfontsize) {
    return card(
      size,
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              threetxt,
              style: TextStyle(fontSize: mainfontsize),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  insurCompnametxt,
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  addressOnetxt,
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  addresstwotxt,
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greenClr),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  citytxt,
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "State",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Zip Code",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget otherCoverageCard(Size size, double mainfontsize) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        card(
          size,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "4 )Other Dental or Medical Coverage?",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              ),
              Row(
                children: [
                  Checkbox(
                      value: no,
                      onChanged: (value) {
                        setState(() {
                          no = value!;
                        });
                      }),
                  Text(
                    "NO (Skip 5-11)",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: yes,
                      onChanged: (value) {
                        setState(() {
                          yes = value!;
                        });
                      }),
                  Text(
                    "Yes  (Complete 5-11)",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
      ],
    );
  }

  Widget namePolicyHolerCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "5)Name of Policyholder/Subscriber in #4 (Last, First, Middle Initial, Suffix)",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ));
  }

  Widget dobCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "6) Date of Birth (MM/DD/CCYY)",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ));
  }

  Widget genderCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "7) Gender",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          Row(
            children: [
              Checkbox(
                  value: gendermale,
                  onChanged: (value) {
                    setState(() {
                      gendermale = value!;
                      genderfmale = false;
                    });
                  }),
              Text(
                "Male",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: genderfmale,
                  onChanged: (value) {
                    setState(() {
                      genderfmale = value!;
                      gendermale = false;
                    });
                  }),
              Text(
                "Female",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget subIdCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "8) PolicyHolder/Subcriber Identifier (SSN or ID#)",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ));
  }

  Widget planeGrpCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "9) Plan/Group Number",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ));
  }

  Widget patRelationCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "10) Patient's Relationship toPerson Named in #5",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          Row(
            children: [
              Checkbox(
                  value: patRelSelf,
                  onChanged: (value) {
                    setState(() {
                      patRelSelf = value!;
                      patRelSpouse = false;
                      patRelDep = false;
                      patRelother = false;
                    });
                  }),
              Text(
                "Self",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: patRelSpouse,
                  onChanged: (value) {
                    setState(() {
                      patRelSpouse = value!;
                      patRelSelf = false;
                      patRelDep = false;
                      patRelother = false;
                    });
                  }),
              Text(
                "Spouse",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: patRelDep,
                  onChanged: (value) {
                    setState(() {
                      patRelDep = value!;
                      patRelSpouse = false;
                      patRelSelf = false;
                      patRelother = false;
                    });
                  }),
              Text(
                "Dependent",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: patRelother,
                  onChanged: (value) {
                    setState(() {
                      patRelother = value!;
                      patRelDep = false;
                      patRelSpouse = false;
                      patRelSelf = false;
                    });
                  }),
              Text(
                "Other",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget othInsuredCmpNmCard(Size size, double mainfontsize) {
    return card(
      size,
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "11)Other Insured Company/Dental Benefit Plan Name, Address, City, State, Zip Code",
              style: TextStyle(fontSize: mainfontsize),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Other Insured Company/Dental Benefit Plan Name",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Address",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "City",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greenClr),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "State",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Zip Code",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget namePolicyHolerWithAddressCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "12)Policyholder/Subscriber Name (Last, First, Middle Initial, Suffix), Address, City, State, Zip Code",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Policyholder/Subscriber Name",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Address",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "City",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "State",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Zip Code",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            )
          ],
        ));
  }

  Widget subDOBCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "13) Date of Birth (MM/DD/CCYY)",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ));
  }

  Widget subGenderCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "14) Gender",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          Row(
            children: [
              Checkbox(
                  value: subgendermale,
                  onChanged: (value) {
                    setState(() {
                      subgendermale = value!;
                      subgenderfmale = false;
                    });
                  }),
              Text(
                "Male",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: subgenderfmale,
                  onChanged: (value) {
                    setState(() {
                      subgenderfmale = value!;
                      subgendermale = false;
                    });
                  }),
              Text(
                "Female",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget holderSubIdCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "15) PolicyHolder/Subcriber Identifier (SSN or ID#)",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ));
  }

  Widget subplaneGrpCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "16) Plan/Group Number",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ));
  }

  Widget empNameCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "17) Employer Name",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ));
  }

  Widget relationToPatCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "18) Patient's Relationship toPerson Named in #5",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          Row(
            children: [
              Checkbox(
                  value: relToPatSelf,
                  onChanged: (value) {
                    setState(() {
                      relToPatSelf = value!;
                      relToPatSpouse = false;
                      relToPatDep = false;
                      relToPatOther = false;
                    });
                  }),
              Text(
                "Self",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: relToPatSpouse,
                  onChanged: (value) {
                    setState(() {
                      relToPatSpouse = value!;
                      relToPatSelf = false;
                      relToPatDep = false;
                      relToPatOther = false;
                    });
                  }),
              Text(
                "Spouse",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: relToPatDep,
                  onChanged: (value) {
                    setState(() {
                      relToPatDep = value!;
                      relToPatSpouse = false;
                      relToPatSelf = false;
                      relToPatOther = false;
                    });
                  }),
              Text(
                "Dependent",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: relToPatOther,
                  onChanged: (value) {
                    setState(() {
                      relToPatOther = value!;
                      relToPatDep = false;
                      relToPatSpouse = false;
                      relToPatSelf = false;
                    });
                  }),
              Text(
                "Other",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget patNameCard(Size size, double mainfontsize) {
    return card(
      size,
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "20) Name (Last, First, Middle Initial,Suffix), Address, City, State, Zip Code)",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Name ",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Address",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "City",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "State",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Zip Code",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget patDOBCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "21) Date of Birth (MM/DD/CCYY)",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ));
  }

  Widget patGenderCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "22) Gender",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          Row(
            children: [
              Checkbox(
                  value: patGendermale,
                  onChanged: (value) {
                    setState(() {
                      patGendermale = value!;
                      patGenderfmale = false;
                    });
                  }),
              Text(
                "Male",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: patGenderfmale,
                  onChanged: (value) {
                    setState(() {
                      patGenderfmale = value!;
                      patGendermale = false;
                    });
                  }),
              Text(
                "Female",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget patSubIdCard(Size size, double mainfontsize) {
    return card(
        size,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "15) Patient ID/Account # (Assigned by Dentist)",
              style: TextStyle(fontSize: mainfontsize * 0.9),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.3,
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greenClr),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ));
  }

  Widget recordOfServProvid(Size size, double mainfontsize) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: size.width,
        height: size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: greensClr,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.08,
                  child: Text(
                    "24) Procedure Date (MM/DD/CCYY)",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            VerticalDivider(
              thickness: 2,
              width: 20,
              color: blackclr,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.05,
                  child: Text(
                    "25) Area of Oral Cavity",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.05,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.05,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            VerticalDivider(
              thickness: 2,
              width: 20,
              color: blackclr,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.08,
                  child: Text(
                    "26) Tooth System",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            VerticalDivider(
              thickness: 2,
              width: 20,
              color: blackclr,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.08,
                  child: Text(
                    "27) Tooth Number(s) or Letter(s)",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            VerticalDivider(
              thickness: 2,
              width: 20,
              color: blackclr,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.08,
                  child: Text(
                    "28) Tooth Surface",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            VerticalDivider(
              thickness: 2,
              width: 20,
              color: blackclr,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.08,
                  child: Text(
                    "29) Procedure Code",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            VerticalDivider(
              thickness: 2,
              width: 20,
              color: blackclr,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.08,
                  child: Text(
                    "29a) Diag. Pointer",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            VerticalDivider(
              thickness: 2,
              width: 20,
              color: blackclr,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.08,
                  child: Text(
                    "29b) Qty",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            VerticalDivider(
              thickness: 2,
              width: 20,
              color: blackclr,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.08,
                  child: Text(
                    "30) Description",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            VerticalDivider(
              thickness: 2,
              width: 20,
              color: blackclr,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.08,
                  child: Text(
                    "31) Fee",
                    style: TextStyle(fontSize: mainfontsize * 0.9),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Widget recordpostCard(Size size, double mainfontsize) {
    return card(
        size,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.08,
                    child: Text(
                      "31a) Other Fee(s)",
                      style: TextStyle(fontSize: mainfontsize * 0.9),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                    width: size.width * 0.08,
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greenClr),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.08,
                    child: Text(
                      "32) Total Fee",
                      style: TextStyle(fontSize: mainfontsize * 0.9),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                    width: size.width * 0.08,
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greenClr),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                ]),
          ],
        ));
  }

  Widget teethxCard(Size size, double mainfontsize) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.green[50],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                child: Text(
                  "33) Missing Teeth Information (Place an 'X' on Each Missing tooth.)",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
                width: size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 32,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected[index] = !isSelected[index];
                        });
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                          color: isSelected[index]
                              ? Colors.green[100]
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            isSelected[index] ? 'X' : (index + 1).toString(),
                            style: TextStyle(fontSize: mainfontsize * 0.9),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget diagCodeCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        children: [
          Text(
            "34) Diagnosis Code List Qualifier ",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget diagCodepostCard(Size size, double mainfontsize) {
    return Column(
      children: [
        card(
          size,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "34a) Diagnosis Code (s) ",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                Text(
                  "(Primary diagnosis in 'A')",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                Text(
                  "A ",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Text(
                  "B ",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Text(
                  "C",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Text(
                  "D",
                  style: TextStyle(fontSize: mainfontsize * 0.9),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenClr),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        reMarkCard(size, mainfontsize),
        card(
          size,
          Text(
            "AUTHORIZATIONS",
            style: TextStyle(fontSize: mainfontsize * 1.2, color: blackclr),
          ),
        ),
        card(
          size,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "36) I have been informed of the treatment plan and associated fees. I agree to be responsible for all charges for dental services and materials not paid by my dental benefit plan, unless prohibited by law, or the treating dentist or dental patience has a contractual agreement with my plan prohibiting all or a portion of such charges. To the extent permitted by law, I consent to your use and disclosure of my protected health information to carry out payment activities in connection with this claim.",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "Patient/Guardian Signature",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              ),
              SizedBox(
                height: size.height * 0.1,
                width: size.width * 0.3,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greenClr),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Text(
                "Date (MM/DD/CCYY)",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              ),
              SizedBox(
                height: size.height * 0.1,
                width: size.width * 0.3,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greenClr),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
            ],
          ),
        ),
        card(
          size,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "37) I hereby authorize and direct payment of the dental benefits otherwise payable to me, directly to the below named dentist or dental entity.",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "Subcriber Signature",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              ),
              SizedBox(
                height: size.height * 0.1,
                width: size.width * 0.3,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greenClr),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Text(
                "Date (MM/DD/CCYY)",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              ),
              SizedBox(
                height: size.height * 0.1,
                width: size.width * 0.3,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greenClr),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget reMarkCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "35) Remarks ",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget placeTreatmnt(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "38) Place of Treatment (e.g. 11= office; 22=O/P Hospital) ",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          Text(
            "(Use 'Place of Service code for Proffessional Claimns')",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget enclosureCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "39) Enclosures (Y or N)",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget treatmntOrthoCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "40) Is Treatment for Orthodontics?",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          Row(
            children: [
              Checkbox(
                  value: orthdTreatN,
                  onChanged: (value) {
                    setState(() {
                      orthdTreatN = true;
                      orthdTreatY = false;
                    });
                  }),
              Text(
                "No (Skip 41-42)",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: orthdTreatY,
                  onChanged: (value) {
                    setState(() {
                      orthdTreatY = true;
                      orthdTreatN = false;
                    });
                  }),
              Text(
                "Yes (Complete 41-42)",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget dateAppliPlaceCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "41) Date Appliance Placed (MM/DD/CCYY)",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget monthOfTreatmntCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "42) Month of Treatment Remaining",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget replaceOfProsCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "43) Replacement of Prosthesis",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          Row(
            children: [
              Checkbox(
                  value: replmntOfPrsN,
                  onChanged: (value) {
                    setState(() {
                      replmntOfPrsN = true;
                      replmntOfPrsY = false;
                    });
                  }),
              Text(
                "No",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: replmntOfPrsY,
                  onChanged: (value) {
                    setState(() {
                      replmntOfPrsY = true;
                      replmntOfPrsN = false;
                    });
                  }),
              Text(
                "Yes (Complete 44)",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget dateOfPrioPlacCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "44) Date of Prior Placement (MM/DD/CCYY)",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget treatResultfromCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "45) Treatment Resulting from",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          Row(
            children: [
              Checkbox(
                  value: treatResultOccupa,
                  onChanged: (value) {
                    setState(() {
                      treatResultOccupa = true;
                      treatResultOther = false;
                      treatResultAuto = false;
                    });
                  }),
              Text(
                "Occupational illness/injury",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: treatResultAuto,
                  onChanged: (value) {
                    setState(() {
                      treatResultAuto = true;
                      treatResultOccupa = false;
                      treatResultOther = false;
                    });
                  }),
              Text(
                "Auto accident ",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: treatResultOther,
                  onChanged: (value) {
                    setState(() {
                      treatResultOther = true;
                      treatResultOccupa = false;
                      treatResultAuto = false;
                    });
                  }),
              Text(
                "Other accident",
                style: TextStyle(fontSize: mainfontsize * 0.9),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget dateOfAccidntCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "46) Date of Accident (MM/DD/CCYY)",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget autoAccidntStateCard(Size size, double mainfontsize) {
    return card(
      size,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "47) Auto Accident State ",
            style: TextStyle(fontSize: mainfontsize * 0.9),
          ),
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenClr),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
