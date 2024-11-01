import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:realestateapp/model/faker.dart';
import 'package:realestateapp/ui/common/apartment_button.dart';

class Apartments extends StatelessWidget {
  const Apartments({super.key, required this.apartments});
  final List<Apartment> apartments;

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedGrid(
      initialItemCount: apartments.length,
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        repeatPattern: QuiltedGridRepeatPattern.same,
        pattern: [
          const QuiltedGridTile(2, 3),
          const QuiltedGridTile(2, 2),
          const QuiltedGridTile(2, 1),
          const QuiltedGridTile(2, 3),
          const QuiltedGridTile(2, 1),
          const QuiltedGridTile(2, 2),
        ],
      ),
      itemBuilder: (context, index, animation) {
        final apartment = apartments[index];
        return ScaleTransition(
          scale: CurvedAnimation(
            parent: animation,
            curve: Curves.easeIn,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  apartment.media,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ApartmentButton(
                    address: apartment.name,
                    onTap: () {},
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
