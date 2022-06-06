import 'dart:convert';
class Estadoinfo {
    Estadoinfo({
      required  this.state,
      required  this.notes,
      required  this.covid19Site,
      required  this.covid19SiteSecondary,
      required  this.covid19SiteTertiary,
      required  this.covid19SiteQuaternary,
      required  this.covid19SiteQuinary,
      required  this.twitter,
      required  this.covid19SiteOld,
      required  this.covidTrackingProjectPreferredTotalTestUnits,
      required  this.covidTrackingProjectPreferredTotalTestField,
      required  this.totalTestResultsField,
      required  this.pui,
      this.pum,
      required  this.name,
      required  this.fips,
    });

    String state;
    String notes;
    String covid19Site;
    String covid19SiteSecondary;
    String covid19SiteTertiary;
    dynamic covid19SiteQuaternary;
    dynamic covid19SiteQuinary;
    String twitter;
    String covid19SiteOld;
    String covidTrackingProjectPreferredTotalTestUnits;
    String covidTrackingProjectPreferredTotalTestField;
    String totalTestResultsField;
    String pui;
    bool? pum;
    String name;
    String fips;

    factory Estadoinfo.fromJson(String str) => Estadoinfo.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Estadoinfo.fromMap(Map<String, dynamic> json) => Estadoinfo(
        state: json["state"].toString(),
        notes: json["notes"].toString(),
        covid19Site: json["covid19Site"].toString(),
        covid19SiteSecondary: json["covid19SiteSecondary"].toString(),
        covid19SiteTertiary: json["covid19SiteTertiary"].toString(),
        covid19SiteQuaternary: json["covid19SiteQuaternary"],
        covid19SiteQuinary: json["covid19SiteQuinary"],
        twitter: json["twitter"].toString(),
        covid19SiteOld: json["covid19SiteOld"].toString(),
        covidTrackingProjectPreferredTotalTestUnits: json["covidTrackingProjectPreferredTotalTestUnits"].toString(),
        covidTrackingProjectPreferredTotalTestField: json["covidTrackingProjectPreferredTotalTestField"].toString(),
        totalTestResultsField: json["totalTestResultsField"].toString(),
        pui: json["pui"].toString(),
        pum: json["pum"],
        name: json["name"].toString(),
        fips: json["fips"].toString(),
    );

    Map<String, dynamic> toMap() => {
        "state": state,
        "notes": notes,
        "covid19Site": covid19Site,
        "covid19SiteSecondary": covid19SiteSecondary,
        "covid19SiteTertiary": covid19SiteTertiary,
        "covid19SiteQuaternary": covid19SiteQuaternary,
        "covid19SiteQuinary": covid19SiteQuinary,
        "twitter": twitter,
        "covid19SiteOld": covid19SiteOld,
        "covidTrackingProjectPreferredTotalTestUnits": covidTrackingProjectPreferredTotalTestUnits,
        "covidTrackingProjectPreferredTotalTestField": covidTrackingProjectPreferredTotalTestField,
        "totalTestResultsField": totalTestResultsField,
        "pui": pui,
        "pum": pum,
        "name": name,
        "fips": fips,
    };
}
