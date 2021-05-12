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
import 'package:here_sdk/src/generic_types__conversion.dart';

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'package:here_sdk/src/_library_context.dart' as __lib;



/// Information about the address of a location.
@immutable
class Address {
  /// The city name for the address, for example, "Brooklyn".
  final String city;

  /// An ISO-3166-1 (3-letter) country code for the address, for example, "USA".
  final String countryCode;

  /// The country name for the address, for example, "United States".
  final String country;

  /// The district name for the address.
  /// It is a division of city, typically an administrative unit within a larger city or
  /// a customary name of a city's neighborhood, for example, "Bedford-Stuyvesant".
  final String district;

  /// The subdistrict name for the address.
  /// It is a subdivision of a district.
  final String subdistrict;

  /// The house name or number for the address, for example, "347".
  final String houseNumOrName;

  /// The postal code for the address.
  /// It is an alphanumeric string included in a postal address to facilitate mail sorting, known locally
  /// in various countries throughout the world as a postcode, post code, PIN or ZIP Code, for example, "11233".
  final String postalCode;

  /// The state name for the address.
  /// It is code/abbreviation for the state division of a country, for example, "New York".
  @Deprecated("Will be removed in v4.8.0. Please use state instead.")
  final String stateName;

  /// The state name for the address.
  /// It is code/abbreviation for the state division of a country, for example, "New York".
  final String state;

  /// The county name for the address.
  /// It is a division of a state, typically a secondary-level administrative division of a country or equivalent,
  /// for example, "Kings".
  @Deprecated("Will be removed in v4.8.0. Please use county instead")
  final String countyName;

  /// The county name for the address.
  /// It is a division of a state, typically a secondary-level administrative division of a country or equivalent,
  /// for example, "Kings".
  final String county;

  /// The street name for the address, for example, "Lewis Ave".
  @Deprecated("Will be removed in v4.8.0. Please use street instead")
  final String streetName;

  /// The street name for the address, for example, "Lewis Ave".
  final String street;

  /// The block number for the address. It is part of Japanese addressing system.
  final String block;

  /// The sub-block number for the address. It is part of Japanese addressing system.
  final String subBlock;

  /// The text for the address, for example, "Secret Garden, 347 Lewis Ave, Brooklyn, NY 11233, United States".
  final String addressText;

  /// Additional address data.
  @Deprecated("This field is unused and will be removed in v4.8.0.")
  final Map<String, String> additionalData;


  const Address._(this.city, this.countryCode, this.country, this.district, this.subdistrict, this.houseNumOrName, this.postalCode, this.stateName, this.state, this.countyName, this.county, this.streetName, this.street, this.block, this.subBlock, this.addressText, this.additionalData);

  Address._copy(Address _other) : this._(_other.city, _other.countryCode, _other.country, _other.district, _other.subdistrict, _other.houseNumOrName, _other.postalCode, _other.stateName, _other.state, _other.countyName, _other.county, _other.streetName, _other.street, _other.block, _other.subBlock, _other.addressText, _other.additionalData);


  @Deprecated("Will be removed in v4.9.0.")

  Address(String city, String countryCode, String country, String district, String subdistrict, String houseNumOrName, String postalCode, String stateName, String countyName, String streetName, String block, String subBlock, String addressText, Map<String, String> additionalData) : this._copy(_$init(city, countryCode, country, district, subdistrict, houseNumOrName, postalCode, stateName, countyName, streetName, block, subBlock, addressText, additionalData));


  Address.withValues(String city, String countryCode, String country, String district, String subdistrict, String houseNumOrName, String postalCode, String state, String county, String street, String block, String subBlock, String addressText) : this._copy(_withValues(city, countryCode, country, district, subdistrict, houseNumOrName, postalCode, state, county, street, block, subBlock, addressText));


  @Deprecated("Will be removed in v4.9.0.")

