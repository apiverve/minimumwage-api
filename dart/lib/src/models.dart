/// Response models for the Minimum Wage API.

/// API Response wrapper.
class MinimumwageResponse {
  final String status;
  final dynamic error;
  final MinimumwageData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MinimumwageResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MinimumwageResponse.fromJson(Map<String, dynamic> json) => MinimumwageResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MinimumwageData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Minimum Wage API.

class MinimumwageData {
  String? state;
  String? stateName;
  num? year;
  num? minimumWage;
  num? stateRate;
  num? federalRate;
  dynamic tippedMinimum;
  bool? usesFederalRate;
  bool? aboveFederal;
  num? federalDifference;
  num? annualIncome40hrs;
  dynamic note;
  MinimumwageDataFormatted? formatted;

  MinimumwageData({
    this.state,
    this.stateName,
    this.year,
    this.minimumWage,
    this.stateRate,
    this.federalRate,
    this.tippedMinimum,
    this.usesFederalRate,
    this.aboveFederal,
    this.federalDifference,
    this.annualIncome40hrs,
    this.note,
    this.formatted,
  });

  factory MinimumwageData.fromJson(Map<String, dynamic> json) => MinimumwageData(
      state: json['state'],
      stateName: json['stateName'],
      year: json['year'],
      minimumWage: json['minimumWage'],
      stateRate: json['stateRate'],
      federalRate: json['federalRate'],
      tippedMinimum: json['tippedMinimum'],
      usesFederalRate: json['usesFederalRate'],
      aboveFederal: json['aboveFederal'],
      federalDifference: json['federalDifference'],
      annualIncome40hrs: json['annualIncome40hrs'],
      note: json['note'],
      formatted: json['formatted'] != null ? MinimumwageDataFormatted.fromJson(json['formatted']) : null,
    );
}

class MinimumwageDataFormatted {
  String? minimumWage;
  String? annualIncome;

  MinimumwageDataFormatted({
    this.minimumWage,
    this.annualIncome,
  });

  factory MinimumwageDataFormatted.fromJson(Map<String, dynamic> json) => MinimumwageDataFormatted(
      minimumWage: json['minimumWage'],
      annualIncome: json['annualIncome'],
    );
}

class MinimumwageRequest {
  String state;
  double? year;

  MinimumwageRequest({
    required this.state,
    this.year,
  });

  Map<String, dynamic> toJson() => {
      'state': state,
      if (year != null) 'year': year,
    };
}
