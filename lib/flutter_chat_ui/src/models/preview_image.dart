import 'package:equatable/equatable.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:meta/meta.dart';

/// A class that represents an image showed in a preview widget.
@immutable
class PreviewImage extends Equatable {
  /// Creates a preview image.
  const PreviewImage({
    required this.id,
    required this.uri,
    required this.author,
  });

  /// Unique ID of the image.
  final String id;

  /// Image's URI.
  final String uri;

  final User author;

  /// Equatable props.
  @override
  List<Object> get props => [id, uri, author];
}