  static Address _$init(String city, String countryCode, String country, String district, String subdistrict, String houseNumOrName, String postalCode, String stateName, String countyName, String streetName, String block, String subBlock, String addressText, Map<String, String> additionalData) {
    final _$init_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Int32, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>), Pointer<Void> Function(int, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)>('here_sdk_sdk_search_Address_make__String_String_String_String_String_String_String_String_String_String_String_String_String_MapOf_1String_1to_1String'));
    final _city_handle = String_toFfi(city);
    final _countryCode_handle = String_toFfi(countryCode);
    final _country_handle = String_toFfi(country);
    final _district_handle = String_toFfi(district);
    final _subdistrict_handle = String_toFfi(subdistrict);
    final _houseNumOrName_handle = String_toFfi(houseNumOrName);
    final _postalCode_handle = String_toFfi(postalCode);
    final _stateName_handle = String_toFfi(stateName);
    final _countyName_handle = String_toFfi(countyName);
    final _streetName_handle = String_toFfi(streetName);
    final _block_handle = String_toFfi(block);
    final _subBlock_handle = String_toFfi(subBlock);
    final _addressText_handle = String_toFfi(addressText);
    final _additionalData_handle = heresdk_search_common_bindings_MapOf_String_to_String_toFfi(additionalData);
    final __result_handle = _$init_ffi(__lib.LibraryContext.isolateId, _city_handle, _countryCode_handle, _country_handle, _district_handle, _subdistrict_handle, _houseNumOrName_handle, _postalCode_handle, _stateName_handle, _countyName_handle, _streetName_handle, _block_handle, _subBlock_handle, _addressText_handle, _additionalData_handle);
    String_releaseFfiHandle(_city_handle);
    String_releaseFfiHandle(_countryCode_handle);
    String_releaseFfiHandle(_country_handle);
    String_releaseFfiHandle(_district_handle);
    String_releaseFfiHandle(_subdistrict_handle);
    String_releaseFfiHandle(_houseNumOrName_handle);
    String_releaseFfiHandle(_postalCode_handle);
    String_releaseFfiHandle(_stateName_handle);
    String_releaseFfiHandle(_countyName_handle);
    String_releaseFfiHandle(_streetName_handle);
    String_releaseFfiHandle(_block_handle);
    String_releaseFfiHandle(_subBlock_handle);
    String_releaseFfiHandle(_addressText_handle);
    heresdk_search_common_bindings_MapOf_String_to_String_releaseFfiHandle(_additionalData_handle);
    try {
      return sdk_search_Address_fromFfi(__result_handle);
    } finally {
      sdk_search_Address_releaseFfiHandle(__result_handle);
    }
  }


  static Address _withValues(String city, String countryCode, String country, String district, String subdistrict, String houseNumOrName, String postalCode, String state, String county, String street, String block, String subBlock, String addressText) {
    final _withValues_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Int32, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>), Pointer<Void> Function(int, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)>('here_sdk_sdk_search_Address_make__String_String_String_String_String_String_String_String_String_String_String_String_String'));
    final _city_handle = String_toFfi(city);
    final _countryCode_handle = String_toFfi(countryCode);
    final _country_handle = String_toFfi(country);
    final _district_handle = String_toFfi(district);
    final _subdistrict_handle = String_toFfi(subdistrict);
    final _houseNumOrName_handle = String_toFfi(houseNumOrName);
    final _postalCode_handle = String_toFfi(postalCode);
    final _state_handle = String_toFfi(state);
    final _county_handle = String_toFfi(county);
    final _street_handle = String_toFfi(street);
    final _block_handle = String_toFfi(block);
    final _subBlock_handle = String_toFfi(subBlock);
    final _addressText_handle = String_toFfi(addressText);
    final __result_handle = _withValues_ffi(__lib.LibraryContext.isolateId, _city_handle, _countryCode_handle, _country_handle, _district_handle, _subdistrict_handle, _houseNumOrName_handle, _postalCode_handle, _state_handle, _county_handle, _street_handle, _block_handle, _subBlock_handle, _addressText_handle);
    String_releaseFfiHandle(_city_handle);
    String_releaseFfiHandle(_countryCode_handle);
    String_releaseFfiHandle(_country_handle);
    String_releaseFfiHandle(_district_handle);
    String_releaseFfiHandle(_subdistrict_handle);
    String_releaseFfiHandle(_houseNumOrName_handle);
    String_releaseFfiHandle(_postalCode_handle);
    String_releaseFfiHandle(_state_handle);
    String_releaseFfiHandle(_county_handle);
    String_releaseFfiHandle(_street_handle);
    String_releaseFfiHandle(_block_handle);
    String_releaseFfiHandle(_subBlock_handle);
    String_releaseFfiHandle(_addressText_handle);
    try {
      return sdk_search_Address_fromFfi(__result_handle);
    } finally {
      sdk_search_Address_releaseFfiHandle(__result_handle);
    }
  }

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (other is! Address) return false;
    Address _other = other;
    return city == _other.city &&
        countryCode == _other.countryCode &&
        country == _other.country &&
        district == _other.district &&
        subdistrict == _other.subdistrict &&
        houseNumOrName == _other.houseNumOrName &&
        postalCode == _other.postalCode &&
        stateName == _other.stateName &&
        state == _other.state &&
        countyName == _other.countyName &&
        county == _other.county &&
        streetName == _other.streetName &&
        street == _other.street &&
        block == _other.block &&
        subBlock == _other.subBlock &&
        addressText == _other.addressText &&
        DeepCollectionEquality().equals(additionalData, _other.additionalData);
  }

  @override
  int get hashCode {
    int result = 7;
    result = 31 * result + city.hashCode;
    result = 31 * result + countryCode.hashCode;
    result = 31 * result + country.hashCode;
    result = 31 * result + district.hashCode;
    result = 31 * result + subdistrict.hashCode;
    result = 31 * result + houseNumOrName.hashCode;
    result = 31 * result + postalCode.hashCode;
    result = 31 * result + stateName.hashCode;
    result = 31 * result + state.hashCode;
    result = 31 * result + countyName.hashCode;
    result = 31 * result + county.hashCode;
    result = 31 * result + streetName.hashCode;
    result = 31 * result + street.hashCode;
    result = 31 * result + block.hashCode;
    result = 31 * result + subBlock.hashCode;
    result = 31 * result + addressText.hashCode;
    result = 31 * result + DeepCollectionEquality().hash(additionalData);
    return result;
  }
}


