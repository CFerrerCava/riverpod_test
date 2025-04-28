import 'package:flutter/material.dart';
import 'package:riverpod_test/features/tiktok_scroller/widgets/caption_widget.dart';
import 'package:visibility_detector/src/visibility_detector.dart';

class TiktokExplorerScreen extends StatefulWidget {
  const TiktokExplorerScreen({super.key});

  @override
  State<TiktokExplorerScreen> createState() => _TiktokExplorerScreenState();
}

class _TiktokExplorerScreenState extends State<TiktokExplorerScreen> {
  final ScrollController _scrollController = ScrollController();

  bool isScrolling = false;
  double scrollPosition = 0;
  VisibilityInfo? _visibilityInfo;
  int _currentIndex = 0;

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    if (_scrollController.hasClients) {
      _scrollController.position.isScrollingNotifier
          .removeListener(_scrollLingNotifierListener);
    }
    _scrollController.dispose();
    _visibilityInfo = null;
    _currentIndex = 0;
    scrollPosition = 0;
    isScrolling = false;
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.addListener(_scrollListener);

        _scrollController.position.isScrollingNotifier
            .addListener(_scrollLingNotifierListener);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  const SliverAppBar(
                    title: Text('Tiktok Explorer'),
                    flexibleSpace: FlexibleSpaceBar(),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    sliver: SliverGrid.builder(
                      addAutomaticKeepAlives: false,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 10,
                        childAspectRatio: 9 / 16,
                      ),
                      itemBuilder: (context, index) => CaptionWidget(
                        index: index,
                        onVisibilityChanged: (info) =>
                            _onVisibilityChanged(info, index),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onVisibilityChanged(VisibilityInfo info, int index) {
    // print('Scrolling index: ${info.key} )  scroll: ${info.visibleFraction}');

    if (info.visibleFraction == 1) {
      if (mounted) {
        setState(() {
          _currentIndex = index;
          _visibilityInfo = info;
        });
      }
      // print(
      //     'info key: ${info.key} visibleFraction: ${info.visibleFraction} $scrollPosition ${info.visibleBounds.size.height}');

      // This is just an example of how to use the scroll position
      // You can use it to determine the current index or any other logic

      // Assuming each item has a fixed height, you can calculate the index
      // final itemHeight = info.visibleBounds.size.height;
      // final newIndex = (scrollPosition / itemHeight);
      // final pos = (info.visibleBounds.size.height * (newIndex + 1)) - 200;

      // print(
      //   'Scrolling index: ${info.key}  scroll: $scrollPosition pos: $pos '
      //   'index $newIndex',
      // );

      // if (pos - 200 < scrollPosition && pos + 200 > scrollPosition) {
      //   final indexFactor = newIndex.floor() * 2;
      //   final indexDecimals = newIndex - indexFactor;
      //   final indexToPlay = indexDecimals > 0.5 ? indexFactor + 1 : indexFactor;
      //   if (indexToPlay == index) {
      //     print('play video ${info.key}  scroll: $scrollPosition pos: $pos ');
      //   }
      // }

      // processBounds(index, info);
    } else {
      print('pause video ${info.key} ');
    }
  }

  void processBounds() {
    final index = _currentIndex;
    final info = _visibilityInfo!;
    // if (info.visibleFraction == 1) {
    final itemHeight = info.visibleBounds.size.height;
    final newIndex = (scrollPosition / itemHeight) + 1;
    final pos = (info.visibleBounds.size.height * newIndex) - 200;
    final indexFactor = newIndex.floor();
    final indexDecimals = newIndex - indexFactor;
    final carIndex = indexFactor * 2;
    final indexToPlay = indexDecimals >= 0.5 ? carIndex + 1 : carIndex;

    if (pos - 200 < scrollPosition && pos + 200 > scrollPosition) {
      print(

          // 'scroll: $scrollPosition pos: $pos '

          ' actualIndex: $index'
          ' newIndex $newIndex'
          ' indexFactor: $indexFactor'
          ' indexDecimals: $indexDecimals'
          ' carIndex: $carIndex'
          ' indexToPlay: $indexToPlay');
      if (indexToPlay == index) {
        // print('play video ${info.key}  scroll: $scrollPosition pos: $pos ');
      }
    }
    // } else {
    // print('pause video ${info.key} ');
    // }
  }

  void _scrollListener() {
    scrollPosition = _scrollController.position.pixels;
    if (_visibilityInfo != null) {
      processBounds();
    }
  }

  void _scrollLingNotifierListener() {
    setState(() {
      isScrolling = _scrollController.position.isScrollingNotifier.value;
    });
  }
}
