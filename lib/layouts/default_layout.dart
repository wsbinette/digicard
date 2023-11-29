import "package:flutter/cupertino.dart";

class DefaultLayout extends StatelessWidget {
	final List<Widget> children;

	const DefaultLayout({Key? key, required this.children}) : super(key: key);

	@override
	Widget build(BuildContext context) {
	return CupertinoTabScaffold(
		tabBar: CupertinoTabBar(
		items: const <BottomNavigationBarItem>[
			BottomNavigationBarItem(
			icon: Icon(CupertinoIcons.qrcode),
			),
			BottomNavigationBarItem(
			icon: Icon(CupertinoIcons.at),
			),
			BottomNavigationBarItem(
			icon: Icon(CupertinoIcons.person_2_square_stack),
			),
		],
		backgroundColor: CupertinoColors.systemIndigo.highContrastColor,
		inactiveColor: CupertinoColors.systemGrey2,
		activeColor: CupertinoColors.white,
		iconSize: 25,
		currentIndex: 1,
		),
		tabBuilder: (BuildContext context, int index) {
			assert(index < children.length);
			return CupertinoTabView(
				builder: (BuildContext context) {
					return children[index];
				},
			);
		},
	);
	}
}