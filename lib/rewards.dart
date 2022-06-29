import 'package:chainpay/color_const.dart';
import 'package:chainpay/common_widgets/bal_cont_txt.dart';
import 'package:chainpay/common_widgets/blank_cont.dart';
import 'package:chainpay/common_widgets/common_heading.dart';
import 'package:chainpay/text_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rewards extends StatefulWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorConstants.baseColor),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 12, right: 12),
            child: Container(
              padding: const EdgeInsets.only(left: 12, right: 12),
              height: 182,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: Color(ColorConstants.homecard),
                  borderRadius: BorderRadius.circular(15)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 18),
                    commonHeading(
                        TextConstants.rewardtxt1, 15, FontWeight.w600),
                    const SizedBox(
                      height: 11,
                    ),
                    balContTxt(
                      TextConstants.rewardtxt2,
                      36,
                      FontWeight.w700,
                      Color(ColorConstants.balcommon),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    balContTxt(
                      TextConstants.rewardtxt3,
                      15,
                      FontWeight.w600,
                      Color(ColorConstants.rewardtxt),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 13, right: 13, bottom: 15),
                      child: Container(
                        height: 43,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(ColorConstants.commonBorder),
                        ),
                        child: Center(
                          child: Text(
                            TextConstants.rewardbut,
                            style: TextStyle(
                                fontFamily: 'spartan',
                                color: Color(ColorConstants.balconttxt2),
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 12)),
              commonHeading(TextConstants.rewardhead1, 15, FontWeight.w600)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 12)),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(ColorConstants.blankCont),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              blankCont(),
              const SizedBox(
                width: 12,
              ),
              blankCont()
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 12)),
              commonHeading(TextConstants.rewardhead2, 15, FontWeight.w600),
            ],
          ),
        ],
      ),
    );
  }
}
