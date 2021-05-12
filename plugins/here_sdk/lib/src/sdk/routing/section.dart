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
import 'package:here_sdk/src/sdk/routing/arrival.dart';
import 'package:here_sdk/src/sdk/routing/departure.dart';
import 'package:here_sdk/src/sdk/routing/e_v_details.dart';
import 'package:here_sdk/src/sdk/routing/maneuver.dart';
import 'package:here_sdk/src/sdk/routing/notice.dart';
import 'package:here_sdk/src/sdk/routing/post_action.dart';
import 'package:here_sdk/src/sdk/routing/pre_action.dart';
import 'package:here_sdk/src/sdk/routing/route_place.dart';
import 'package:here_sdk/src/sdk/routing/section_notice.dart';
import 'package:here_sdk/src/sdk/routing/section_transport_mode.dart';
import 'package:here_sdk/src/sdk/routing/span.dart';
import 'package:here_sdk/src/sdk/routing/traffic_speed.dart';
import 'package:here_sdk/src/sdk/routing/transit_section_details.dart';

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'package:here_sdk/src/_library_context.dart' as __lib;

/// A section is a part of the route between two stopovers.
///
/// A stopover is a location on the route where a stop is made.
///
/// **Note:** A section contains a list of [SectionNotice] objects that describe
/// _potential issues_ after the route was calculated. If the list is non-empty, it
/// is recommended to evaluate possible violations against the requested route options
/// and reject the route if deemed necessary.
abstract class Section {

  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release();



  /// Gets the geographic coordinates that make up the polyline of this section.
  List<GeoCoordinates> get polyline;





  /// Gets the [Span]'s that constitute this section.
  List<Span> get spans;





  /// Gets the maneuvers for this section.
  List<Maneuver> get maneuvers;





  /// Gets the traffic speeds information on the section.
  List<TrafficSpeed> get trafficSpeeds;





  /// Gets the closest rectangular area where this section fits in.
  GeoBox get boundingBox;





  /// Gets the length of this section in meters.
  int get lengthInMeters;





  /// Gets the estimated time in seconds needed to travel along this section, including
  /// real-time traffic delays if available.
  int get durationInSeconds;





  /// Gets the estimated extra time in seconds spent due to traffic delays along this section.
  /// Negative values indicate that the route can be traversed faster than usual.
  int get trafficDelayInSeconds;





  /// Gets the transport mode of this section.
  SectionTransportMode get sectionTransportMode;





  /// Gets the departure location.
  @Deprecated("Will be removed in v4.8.0, use [Section.departurePlace] instead.")
  Departure get departure;





  /// Gets the arrival location.
  @Deprecated("Will be removed in v4.8.0, use [Section.arrivalPlace] instead.")
  Arrival get arrival;





  /// Gets the departure place.
  RoutePlace get departurePlace;





  /// Gets the arrival place.
  RoutePlace get arrivalPlace;





  /// Gets the preceding actions that must be done prior to departure at the beginning of the section.
  List<PreAction> get preActions;





  /// Gets the post actions that must be done after the arrival at the end of the section.
  List<PostAction> get postActions;





  /// Gets the notices which explains the issues encountered during processing of this section.
  /// For example, while the scooter transport mode is selected, if no reasonable alternative route is
  /// possible except violating controlled-access to highway rule for the section, one notice is generated
  /// for the violation. The user must judge all the notices carefully before proceeding.
  @Deprecated("Will be removed in v4.9.0. Section.sectionNotices property should be used instead.")
  List<Notice> get notices;





  /// Gets the notices which explains the issues encountered during processing of this section.
  /// For example, while the scooter transport mode is selected, if no reasonable alternative route is
  /// possible except violating controlled-access to highway rule for the section, one notice is generated
  /// for the violation. The user must judge all the notices carefully before proceeding.
  List<SectionNotice> get sectionNotices;





  /// Gets the additional information that is available if the transportation mode used
  /// for this section is an electric vehicle.
  EVDetails get evDetails;





  /// Gets the details of a transit section.
  TransitSectionDetails get transitDetails;



}


// Section "private" section, not exported.

final _sdk_routing_Section_copy_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_Section_copy_handle'));
final _sdk_routing_Section_release_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_routing_Section_release_handle'));

