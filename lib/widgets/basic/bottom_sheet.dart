import 'package:flutter/material.dart';
import 'package:flutter_intern/model/data.dart';

class Options extends StatelessWidget {
  final TechnicalIP pData;
  final bool isMoving;
  Options(this.pData, this.isMoving);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xFF121212),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.60),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 5,
                width: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ...(isMoving)
                ? pData.movingList
                    .map((e) => LRowW(isMoving, pData, e))
                    .toList()
                : pData.pivotList
                    .map((e) => LRowW(isMoving, pData, e))
                    .toList(),
            SizedBox(
              height: 30,
            )
          ],
        ));
  }
}

class LRowW extends StatelessWidget {
  final String e;
  final TechnicalIP pData;
  final bool isMoving;
  LRowW(this.isMoving, this.pData, this.e);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        (isMoving) ? pData.movingAve = e : pData.pivotePoints = e;
        Navigator.pop(context);
      },
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 35,
            width: 20,
          ),
          SizedBox(
              width: 40,
              child: (isMoving)
                  ? ((pData.movingAve == e)
                      ? Icon(
                          Icons.done,
                          size: 20,
                          color: Colors.white.withOpacity(.87),
                        )
                      : null)
                  : (pData.pivotePoints == e)
                      ? Icon(
                          Icons.done,
                          size: 20,
                          color: Colors.white.withOpacity(.87),
                        )
                      : null),
          Text(
            e.toUpperCase(),
            style: Theme.of(context).textTheme.headline3!.copyWith(
                color: (pData.movingAve == e || pData.pivotePoints == e)
                    ? Colors.white.withOpacity(.87)
                    : Colors.white.withOpacity(.38)),
          ),
        ],
      ),
    );
  }
}
