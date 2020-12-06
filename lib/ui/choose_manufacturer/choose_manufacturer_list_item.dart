import 'package:flutteradmotors/config/ps_colors.dart';
import 'package:flutteradmotors/constant/ps_dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteradmotors/viewobject/manufacturer.dart';

class ChooseManufacturerListItem extends StatelessWidget {
  const ChooseManufacturerListItem(
      {Key key,
      @required this.manufacturer,
      this.onTap,
      this.animationController,
      this.animation})
      : super(key: key);

  final Manufacturer manufacturer;
  final Function onTap;
  final AnimationController animationController;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: PsDimens.space52,
          margin: const EdgeInsets.only(bottom: PsDimens.space4),
          child: Ink(
            color: PsColors.backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(PsDimens.space16),
              child: Text(
              'ssss',
                textAlign: TextAlign.start,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      builder: (BuildContext contenxt, Widget child) {
        return FadeTransition(
            opacity: animation,
            child: Transform(
                transform: Matrix4.translationValues(
                    0.0, 100 * (1.0 - animation.value), 0.0),
                child: child));
      },
    );
  }
}