// Address "private" section, not exported.

final _sdk_search_Address_create_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('here_sdk_sdk_search_Address_create_handle'));
final _sdk_search_Address_release_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_release_handle'));
final _sdk_search_Address_get_field_city = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_city'));
final _sdk_search_Address_get_field_countryCode = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_countryCode'));
final _sdk_search_Address_get_field_country = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_country'));
final _sdk_search_Address_get_field_district = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_district'));
final _sdk_search_Address_get_field_subdistrict = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_subdistrict'));
final _sdk_search_Address_get_field_houseNumOrName = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_houseNumOrName'));
final _sdk_search_Address_get_field_postalCode = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_postalCode'));
final _sdk_search_Address_get_field_stateName = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_stateName'));
final _sdk_search_Address_get_field_state = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_state'));
final _sdk_search_Address_get_field_countyName = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_countyName'));
final _sdk_search_Address_get_field_county = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_county'));
final _sdk_search_Address_get_field_streetName = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_streetName'));
final _sdk_search_Address_get_field_street = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_street'));
final _sdk_search_Address_get_field_block = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_block'));
final _sdk_search_Address_get_field_subBlock = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_subBlock'));
final _sdk_search_Address_get_field_addressText = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_addressText'));
final _sdk_search_Address_get_field_additionalData = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_field_additionalData'));

Pointer<Void> sdk_search_Address_toFfi(Address value) {
  final _city_handle = String_toFfi(value.city);
  final _countryCode_handle = String_toFfi(value.countryCode);
  final _country_handle = String_toFfi(value.country);
  final _district_handle = String_toFfi(value.district);
  final _subdistrict_handle = String_toFfi(value.subdistrict);
  final _houseNumOrName_handle = String_toFfi(value.houseNumOrName);
  final _postalCode_handle = String_toFfi(value.postalCode);
  final _stateName_handle = String_toFfi(value.stateName);
  final _state_handle = String_toFfi(value.state);
  final _countyName_handle = String_toFfi(value.countyName);
  final _county_handle = String_toFfi(value.county);
  final _streetName_handle = String_toFfi(value.streetName);
  final _street_handle = String_toFfi(value.street);
  final _block_handle = String_toFfi(value.block);
  final _subBlock_handle = String_toFfi(value.subBlock);
  final _addressText_handle = String_toFfi(value.addressText);
  final _additionalData_handle = heresdk_search_common_bindings_MapOf_String_to_String_toFfi(value.additionalData);
  final _result = _sdk_search_Address_create_handle(_city_handle, _countryCode_handle, _country_handle, _district_handle, _subdistrict_handle, _houseNumOrName_handle, _postalCode_handle, _stateName_handle, _state_handle, _countyName_handle, _county_handle, _streetName_handle, _street_handle, _block_handle, _subBlock_handle, _addressText_handle, _additionalData_handle);
  String_releaseFfiHandle(_city_handle);
  String_releaseFfiHandle(_countryCode_handle);
  String_releaseFfiHandle(_country_handle);
  String_releaseFfiHandle(_district_handle);
  String_releaseFfiHandle(_subdistrict_handle);
  String_releaseFfiHandle(_houseNumOrName_handle);
  String_releaseFfiHandle(_postalCode_handle);
  String_releaseFfiHandle(_stateName_handle);
  String_releaseFfiHandle(_state_handle);
  String_releaseFfiHandle(_countyName_handle);
  String_releaseFfiHandle(_county_handle);
  String_releaseFfiHandle(_streetName_handle);
  String_releaseFfiHandle(_street_handle);
  String_releaseFfiHandle(_block_handle);
  String_releaseFfiHandle(_subBlock_handle);
  String_releaseFfiHandle(_addressText_handle);
  heresdk_search_common_bindings_MapOf_String_to_String_releaseFfiHandle(_additionalData_handle);
  return _result;
}

