import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simplify_task/constants/constants.dart';
import 'package:simplify_task/dashboard/widgets/balance_widget.dart';
import 'package:simplify_task/dashboard/model/dashboard_data.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>['This Month', 'Last Month'];
    String dropDownValue = list.first;

    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kScaffoldColor,
        body: Column(
          children: [
            Container(
              height: size.height * 0.2,
              padding: const EdgeInsets.fromLTRB(24.0, 27.0, 24.0, 34.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24.0),
                  bottomRight: Radius.circular(24.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 2.0,
                    offset: const Offset(0.0, 2.0),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.transparent,
                        child: SvgPicture.asset(
                          AssetsConstant.kAvatarAsset,
                          height: 40.0,
                          width: 40.0,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 8.0)),
                      Text(
                        'Hi ${userList[0].userName},',
                        style: TextStyles.bold(
                          color: Colors.black,
                          fontSize: 22.0,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search, color: Colors.black),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 8.0)),
                      IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.help_outline, color: Colors.black),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 8.0)),
                      SvgPicture.asset(
                        AssetsConstant.kBellAsset,
                        width: 22.0,
                        height: 22.0,
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 37.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: BalanceWidget(
                          balanceType: 'Wallet Balance',
                          balanceAmount: userList[0].balance,
                          svgUrl: AssetsConstant.kWalletAsset,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 18.0)),
                      Expanded(
                        child: BalanceWidget(
                          balanceType: 'Reward balance',
                          balanceAmount: userList[0].balance,
                          svgUrl: AssetsConstant.kRewardAsset,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(24.0),
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kGradientColor1,
                    kGradientColor2,
                  ],
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Congratulations!!',
                        style: TextStyles.bold(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                                text:
                                    'You\'ve completed all your tasks for the week and you won '),
                            TextSpan(
                              text: '150 points.',
                              style: TextStyles.bold(
                                color: kPointsTextColor,
                                fontSize: 8.0,
                              ),
                            ),
                          ],
                          style: TextStyles.medium(
                            color: Colors.white,
                            fontSize: 8.0,
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 10.0)),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 33.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(
                            color: kBorderColor,
                            width: 0.52,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 1.05,
                              offset: const Offset(0.0, 1.05),
                            )
                          ],
                        ),
                        child: Text(
                          'Redeem Now!',
                          style: TextStyles.semiBold(
                            color: kBlueShadeColor2,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    AssetsConstant.kTreasureAsset,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.2,
              child: ListView(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                scrollDirection: Axis.horizontal,
                children: [
                  //  TODO: build this widget as a container
                  SvgPicture.asset(
                    AssetsConstant.kAtmAsset,
                  ),
                  const Padding(padding: EdgeInsets.only(right: 24.0)),
                  SvgPicture.asset(
                    AssetsConstant.kAtmAsset,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(24.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 9.0, horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transaction History',
                        style: TextStyles.bold(
                          fontSize: 22.0,
                          color: kTranscTitleColor,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 9.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 0.77,
                              offset: const Offset(0.0, 0.77),
                            ),
                          ],
                        ),
                        child: DropdownButton(
                          value: dropDownValue,
                          underline: const SizedBox.shrink(),
                          style: TextStyles.semiBold(
                            color: kTranscTitleColor,
                            fontSize: 11.0,
                          ),
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: kTranscTitleColor,
                          ),
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: ((value) {
                            dropDownValue = value!;
                          }),
                        ),
                      ),
                    ],
                  ),
                  _titleContainer(size: size),
                  SizedBox(
                    height: size.height * 0.165,
                    child: ListView.separated(
                      itemCount: transactionList.length,
                      itemBuilder: (context, index) {
                        return _tramsactions(
                          time: transactionList[index].time,
                          date: transactionList[index].date,
                          pointsAmount: transactionList[index].points,
                          bckgColor: transactionList[index].status == 'credit'
                              ? kLightCreditColor
                              : kLightDebitColor,
                          svgColor: transactionList[index].status == 'credit'
                              ? kDarkCreditColor
                              : kDarkDebitColor,
                          pointsTextColor:
                              transactionList[index].status == 'credit'
                                  ? kDarkCreditColor
                                  : kDarkDebitColor,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 28.0);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleContainer({
    required Size size,
  }) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 22.0),
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 0.77,
            offset: const Offset(0.0, 0.77),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            'Name',
            style: TextStyles.bold(
              color: kBlueShadeColor,
              fontSize: 11.0,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: size.width * 0.3)),
          Text(
            'Data',
            style: TextStyles.bold(
              color: kBlueShadeColor,
              fontSize: 11.0,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: size.width * 0.1)),
          Text(
            'Time',
            style: TextStyles.bold(
              color: kBlueShadeColor,
              fontSize: 11.0,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: size.width * 0.1)),
          Text(
            'Points',
            style: TextStyles.bold(
              color: kBlueShadeColor,
              fontSize: 11.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _tramsactions({
    required String date,
    required String time,
    required String pointsAmount,
    required Color bckgColor,
    required Color svgColor,
    required Color pointsTextColor,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _iconContainer(
            bckgColor: bckgColor,
            svgColor: svgColor,
            svgUrl: AssetsConstant.kGiftAsset,
          ),
          const Padding(padding: EdgeInsets.only(right: 8.0)),
          Text(
            'SuperMart',
            style: TextStyles.bold(
              color: kTranscTitleColor,
              fontSize: 17.0,
            ),
          ),
          const Padding(padding: EdgeInsets.only(right: 12.0)),
          Text(
            date,
            style: TextStyles.bold(
              color: kAshShadeColor,
              fontSize: 13.0,
            ),
          ),
          const Padding(padding: EdgeInsets.only(right: 18.0)),
          Text(
            time,
            style: TextStyles.bold(
              fontSize: 13.0,
              color: kAshShadeColor2,
            ),
          ),
          const Padding(padding: EdgeInsets.only(right: 18.0)),
          Flexible(
            child: Text(
              pointsAmount,
              // textScaleFactor: 0.75,
              style: TextStyles.bold(
                fontSize: 18.0,
                color: pointsTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconContainer({
    required Color bckgColor,
    required Color svgColor,
    required String svgUrl,
  }) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: bckgColor,
        shape: BoxShape.circle,
      ),
      height: 40.0,
      width: 40.0,
      child: SvgPicture.asset(
        svgUrl,
        color: svgColor,
      ),
    );
  }
}
