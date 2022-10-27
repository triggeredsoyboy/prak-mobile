class DeathModel {
  String? provinceState;
  String? countryRegion;
  int? lastUpdate;
  double? lat;
  double? long;
  int? confirmed;
  int? deaths;
  Null? recovered;
  Null? active;
  Null? admin2;
  Null? fips;
  String? combinedKey;
  double? incidentRate;
  Null? peopleTested;
  Null? peopleHospitalized;
  int? uid;
  String? iso3;
  int? cases28Days;
  int? deaths28Days;
  String? iso2;

  DeathModel(
      {this.provinceState,
      this.countryRegion,
      this.lastUpdate,
      this.lat,
      this.long,
      this.confirmed,
      this.deaths,
      this.recovered,
      this.active,
      this.admin2,
      this.fips,
      this.combinedKey,
      this.incidentRate,
      this.peopleTested,
      this.peopleHospitalized,
      this.uid,
      this.iso3,
      this.cases28Days,
      this.deaths28Days,
      this.iso2});

  DeathModel.fromJson(Map<String, dynamic> json) {
    provinceState = json['provinceState'];
    countryRegion = json['countryRegion'];
    lastUpdate = json['lastUpdate'];
    lat = json['lat'];
    long = json['long'];
    confirmed = json['confirmed'];
    deaths = json['deaths'];
    recovered = json['recovered'];
    active = json['active'];
    admin2 = json['admin2'];
    fips = json['fips'];
    combinedKey = json['combinedKey'];
    incidentRate = json['incidentRate'];
    peopleTested = json['peopleTested'];
    peopleHospitalized = json['peopleHospitalized'];
    uid = json['uid'];
    iso3 = json['iso3'];
    cases28Days = json['cases28Days'];
    deaths28Days = json['deaths28Days'];
    iso2 = json['iso2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['provinceState'] = this.provinceState;
    data['countryRegion'] = this.countryRegion;
    data['lastUpdate'] = this.lastUpdate;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['confirmed'] = this.confirmed;
    data['deaths'] = this.deaths;
    data['recovered'] = this.recovered;
    data['active'] = this.active;
    data['admin2'] = this.admin2;
    data['fips'] = this.fips;
    data['combinedKey'] = this.combinedKey;
    data['incidentRate'] = this.incidentRate;
    data['peopleTested'] = this.peopleTested;
    data['peopleHospitalized'] = this.peopleHospitalized;
    data['uid'] = this.uid;
    data['iso3'] = this.iso3;
    data['cases28Days'] = this.cases28Days;
    data['deaths28Days'] = this.deaths28Days;
    data['iso2'] = this.iso2;
    return data;
  }
}