class Section$Impl implements Section {
  @protected
  Pointer<Void> handle;

  Section$Impl(this.handle);

  @override
  void release() {
    if (handle == null) return;
    __lib.uncacheObject(this);
    __lib.ffi_uncache_token(handle, __lib.LibraryContext.isolateId);
    _sdk_routing_Section_release_handle(handle);
    handle = null;
  }


  List<GeoCoordinates> _cache_polyline;
  bool _is_cached_polyline = false;
  @override

  List<GeoCoordinates> get polyline {
    if (!_is_cached_polyline) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_polyline_get'));
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


  List<Span> _cache_spans;
  bool _is_cached_spans = false;
  @override

  List<Span> get spans {
    if (!_is_cached_spans) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_spans_get'));
      final __result_handle = _get_ffi(this.handle, __lib.LibraryContext.isolateId);
      try {
        _cache_spans = heresdk_routing_common_bindings_ListOf_sdk_routing_Span_fromFfi(__result_handle);
      } finally {
        heresdk_routing_common_bindings_ListOf_sdk_routing_Span_releaseFfiHandle(__result_handle);
      }
      _is_cached_spans = true;
    }
    return _cache_spans;
  }


  List<Maneuver> _cache_maneuvers;
  bool _is_cached_maneuvers = false;
  @override

