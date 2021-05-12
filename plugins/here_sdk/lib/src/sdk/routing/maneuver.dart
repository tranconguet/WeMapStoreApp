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
import 'package:here_sdk/src/sdk/core/geo_coordinates.dart';
import 'package:here_sdk/src/sdk/core/localized_texts.dart';
import 'package:here_sdk/src/sdk/routing/indoor_maneuver_internal.dart';
import 'package:here_sdk/src/sdk/routing/maneuver_action.dart';
import 'package:here_sdk/src/sdk/routing/road_texts.dart';
import 'package:here_sdk/src/sdk/routing/road_type.dart';

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'package:here_sdk/src/_library_context.dart' as __lib;

/// This class provides all the information for a maneuver.
///
/// The directional information (e.g. road names, road
/// numbers and signpost direction) is stored in [Maneuver.roadTexts] and [Maneuver.nextRoadTexts] attributes.
/// As for the motorway exit information, it can be obtained from [Maneuver.exitSignTexts] attribute.
abstract class Maneuver {

  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release();



  /// Gets the maneuver action.
  ManeuverAction get action;





  /// Gets the geographic coordinates where the maneuver is located.
  GeoCoordinates get coordinates;





  /// Gets the country code of the maneuver position.
  String get countryCode;





  /// Gets the textual attributes of the exit sign.
  LocalizedTexts get exitSignTexts;





  /// Gets the length of the maneuver in meters.
  int get lengthInMeters;





  /// Gets the geographic coordinates that make up the polyline of this maneuver. All items
  /// in the list belong to a route shape, it is guarantied that the return list has at least one item.
  List<GeoCoordinates> get polyline;





  /// Gets the textual attributes of the current road.
  RoadTexts get roadTexts;





  /// Gets the current road type.
  RoadType get roadType;





  /// Gets the current road name as shown on the local road signs.
  @Deprecated("Will be removed in v4.8.0, use [Maneuver.roadTexts], which exposes multiple names and numbers together with locale information.")
  String get roadName;





  /// Gets the orthographic language code of current road name.
  @Deprecated("Will be removed in v4.8.0, use [Maneuver.roadTexts], which exposes multiple names and numbers together with locale information.")
  String get roadNameLanguageCode;





  /// Gets the current road number as shown on the local road signs.
  @Deprecated("Will be removed in v4.8.0, use [Maneuver.roadTexts], which exposes multiple names and numbers together with locale information.")
  String get roadNumber;





  /// Gets the textual attributes of the next road.
  RoadTexts get nextRoadTexts;





  /// Gets the next road type.
  RoadType get nextRoadType;





  /// Gets the next road name as shown on the local road signs.
  @Deprecated("Will be removed in v4.8.0, use [Maneuver.nextRoadTexts], which exposes multiple names and numbers together with locale information.")
  String get nextRoadName;





  /// Gets the orthographic language code of next road name.
  @Deprecated("Will be removed in v4.8.0, use [Maneuver.nextRoadTexts], which exposes multiple names and numbers together with locale information.")
  String get nextRoadNameLanguageCode;





  /// Gets the next road number as shown on the local road signs.
  @Deprecated("Will be removed in v4.8.0, use [Maneuver.nextRoadTexts], which exposes multiple names and numbers together with locale information.")
  String get nextRoadNumber;





  /// Gets the maneuver instruction.
  String get text;





  /// @nodoc
  IndoorManeuverInternal get internalindoorManeuver;



}


// Maneuver "private" section, not exported.

final _sdk_routing_Maneuver_copy_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_Maneuver_copy_handle'));
final _sdk_routing_Maneuver_release_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_routing_Maneuver_release_handle'));

class Maneuver$Impl implements Maneuver {
  @protected
  Pointer<Void> handle;

  Maneuver$Impl(this.handle);

  @override
  void release() {
    if (handle == null) return;
    __lib.uncacheObject(this);
    __lib.ffi_uncache_token(handle, __lib.LibraryContext.isolateId);
    _sdk_routing_Maneuver_release_handle(handle);
    handle = null;
  }

