// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pixabayImagesHash() => r'96ecfd64ef38e74e0c5fcb1ad8d9a84835895778';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [pixabayImages].
@ProviderFor(pixabayImages)
const pixabayImagesProvider = PixabayImagesFamily();

/// See also [pixabayImages].
class PixabayImagesFamily extends Family<AsyncValue<List<PixabayImage>>> {
  /// See also [pixabayImages].
  const PixabayImagesFamily();

  /// See also [pixabayImages].
  PixabayImagesProvider call(
    String keywords,
  ) {
    return PixabayImagesProvider(
      keywords,
    );
  }

  @override
  PixabayImagesProvider getProviderOverride(
    covariant PixabayImagesProvider provider,
  ) {
    return call(
      provider.keywords,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pixabayImagesProvider';
}

/// See also [pixabayImages].
class PixabayImagesProvider
    extends AutoDisposeFutureProvider<List<PixabayImage>> {
  /// See also [pixabayImages].
  PixabayImagesProvider(
    String keywords,
  ) : this._internal(
          (ref) => pixabayImages(
            ref as PixabayImagesRef,
            keywords,
          ),
          from: pixabayImagesProvider,
          name: r'pixabayImagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pixabayImagesHash,
          dependencies: PixabayImagesFamily._dependencies,
          allTransitiveDependencies:
              PixabayImagesFamily._allTransitiveDependencies,
          keywords: keywords,
        );

  PixabayImagesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.keywords,
  }) : super.internal();

  final String keywords;

  @override
  Override overrideWith(
    FutureOr<List<PixabayImage>> Function(PixabayImagesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PixabayImagesProvider._internal(
        (ref) => create(ref as PixabayImagesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        keywords: keywords,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<PixabayImage>> createElement() {
    return _PixabayImagesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PixabayImagesProvider && other.keywords == keywords;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, keywords.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PixabayImagesRef on AutoDisposeFutureProviderRef<List<PixabayImage>> {
  /// The parameter `keywords` of this provider.
  String get keywords;
}

class _PixabayImagesProviderElement
    extends AutoDisposeFutureProviderElement<List<PixabayImage>>
    with PixabayImagesRef {
  _PixabayImagesProviderElement(super.provider);

  @override
  String get keywords => (origin as PixabayImagesProvider).keywords;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