  List<Maneuver> get maneuvers {
    if (!_is_cached_maneuvers) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_maneuvers_get'));
      final __result_handle = _get_ffi(this.handle, __lib.LibraryContext.isolateId);
      try {
        _cache_maneuvers = heresdk_routing_common_bindings_ListOf_sdk_routing_Maneuver_fromFfi(__result_handle);
      } finally {
        heresdk_routing_common_bindings_ListOf_sdk_routing_Maneuver_releaseFfiHandle(__result_handle);
      }
      _is_cached_maneuvers = true;
    }
    return _cache_maneuvers;
  }


  List<TrafficSpeed> _cache_trafficSpeeds;
  bool _is_cached_trafficSpeeds = false;
  @override

  List<TrafficSpeed> get trafficSpeeds {
    if (!_is_cached_trafficSpeeds) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_trafficSpeeds_get'));
      final __result_handle = _get_ffi(this.handle, __lib.LibraryContext.isolateId);
      try {
        _cache_trafficSpeeds = heresdk_routing_common_bindings_ListOf_sdk_routing_TrafficSpeed_fromFfi(__result_handle);
      } finally {
        heresdk_routing_common_bindings_ListOf_sdk_routing_TrafficSpeed_releaseFfiHandle(__result_handle);
      }
      _is_cached_trafficSpeeds = true;
    }
    return _cache_trafficSpeeds;
  }

  @override
  GeoBox get boundingBox {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_boundingBox_get'));
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
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Int32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_lengthInMeters_get'));
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
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Int32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_durationInSeconds_get'));
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
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Int32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_trafficDelayInSeconds_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }


  @override
  SectionTransportMode get sectionTransportMode {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Uint32 Function(Pointer<Void>, Int32), int Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_sectionTransportMode_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_SectionTransportMode_fromFfi(__result_handle);
    } finally {
      sdk_routing_SectionTransportMode_releaseFfiHandle(__result_handle);
    }
  }


  @override
  Departure get departure {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_departure_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_Departure_fromFfi(__result_handle);
    } finally {
      sdk_routing_Departure_releaseFfiHandle(__result_handle);
    }
  }


  @override
  Arrival get arrival {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_arrival_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_Arrival_fromFfi(__result_handle);
    } finally {
      sdk_routing_Arrival_releaseFfiHandle(__result_handle);
    }
  }


  @override
  RoutePlace get departurePlace {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_departurePlace_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_RoutePlace_fromFfi(__result_handle);
    } finally {
      sdk_routing_RoutePlace_releaseFfiHandle(__result_handle);
    }
  }


  @override
  RoutePlace get arrivalPlace {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_arrivalPlace_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_RoutePlace_fromFfi(__result_handle);
    } finally {
      sdk_routing_RoutePlace_releaseFfiHandle(__result_handle);
    }
  }



  List<PreAction> _cache_preActions;
  bool _is_cached_preActions = false;
  @override

  List<PreAction> get preActions {
    if (!_is_cached_preActions) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_preActions_get'));
      final __result_handle = _get_ffi(this.handle, __lib.LibraryContext.isolateId);
      try {
        _cache_preActions = heresdk_routing_common_bindings_ListOf_sdk_routing_PreAction_fromFfi(__result_handle);
      } finally {
        heresdk_routing_common_bindings_ListOf_sdk_routing_PreAction_releaseFfiHandle(__result_handle);
      }
      _is_cached_preActions = true;
    }
    return _cache_preActions;
  }


  List<PostAction> _cache_postActions;
  bool _is_cached_postActions = false;
  @override

  List<PostAction> get postActions {
    if (!_is_cached_postActions) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_postActions_get'));
      final __result_handle = _get_ffi(this.handle, __lib.LibraryContext.isolateId);
      try {
        _cache_postActions = heresdk_routing_common_bindings_ListOf_sdk_routing_PostAction_fromFfi(__result_handle);
      } finally {
        heresdk_routing_common_bindings_ListOf_sdk_routing_PostAction_releaseFfiHandle(__result_handle);
      }
      _is_cached_postActions = true;
    }
    return _cache_postActions;
  }


  List<Notice> _cache_notices;
  bool _is_cached_notices = false;
  @override

  List<Notice> get notices {
    if (!_is_cached_notices) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_notices_get'));
      final __result_handle = _get_ffi(this.handle, __lib.LibraryContext.isolateId);
      try {
        _cache_notices = heresdk_routing_common_bindings_ListOf_sdk_routing_Notice_fromFfi(__result_handle);
      } finally {
        heresdk_routing_common_bindings_ListOf_sdk_routing_Notice_releaseFfiHandle(__result_handle);
      }
      _is_cached_notices = true;
    }
    return _cache_notices;
  }


  List<SectionNotice> _cache_sectionNotices;
  bool _is_cached_sectionNotices = false;
  @override

  List<SectionNotice> get sectionNotices {
    if (!_is_cached_sectionNotices) {
      final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_sectionNotices_get'));
      final __result_handle = _get_ffi(this.handle, __lib.LibraryContext.isolateId);
      try {
        _cache_sectionNotices = heresdk_routing_common_bindings_ListOf_sdk_routing_SectionNotice_fromFfi(__result_handle);
      } finally {
        heresdk_routing_common_bindings_ListOf_sdk_routing_SectionNotice_releaseFfiHandle(__result_handle);
      }
      _is_cached_sectionNotices = true;
    }
    return _cache_sectionNotices;
  }

  @override
  EVDetails get evDetails {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_evDetails_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_EVDetails_fromFfi_nullable(__result_handle);
    } finally {
      sdk_routing_EVDetails_releaseFfiHandle_nullable(__result_handle);
    }
  }


  @override
  TransitSectionDetails get transitDetails {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_routing_Section_transitDetails_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_routing_TransitSectionDetails_fromFfi_nullable(__result_handle);
    } finally {
      sdk_routing_TransitSectionDetails_releaseFfiHandle_nullable(__result_handle);
    }
  }



}

Pointer<Void> sdk_routing_Section_toFfi(Section value) =>
  _sdk_routing_Section_copy_handle((value as Section$Impl).handle);

Section sdk_routing_Section_fromFfi(Pointer<Void> handle) {
  final isolateId = __lib.LibraryContext.isolateId;
  final token = __lib.ffi_get_cached_token(handle, isolateId);
  final instance = __lib.instanceCache[token] as Section;
  if (instance != null) return instance;

  final _copied_handle = _sdk_routing_Section_copy_handle(handle);
  final result = Section$Impl(_copied_handle);
  __lib.ffi_cache_token(_copied_handle, isolateId, __lib.cacheObject(result));
  return result;
}

void sdk_routing_Section_releaseFfiHandle(Pointer<Void> handle) =>
  _sdk_routing_Section_release_handle(handle);

Pointer<Void> sdk_routing_Section_toFfi_nullable(Section value) =>
  value != null ? sdk_routing_Section_toFfi(value) : Pointer<Void>.fromAddress(0);

Section sdk_routing_Section_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? sdk_routing_Section_fromFfi(handle) : null;

void sdk_routing_Section_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _sdk_routing_Section_release_handle(handle);

// End of Section "private" section.

