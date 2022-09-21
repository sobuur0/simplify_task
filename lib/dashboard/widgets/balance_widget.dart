import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simplify_task/constants/constants.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
    required this.balanceType,
    required this.balanceAmount,
    required this.svgUrl,
  });

  final String balanceType;
  final String balanceAmount;
  final String svgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10.0, 9.0, 8.0, 8.0),
      decoration: BoxDecoration(
        color: kBalanceContainerColor,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SvgPicture.asset(
            svgUrl,
            height: 34.0,
          ),
          const Padding(padding: EdgeInsets.only(right: 10.0)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                balanceType,
                style: TextStyles.bold(
                  color: Colors.white,
                  fontSize: 13.0,
                ),
              ),
              Text(
                balanceAmount,
                style: TextStyles.medium(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 10.0,
                ),
              )
            ],
          ),
          const Spacer(),
          Icon(
            Icons.visibility_off,
            color: Colors.white.withOpacity(0.6),
            size: 14.0,
          ),
        ],
      ),
    );
  }
}