  @override
  ManeuverAction get action {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Uint32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_action_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_ManeuverAction_fromFfi(__result_handle);
    } finally {
      sdk_routing_ManeuverAction_releaseFfiHandle(__result_handle);
    }
  }


  @override
  GeoCoordinates get coordinates {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_coordinates_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_core_GeoCoordinates_fromFfi(__result_handle);
    } finally {
      sdk_core_GeoCoordinates_releaseFfiHandle(__result_handle);
    }
  }


  @override
  String get countryCode {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_countryCode_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return String_fromFfi_nullable(__result_handle);
    } finally {
      String_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  LocalizedTexts get exitSignTexts {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_exitSignTexts_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_core_LocalizedTexts_fromFfi(__result_handle);
    } finally {
      sdk_core_LocalizedTexts_releaseFfiHandle(__result_handle);
    }
  }


  @override
  int get lengthInMeters {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Int32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_lengthInMeters_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }



  List<GeoCoordinates> _cache_polyline;
  bool _is_cached_polyline = false;
  @override

  List<GeoCoordinates> get polyline {
    if (!_is_cached_polyline) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_polyline_get'));
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
  RoadTexts get roadTexts {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_roadTexts_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_RoadTexts_fromFfi(__result_handle);
    } finally {
      sdk_routing_RoadTexts_releaseFfiHandle(__result_handle);
    }
  }


  @override
  RoadType get roadType {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_roadType_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_RoadType_fromFfi_nullable(__result_handle);
    } finally {
      sdk_routing_RoadType_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  String get roadName {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_roadName_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return String_fromFfi_nullable(__result_handle);
    } finally {
      String_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  String get roadNameLanguageCode {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_roadNameLanguageCode_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return String_fromFfi_nullable(__result_handle);
    } finally {
      String_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  String get roadNumber {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_roadNumber_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return String_fromFfi_nullable(__result_handle);
    } finally {
      String_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  RoadTexts get nextRoadTexts {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_nextRoadTexts_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_RoadTexts_fromFfi(__result_handle);
    } finally {
      sdk_routing_RoadTexts_releaseFfiHandle(__result_handle);
    }
  }


  @override
  RoadType get nextRoadType {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_nextRoadType_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_RoadType_fromFfi_nullable(__result_handle);
    } finally {
      sdk_routing_RoadType_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  String get nextRoadName {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_nextRoadName_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return String_fromFfi_nullable(__result_handle);
    } finally {
      String_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  String get nextRoadNameLanguageCode {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_nextRoadNameLanguageCode_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return String_fromFfi_nullable(__result_handle);
    } finally {
      String_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  String get nextRoadNumber {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_nextRoadNumber_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return String_fromFfi_nullable(__result_handle);
    } finally {
      String_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  String get text {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_text_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return String_fromFfi(__result_handle);
    } finally {
      String_releaseFfiHandle(__result_handle);
    }
  }


  @override
  IndoorManeuverInternal get internalindoorManeuver {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Maneuver_indoorManeuver_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_IndoorManeuverInternal_fromFfi_nullable(__result_handle);
    } finally {
      sdk_routing_IndoorManeuverInternal_releaseFfiHandle_nullable(__result_handle);
    }
  }



}

Pointer<Void> sdk_routing_Maneuver_toFfi(Maneuver value) =>
  _sdk_routing_Maneuver_copy_handle((value as Maneuver$Impl).handle);

Maneuver sdk_routing_Maneuver_fromFfi(Pointer<Void> handle) {
  final isolateId = __lib.LibraryContext.isolateId;
  final token = __lib.ffi_get_cached_token(handle, isolateId);
  final instance = __lib.instanceCache[token] as Maneuver;
  if (instance != null) return instance;

  final _copied_handle = _sdk_routing_Maneuver_copy_handle(handle);
  final result = Maneuver$Impl(_copied_handle);
  __lib.ffi_cache_token(_copied_handle, isolateId, __lib.cacheObject(result));
  return result;
}

void sdk_routing_Maneuver_releaseFfiHandle(Pointer<Void> handle) =>
  _sdk_routing_Maneuver_release_handle(handle);

Pointer<Void> sdk_routing_Maneuver_toFfi_nullable(Maneuver value) =>
  value != null ? sdk_routing_Maneuver_toFfi(value) : Pointer<Void>.fromAddress(0);

Maneuver sdk_routing_Maneuver_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? sdk_routing_Maneuver_fromFfi(handle) : null;

void sdk_routing_Maneuver_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _sdk_routing_Maneuver_release_handle(handle);

// End of Maneuver "private" section.

