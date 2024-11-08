import 'package:equatable/equatable.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:meta/meta.dart';

/// A class that represents an image showed in a preview widget.
@immutable
class PreviewVideo extends Equatable {
  /// Creates a preview image.
  const PreviewVideo({
    required this.id,
    required this.uri,
    required this.thumbnail,
    required this.author,
  });

  /// Unique ID of the image.
  final String id;

  /// Image's URI.
  final String uri;

  final String thumbnail;

  final User author;

  /// Equatable props.
  @override
  List<Object> get props => [id, uri, thumbnail, author];
}
