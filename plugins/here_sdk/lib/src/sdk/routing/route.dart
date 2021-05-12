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
import 'package:here_sdk/src/generic_types__conversion.dart';
import 'package:here_sdk/src/sdk/core/geo_box.dart';
import 'package:here_sdk/src/sdk/core/geo_coordinates.dart';
import 'package:here_sdk/src/sdk/core/language_code.dart';
import 'package:here_sdk/src/sdk/routing/e_v_details.dart';
import 'package:here_sdk/src/sdk/routing/optimization_mode.dart';
import 'package:here_sdk/src/sdk/routing/route_handle.dart';
import 'package:here_sdk/src/sdk/routing/section.dart';
import 'package:here_sdk/src/sdk/routing/transport_mode.dart';

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'package:here_sdk/src/_library_context.dart' as __lib;

/// A route is a path through a road network over which someone travels.
///
/// **Note:** Each [Section] of a route contains a list of [SectionNotice] objects
/// that describe _potential issues_ after the route was calculated. If the list is non-empty,
/// it is recommended to evaluate possible violations against the requested route options and
/// reject the route if deemed necessary.
abstract class Route {

  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release();



  /// Gets the sections that make up this route.
  List<Section> get sections;





  /// Gets the geographic coordinates that make up the polyline of this route. These may not be the same as the original
  /// coordinates specified in the request for a route.
  List<GeoCoordinates> get polyline;





  /// Gets the closest rectangular area where this route fits in.
  GeoBox get boundingBox;





  /// Gets the length of this route in meters.
  int get lengthInMeters;





  /// Gets the estimated time in seconds needed to travel along this route, including
  /// real-time traffic delays if available.
  int get durationInSeconds;





  /// Gets the estimated time in seconds spent in traffic along this route. Negative values
  /// indicate that the route can be traversed faster than usual.
  int get trafficDelayInSeconds;





  /// Gets the language requested for all textual information related to this route.
  LanguageCode get language;





  /// Gets the optimization mode requested for route calculation.
  OptimizationMode get optimizationMode;





  /// Gets the transport mode requested for route calculation.
  TransportMode get transportMode;





  /// Gets the additional information that is available if the transportation mode used
  /// for this route is an electric vehicle.
  EVDetails get evDetails;





  /// Gets the route handle of this route. Note that it is provided only if
  /// [RouteOptions.enableRouteHandle] is set before route calculation.
  /// @nodoc
  RouteHandle get internalrouteHandle;



}


// Route "private" section, not exported.

final _sdk_routing_Route_copy_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_Route_copy_handle'));
final _sdk_routing_Route_release_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_routing_Route_release_handle'));

class Route$Impl implements Route {
  @protected
  Pointer<Void> handle;

  Route$Impl(this.handle);

  @override
  void release() {
    if (handle == null) return;
    __lib.uncacheObject(this);
    __lib.ffi_uncache_token(handle, __lib.LibraryContext.isolateId);
    _sdk_routing_Route_release_handle(handle);
    handle = null;
  }


  List<Section> _cache_sections;
  bool _is_cached_sections = false;
  @override

  List<Section> get sections {
    if (!_is_cached_sections) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_sections_get'));
      final __result_handle = _get_ffi(this.handle, __lib.LibraryContext.isolateId);
      try {
        _cache_sections = heresdk_routing_common_bindings_ListOf_sdk_routing_Section_fromFfi(__result_handle);
      } finally {
        heresdk_routing_common_bindings_ListOf_sdk_routing_Section_releaseFfiHandle(__result_handle);
      }
      _is_cached_sections = true;
    }
    return _cache_sections;
  }


  List<GeoCoordinates> _cache_polyline;
  bool _is_cached_polyline = false;
  @override

  List<GeoCoordinates> get polyline {
    if (!_is_cached_polyline) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_polyline_get'));
      final __result_handle = _get_ffi(this.handle, __lib.LibraryContext.isolateId);
      try {
        _cache_polyline = heresdk_routing_common_bindings_ListOf_sdk_core_GeoCoordinates_fromFfi(__result_handle);
      } finally {
        heresdk_routing_common_bindings_ListOf_sdk_core_GeoCoordinates_releaseFfiHandle(__result_handle);
      }
      _is_cached_polyline = true;
    }
    return _cache_polyline;
  }

  @override
  GeoBox get boundingBox {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_boundingBox_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_core_GeoBox_fromFfi(__result_handle);
    } finally {
      sdk_core_GeoBox_releaseFfiHandle(__result_handle);
    }
  }


  @override
  int get lengthInMeters {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Int32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_lengthInMeters_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }


  @override
  int get durationInSeconds {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Int32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_durationInSeconds_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }


  @override
  int get trafficDelayInSeconds {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Int32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_trafficDelayInSeconds_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }


  @override
  LanguageCode get language {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Uint32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_language_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_core_LanguageCode_fromFfi(__result_handle);
    } finally {
      sdk_core_LanguageCode_releaseFfiHandle(__result_handle);
    }
  }


  @override
  OptimizationMode get optimizationMode {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Uint32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_optimizationMode_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_OptimizationMode_fromFfi(__result_handle);
    } finally {
      sdk_routing_OptimizationMode_releaseFfiHandle(__result_handle);
    }
  }


  @override
  TransportMode get transportMode {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Uint32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_transportMode_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_TransportMode_fromFfi(__result_handle);
    } finally {
      sdk_routing_TransportMode_releaseFfiHandle(__result_handle);
    }
  }


  @override
  EVDetails get evDetails {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_evDetails_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_EVDetails_fromFfi_nullable(__result_handle);
    } finally {
      sdk_routing_EVDetails_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  RouteHandle get internalrouteHandle {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Route_routeHandle_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_RouteHandle_fromFfi_nullable(__result_handle);
    } finally {
      sdk_routing_RouteHandle_releaseFfiHandle_nullable(__result_handle);
    }
  }



}

Pointer<Void> sdk_routing_Route_toFfi(Route value) =>
  _sdk_routing_Route_copy_handle((value as Route$Impl).handle);

Route sdk_routing_Route_fromFfi(Pointer<Void> handle) {
  final isolateId = __lib.LibraryContext.isolateId;
  final token = __lib.ffi_get_cached_token(handle, isolateId);
  final instance = __lib.instanceCache[token] as Route;
  if (instance != null) return instance;

  final _copied_handle = _sdk_routing_Route_copy_handle(handle);
  final result = Route$Impl(_copied_handle);
  __lib.ffi_cache_token(_copied_handle, isolateId, __lib.cacheObject(result));
  return result;
}

void sdk_routing_Route_releaseFfiHandle(Pointer<Void> handle) =>
  _sdk_routing_Route_release_handle(handle);

Pointer<Void> sdk_routing_Route_toFfi_nullable(Route value) =>
  value != null ? sdk_routing_Route_toFfi(value) : Pointer<Void>.fromAddress(0);

Route sdk_routing_Route_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? sdk_routing_Route_fromFfi(handle) : null;

void sdk_routing_Route_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _sdk_routing_Route_release_handle(handle);

// End of Route "private" section.

