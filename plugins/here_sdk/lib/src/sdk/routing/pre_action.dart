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

import 'dart:collection';
import 'package:collection/collection.dart';
import 'package:here_sdk/src/builtin_types__conversion.dart';
import 'package:here_sdk/src/sdk/routing/pre_action_type.dart';

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'package:here_sdk/src/_library_context.dart' as __lib;

/// An action that must be done prior to the section, i.e.
///
/// boarding a ferry.

class PreAction {
  /// Type of this action.
  PreActionType action;

  /// Estimated duration of this action in seconds.
  int durationInSeconds;


  PreAction(this.action, this.durationInSeconds);


  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (other is! PreAction) return false;
    PreAction _other = other;
    return action == _other.action &&
        durationInSeconds == _other.durationInSeconds;
  }

  @override
  int get hashCode {
    int result = 7;
    result = 31 * result + action.hashCode;
    result = 31 * result + durationInSeconds.hashCode;
    return result;
  }
}


// PreAction "private" section, not exported.

final _sdk_routing_PreAction_create_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32, Int32),
    Pointer<Void> Function(int, int)
  >('here_sdk_sdk_routing_PreAction_create_handle'));
final _sdk_routing_PreAction_release_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_routing_PreAction_release_handle'));
final _sdk_routing_PreAction_get_field_action = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('here_sdk_sdk_routing_PreAction_get_field_action'));
final _sdk_routing_PreAction_get_field_durationInSeconds = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('here_sdk_sdk_routing_PreAction_get_field_durationInSeconds'));

Pointer<Void> sdk_routing_PreAction_toFfi(PreAction value) {
  final _action_handle = sdk_routing_PreActionType_toFfi(value.action);
  final _durationInSeconds_handle = (value.durationInSeconds);
  final _result = _sdk_routing_PreAction_create_handle(_action_handle, _durationInSeconds_handle);
  sdk_routing_PreActionType_releaseFfiHandle(_action_handle);
  (_durationInSeconds_handle);
  return _result;
}

PreAction sdk_routing_PreAction_fromFfi(Pointer<Void> handle) {
  final _action_handle = _sdk_routing_PreAction_get_field_action(handle);
  final _durationInSeconds_handle = _sdk_routing_PreAction_get_field_durationInSeconds(handle);
  try {
    return PreAction(
      sdk_routing_PreActionType_fromFfi(_action_handle), 
      (_durationInSeconds_handle)
    );
  } finally {
    sdk_routing_PreActionType_releaseFfiHandle(_action_handle);
    (_durationInSeconds_handle);
  }
}

void sdk_routing_PreAction_releaseFfiHandle(Pointer<Void> handle) => _sdk_routing_PreAction_release_handle(handle);

// Nullable PreAction

final _sdk_routing_PreAction_create_handle_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_PreAction_create_handle_nullable'));
final _sdk_routing_PreAction_release_handle_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_routing_PreAction_release_handle_nullable'));
final _sdk_routing_PreAction_get_value_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_PreAction_get_value_nullable'));

Pointer<Void> sdk_routing_PreAction_toFfi_nullable(PreAction value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = sdk_routing_PreAction_toFfi(value);
  final result = _sdk_routing_PreAction_create_handle_nullable(_handle);
  sdk_routing_PreAction_releaseFfiHandle(_handle);
  return result;
}

PreAction sdk_routing_PreAction_fromFfi_nullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _sdk_routing_PreAction_get_value_nullable(handle);
  final result = sdk_routing_PreAction_fromFfi(_handle);
  sdk_routing_PreAction_releaseFfiHandle(_handle);
  return result;
}

void sdk_routing_PreAction_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _sdk_routing_PreAction_release_handle_nullable(handle);

// End of PreAction "private" section.

