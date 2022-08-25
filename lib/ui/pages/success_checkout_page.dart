import 'package:flutter/material.dart';
import 'package:travelapp/cubit/page_cubit.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 212),
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_success.png'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Text(
                    'Well Booked 😍',
                    style: blackTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Are you ready to explore the new\nworld of experiences?',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16,
                      height: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  CustomButton(
                    margin: EdgeInsets.only(top: 50),
                    width: 220,
                    title: 'My Bookings',
                    onPressed: () {
                      context.read<PageCubit>().setPage(1);
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/main', (route) => false);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
