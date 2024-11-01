import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class KSelectOptionsButton extends StatefulWidget {
  final List<OptionsMenu> menuItems;
  final double width;
  final double height;
  final ValueChanged<int> onChange;

  const KSelectOptionsButton({
    super.key,
    required this.menuItems,
    this.width = 150,
    this.height = 50,
    required this.onChange,
  });

  @override
  _KSelectOptionsState createState() => _KSelectOptionsState();
}

class _KSelectOptionsState extends State<KSelectOptionsButton> {
  int index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final titleSmall = Theme.of(context).textTheme.titleSmall;
    return PopupMenuButton<int>(
      padding: EdgeInsets.zero,
      itemBuilder: (context) {
        var list = <PopupMenuEntry<int>>[];
        for (int i = -1; ++i < widget.menuItems.length;) {
          list.add(
            PopupMenuItem(
              value: i,
              child: Row(
                children: [
                  Icon(
                    widget.menuItems[i].icon,
                    color: widget.menuItems[i].primary,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.menuItems[i].label,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return list;
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0.7,
      offset: const Offset(0, -220),
      onSelected: (val) {
        index = val;
        widget.onChange(val);
      },
      tooltip: null,
      child: const CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white54,
        child: Icon(
          Iconsax.layer_copy,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}

class OptionsMenu {
  final String label;
  final Color primary;
  final IconData icon;

  OptionsMenu(this.label, this.primary, this.icon);
}