Address sdk_search_Address_fromFfi(Pointer<Void> handle) {
  final _city_handle = _sdk_search_Address_get_field_city(handle);
  final _countryCode_handle = _sdk_search_Address_get_field_countryCode(handle);
  final _country_handle = _sdk_search_Address_get_field_country(handle);
  final _district_handle = _sdk_search_Address_get_field_district(handle);
  final _subdistrict_handle = _sdk_search_Address_get_field_subdistrict(handle);
  final _houseNumOrName_handle = _sdk_search_Address_get_field_houseNumOrName(handle);
  final _postalCode_handle = _sdk_search_Address_get_field_postalCode(handle);
  final _stateName_handle = _sdk_search_Address_get_field_stateName(handle);
  final _state_handle = _sdk_search_Address_get_field_state(handle);
  final _countyName_handle = _sdk_search_Address_get_field_countyName(handle);
  final _county_handle = _sdk_search_Address_get_field_county(handle);
  final _streetName_handle = _sdk_search_Address_get_field_streetName(handle);
  final _street_handle = _sdk_search_Address_get_field_street(handle);
  final _block_handle = _sdk_search_Address_get_field_block(handle);
  final _subBlock_handle = _sdk_search_Address_get_field_subBlock(handle);
  final _addressText_handle = _sdk_search_Address_get_field_addressText(handle);
  final _additionalData_handle = _sdk_search_Address_get_field_additionalData(handle);
  try {
    return Address._(
      String_fromFfi(_city_handle), 
      String_fromFfi(_countryCode_handle), 
      String_fromFfi(_country_handle), 
      String_fromFfi(_district_handle), 
      String_fromFfi(_subdistrict_handle), 
      String_fromFfi(_houseNumOrName_handle), 
      String_fromFfi(_postalCode_handle), 
      String_fromFfi(_stateName_handle), 
      String_fromFfi(_state_handle), 
      String_fromFfi(_countyName_handle), 
      String_fromFfi(_county_handle), 
      String_fromFfi(_streetName_handle), 
      String_fromFfi(_street_handle), 
      String_fromFfi(_block_handle), 
      String_fromFfi(_subBlock_handle), 
      String_fromFfi(_addressText_handle), 
      heresdk_search_common_bindings_MapOf_String_to_String_fromFfi(_additionalData_handle)
    );
  } finally {
    String_releaseFfiHandle(_city_handle);
    String_releaseFfiHandle(_countryCode_handle);
    String_releaseFfiHandle(_country_handle);
    String_releaseFfiHandle(_district_handle);
    String_releaseFfiHandle(_subdistrict_handle);
    String_releaseFfiHandle(_houseNumOrName_handle);
    String_releaseFfiHandle(_postalCode_handle);
    String_releaseFfiHandle(_stateName_handle);
    String_releaseFfiHandle(_state_handle);
    String_releaseFfiHandle(_countyName_handle);
    String_releaseFfiHandle(_county_handle);
    String_releaseFfiHandle(_streetName_handle);
    String_releaseFfiHandle(_street_handle);
    String_releaseFfiHandle(_block_handle);
    String_releaseFfiHandle(_subBlock_handle);
    String_releaseFfiHandle(_addressText_handle);
    heresdk_search_common_bindings_MapOf_String_to_String_releaseFfiHandle(_additionalData_handle);
  }
}

void sdk_search_Address_releaseFfiHandle(Pointer<Void> handle) => _sdk_search_Address_release_handle(handle);

// Nullable Address

final _sdk_search_Address_create_handle_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_create_handle_nullable'));
final _sdk_search_Address_release_handle_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_release_handle_nullable'));
final _sdk_search_Address_get_value_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_search_Address_get_value_nullable'));

Pointer<Void> sdk_search_Address_toFfi_nullable(Address value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = sdk_search_Address_toFfi(value);
  final result = _sdk_search_Address_create_handle_nullable(_handle);
  sdk_search_Address_releaseFfiHandle(_handle);
  return result;
}

Address sdk_search_Address_fromFfi_nullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _sdk_search_Address_get_value_nullable(handle);
  final result = sdk_search_Address_fromFfi(_handle);
  sdk_search_Address_releaseFfiHandle(_handle);
  return result;
}

void sdk_search_Address_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _sdk_search_Address_release_handle_nullable(handle);

// End of Address "private" section.

