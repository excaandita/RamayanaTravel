import 'package:flutter/material.dart';
import 'package:travelapp/cubit/auth_cubit.dart';
import 'package:travelapp/ui/widgets/destination_card.dart';
import 'package:travelapp/ui/widgets/destination_tile.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Halo,\n${state.user.name}',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Where You Want To Go Today?',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_profile.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Candi Borobudur',
                city: 'Magelang',
                imageUrl: 'assets/image_destination1.png',
                rating: 4.9,
              ),
              DestinationCard(
                name: 'Kos Wisma Yoga',
                city: 'Solo',
                imageUrl: 'assets/image_destination2.png',
                rating: 5.0,
              ),
              DestinationCard(
                  name: 'The Park Mall',
                  city: 'Sukoharjo',
                  imageUrl: 'assets/image_destination3.png'),
              DestinationCard(
                name: 'Solo Paragon',
                city: 'Solo',
                imageUrl: 'assets/image_destination4.png',
              ),
              DestinationCard(
                name: 'Candimulyo',
                city: 'Magelang',
                imageUrl: 'assets/image_destination5.png',
                rating: 4.1,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Destination',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              name: 'Terminal Ungaran',
              city: 'Ungaran',
              imageUrl: 'assets/image_destination6.png',
              rating: 3.9,
            ),
            DestinationTile(
              name: 'Terminal Klaten',
              city: 'Klaten',
              imageUrl: 'assets/image_destination7.png',
            ),
            DestinationTile(
              name: 'Terminal Giwangan',
              city: 'Yogyakarta',
              imageUrl: 'assets/image_destination4.png',
              rating: 4.3,
            ),
            DestinationTile(
              name: 'Terminal Jombor',
              city: 'Yogyakarta',
              imageUrl: 'assets/image_destination1.png',
            ),
            DestinationTile(
              name: 'Proliman',
              city: 'Madiun',
              imageUrl: 'assets/image_destination4.png',
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
