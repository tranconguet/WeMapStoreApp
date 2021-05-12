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
import 'package:here_sdk/src/_type_repository.dart' as __lib;
import 'package:here_sdk/src/builtin_types__conversion.dart';
import 'package:here_sdk/src/sdk/core/location.dart';
import 'package:here_sdk/src/sdk/core/location_impl.dart' as location_impl;

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'package:here_sdk/src/_library_context.dart' as __lib;

/// This abstract class should be implemented in order to receive notifications
/// about location updates.
abstract class LocationListener {
  LocationListener() {}

  factory LocationListener.fromLambdas({
    @required void Function(location_impl.Location) lambda_onLocationUpdated
  }) => LocationListener$Lambdas(
    lambda_onLocationUpdated
  );

  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release() {}

  /// Called each time a new location is available.
  ///
  /// Invoked on the main thread.
  ///
  /// [location] Current location.
  ///
  onLocationUpdated(location_impl.Location location);
}


// LocationListener "private" section, not exported.

final _sdk_core_LocationListener_copy_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_core_LocationListener_copy_handle'));
final _sdk_core_LocationListener_release_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_core_LocationListener_release_handle'));
final _sdk_core_LocationListener_create_proxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Pointer, Pointer),
    Pointer<Void> Function(int, int, Pointer, Pointer)
  >('here_sdk_sdk_core_LocationListener_create_proxy'));
final _sdk_core_LocationListener_get_type_id = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_core_LocationListener_get_type_id'));


class LocationListener$Lambdas implements LocationListener {
  void Function(location_impl.Location) lambda_onLocationUpdated;

  LocationListener$Lambdas(
    this.lambda_onLocationUpdated
  );

  @override
  void release() {}

  @override
  onLocationUpdated(location_impl.Location location) =>
    lambda_onLocationUpdated(location);
}

class LocationListener$Impl implements LocationListener {
  Pointer<Void> handle;
  LocationListener$Impl(this.handle);

  @override
  void release() {
    if (handle == null) return;
    __lib.uncacheObject(this);
    __lib.ffi_uncache_token(handle, __lib.LibraryContext.isolateId);
    _sdk_core_LocationListener_release_handle(handle);
    handle = null;
  }

  @override
  onLocationUpdated(location_impl.Location location) {
    final _onLocationUpdated_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32, Pointer<Void>), void Function(Pointer<Void>, int, Pointer<Void>)>('here_sdk_sdk_core_LocationListener_onLocationUpdated__Location'));
    final _location_handle = sdk_core_Location_toFfi(location);
    final _handle = this.handle;
    final __result_handle = _onLocationUpdated_ffi(_handle, __lib.LibraryContext.isolateId, _location_handle);
    sdk_core_Location_releaseFfiHandle(_location_handle);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }


}

int _LocationListener_onLocationUpdated_static(int _token, Pointer<Void> location) {

  try {
    (__lib.instanceCache[_token] as LocationListener).onLocationUpdated(sdk_core_Location_fromFfi(location));
  } finally {
    sdk_core_Location_releaseFfiHandle(location);
  }
  return 0;
}


Pointer<Void> sdk_core_LocationListener_toFfi(LocationListener value) {
  if (value is LocationListener$Impl) return _sdk_core_LocationListener_copy_handle(value.handle);

  final result = _sdk_core_LocationListener_create_proxy(
    __lib.cacheObject(value),
    __lib.LibraryContext.isolateId,
    __lib.uncacheObjectFfi,
    Pointer.fromFunction<Uint8 Function(Uint64, Pointer<Void>)>(_LocationListener_onLocationUpdated_static, __lib.unknownError)
  );

  return result;
}

LocationListener sdk_core_LocationListener_fromFfi(Pointer<Void> handle) {
  final isolateId = __lib.LibraryContext.isolateId;
  final token = __lib.ffi_get_cached_token(handle, isolateId);
  final instance = __lib.instanceCache[token] as LocationListener;
  if (instance != null) return instance;

  final _type_id_handle = _sdk_core_LocationListener_get_type_id(handle);
  final factoryConstructor = __lib.typeRepository[String_fromFfi(_type_id_handle)];
  String_releaseFfiHandle(_type_id_handle);

  final _copied_handle = _sdk_core_LocationListener_copy_handle(handle);
  final result = factoryConstructor != null
    ? factoryConstructor(_copied_handle)
    : LocationListener$Impl(_copied_handle);
  __lib.ffi_cache_token(_copied_handle, isolateId, __lib.cacheObject(result));
  return result;
}

void sdk_core_LocationListener_releaseFfiHandle(Pointer<Void> handle) =>
  _sdk_core_LocationListener_release_handle(handle);

Pointer<Void> sdk_core_LocationListener_toFfi_nullable(LocationListener value) =>
  value != null ? sdk_core_LocationListener_toFfi(value) : Pointer<Void>.fromAddress(0);

LocationListener sdk_core_LocationListener_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? sdk_core_LocationListener_fromFfi(handle) : null;

void sdk_core_LocationListener_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _sdk_core_LocationListener_release_handle(handle);

// End of LocationListener "private" section.

