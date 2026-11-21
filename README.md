# Laboratory Discussion

## Student Information

**Name:** Yhvhan Suba

**Section:** INF245MWA

**Subject:** Mobile Programming

## Discussion Question

**How do you integrate an image into `newsfeed_card.dart` and make it dynamic whether the post has an image or not?**

## Answer

To add an image to the newsfeed card, first declare the image folder in `pubspec.yaml`. In this project, the folder is registered under Flutter assets:

```yaml
flutter:
  assets:
    - assets/images/
```

After declaring the folder, call the image folder path in the code (for example, `assets/images/post_image.jpg`). The `NewsfeedCard` widget receives `hasImage` and `imagePath` parameters. `hasImage` indicates whether a post includes an image, while `imagePath` contains the image asset path.

```dart
hasImage == true && imagePath != null
    ? Image(image: AssetImage(imagePath!))
    : SizedBox.shrink(),
```

This condition makes the image dynamic. When `hasImage` is `true` and `imagePath` has a value, Flutter loads and displays the image using `AssetImage`. When the post has no image, `SizedBox.shrink()` displays an empty widget, so the card still works correctly without leaving a blank image area. This lets the same `NewsfeedCard` layout support posts with or without images.
