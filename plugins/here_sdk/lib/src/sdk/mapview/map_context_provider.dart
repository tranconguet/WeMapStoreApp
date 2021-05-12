// Copyright (c) 2018-2020 HERE Global B.V. and its affiliate(s).
// All rights reserved.
//
// This software and other materials contain proprietary information
// controlled by HERE and are protected by applicable copyright legislation.
// Any use and utilization of this software and other materials and
// disclosure to any third parties is conditional upon having a separate
// agreement with HERE for the access, use, utilization or disclosure of this
// software. In the absence of such agreement, the use of the software is not
// allowed.
//

import 'package:here_sdk/src/_token_cache.dart' as __lib;
import 'package:here_sdk/src/builtin_types__conversion.dart';
import 'package:here_sdk/src/sdk/mapview/map_context.dart';

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'package:here_sdk/src/_library_context.dart' as __lib;

/// @nodoc
abstract class MapContextProvider {

  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release();

  /// Gets the map context.
  ///
  /// Creates one if necessary (when called for the first time
  /// or after a call to destroy()).
  ///
  /// @nodoc
  static MapContext internalgetInstance() => MapContextProvider$Impl.internalgetInstance();
  /// Destroys the map context.
  ///
  /// The instance is not usable after this point, get a new one
  /// with get_instance() if needed.
  ///
  /// @nodoc
  static internaldestroy() => MapContextProvider$Impl.internaldestroy();
}


// MapContextProvider "private" section, not exported.

final _sdk_mapview_MapContextProvider_copy_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_mapview_MapContextProvider_copy_handle'));
final _sdk_mapview_MapContextProvider_release_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_mapview_MapContextProvider_release_handle'));



class MapContextProvider$Impl implements MapContextProvider {
  @protected
  Pointer<Void> handle;

  MapContextProvider$Impl(this.handle);

  @override
  void release() {
    if (handle == null) return;
    __lib.uncacheObject(this);
    __lib.ffi_uncache_token(handle, __lib.LibraryContext.isolateId);
    _sdk_mapview_MapContextProvider_release_handle(handle);
    handle = null;
  }

  static MapContext internalgetInstance() {
    final _getInstance_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Int32), Pointer<Void> Function(int)>('here_sdk_sdk_mapview_MapContextProvider_getInstance'));
    final __result_handle = _getInstance_ffi(__lib.LibraryContext.isolateId);
    try {
      return sdk_mapview_MapContext_fromFfi_nullable(__result_handle);
    } finally {
      sdk_mapview_MapContext_releaseFfiHandle_nullable(__result_handle);
    }
  }

  static internaldestroy() {
    final _destroy_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Int32), void Function(int)>('here_sdk_sdk_mapview_MapContextProvider_destroy'));
    final __result_handle = _destroy_ffi(__lib.LibraryContext.isolateId);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }


}

Pointer<Void> sdk_mapview_MapContextProvider_toFfi(MapContextProvider value) =>
  _sdk_mapview_MapContextProvider_copy_handle((value as MapContextProvider$Impl).handle);

MapContextProvider sdk_mapview_MapContextProvider_fromFfi(Pointer<Void> handle) {
  final isolateId = __lib.LibraryContext.isolateId;
  final token = __lib.ffi_get_cached_token(handle, isolateId);
  final instance = __lib.instanceCache[token] as MapContextProvider;
  if (instance != null) return instance;

  final _copied_handle = _sdk_mapview_MapContextProvider_copy_handle(handle);
  final result = MapContextProvider$Impl(_copied_handle);
  __lib.ffi_cache_token(_copied_handle, isolateId, __lib.cacheObject(result));
  return result;
}

void sdk_mapview_MapContextProvider_releaseFfiHandle(Pointer<Void> handle) =>
  _sdk_mapview_MapContextProvider_release_handle(handle);

Pointer<Void> sdk_mapview_MapContextProvider_toFfi_nullable(MapContextProvider value) =>
  value != null ? sdk_mapview_MapContextProvider_toFfi(value) : Pointer<Void>.fromAddress(0);

MapContextProvider sdk_mapview_MapContextProvider_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? sdk_mapview_MapContextProvider_fromFfi(handle) : null;

void sdk_mapview_MapContextProvider_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _sdk_mapview_MapContextProvider_release_handle(handle);

// End of MapContextProvider "private" section.

