part of 'widgets.dart';

class SelectableBox extends StatelessWidget {
  bool isSelected;
  bool isEnabled;
  double width;
  double height;
  String text;
  Function onTap;
  TextStyle textStyle;

  SelectableBox(
    this.text, {
    this.isSelected = false,
    this.isEnabled = true,
    this.width = 144,
    this.height = 60,
    this.onTap,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: !isEnabled
              ? Color(0xFFE4E4E4)
              : isSelected
                  ? accentColor2
                  : Colors.transparent,
          border: Border.all(
              color: !isEnabled
                  ? Color(0xFFE4E4E4)
                  : isSelected
                      ? Colors.transparent
                      : Color(0xFFE4E4E4)),
        ),
        child: Center(
          child: Text(
            text ?? 'None',
            style: (textStyle ?? blackTextFont)
                .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}