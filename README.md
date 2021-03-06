# Flutter Link Previewer

URL preview with basic customization and ability to render from cached data.

<img src="https://user-images.githubusercontent.com/14123304/110205826-88bb0580-7e7a-11eb-8101-b12e83ce0787.PNG" width="320" height="693">

## Getting Started

```dart
LinkPreview(
  onPreviewDataFetched: _onPreviewDataFetched,
  text: 'https://github.com/flyerhq',
  width: MediaQuery.of(context).size.width,
)
```

## Customization

```dart
final style = TextStyle(
  color: Colors.red,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  height: 1.375,
);


LinkPreview(
  linkStyle: style,
  metadataTextStyle: style.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  metadataTitleStyle: style.copyWith(
    fontWeight: FontWeight.w800,
  ),
  padding: EdgeInsets.symmetric(
    horizontal: 24,
    vertical: 16,
  ),
  onPreviewDataFetched: _onPreviewDataFetched,
  text: 'https://github.com/flyerhq',
  textStyle: style,
  width: width,
);
```

## Render from cached data

Store the data you receive from `onPreviewDataFetched` callback, then

```dart
LinkPreview(
  previewData: _cachedData,
  text: 'https://github.com/flyerhq',
  width: MediaQuery.of(context).size.width,
)
```

## License

[MIT](LICENSE)
