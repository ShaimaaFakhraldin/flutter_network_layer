import 'dart:convert';

import '../../app_module/core/src/entity/entity.dart';
import '../../data/dto/country.dart';

class CountryEntityParser extends EntityParser<Country> {
  @override
  Country parseObject(dynamic json) {
    return Country.fromJson({});
  }
}

List<CountryEntity> countryFromJson(String str) => List<CountryEntity>.from(
    json.decode(str).map((x) => CountryEntity.fromJson(x)));

String countryToJson(List<CountryEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CountryEntity extends Entity {
  CountryEntity({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    required this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.currencies,
    required this.idd,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    required this.borders,
    required this.area,
    required this.demonyms,
    required this.flag,
    required this.maps,
    required this.population,
    required this.gini,
    required this.fifa,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo,
    required this.postalCode,
  });

  final Name? name;
  final List<String> tld;
  final String? cca2;
  final String? ccn3;
  final String? cca3;
  final String? cioc;
  final bool? independent;
  final String? status;
  final bool? unMember;
  final Currencies? currencies;
  final Idd? idd;
  final List<String> capital;
  final List<String> altSpellings;
  final String? region;
  final String? subregion;
  final Map<String, String> languages;
  final Map<String, Translation> translations;
  final List<double> latlng;
  final bool? landlocked;
  final List<String> borders;
  final double? area;
  final Demonyms? demonyms;
  final String? flag;
  final Maps? maps;
  final int? population;
  final Map<String, double> gini;
  final String? fifa;
  final Car? car;
  final List<String> timezones;
  final List<String> continents;
  final Flags? flags;
  final CoatOfArms? coatOfArms;
  final String? startOfWeek;
  final CapitalInfo? capitalInfo;
  final PostalCode? postalCode;

  CountryEntity copyWith({
    Name? name,
    List<String>? tld,
    String? cca2,
    String? ccn3,
    String? cca3,
    String? cioc,
    bool? independent,
    String? status,
    bool? unMember,
    Currencies? currencies,
    Idd? idd,
    List<String>? capital,
    List<String>? altSpellings,
    String? region,
    String? subregion,
    Map<String, String>? languages,
    Map<String, Translation>? translations,
    List<double>? latlng,
    bool? landlocked,
    List<String>? borders,
    double? area,
    Demonyms? demonyms,
    String? flag,
    Maps? maps,
    int? population,
    Map<String, double>? gini,
    String? fifa,
    Car? car,
    List<String>? timezones,
    List<String>? continents,
    Flags? flags,
    CoatOfArms? coatOfArms,
    String? startOfWeek,
    CapitalInfo? capitalInfo,
    PostalCode? postalCode,
  }) {
    return CountryEntity(
      name: name ?? this.name,
      tld: tld ?? this.tld,
      cca2: cca2 ?? this.cca2,
      ccn3: ccn3 ?? this.ccn3,
      cca3: cca3 ?? this.cca3,
      cioc: cioc ?? this.cioc,
      independent: independent ?? this.independent,
      status: status ?? this.status,
      unMember: unMember ?? this.unMember,
      currencies: currencies ?? this.currencies,
      idd: idd ?? this.idd,
      capital: capital ?? this.capital,
      altSpellings: altSpellings ?? this.altSpellings,
      region: region ?? this.region,
      subregion: subregion ?? this.subregion,
      languages: languages ?? this.languages,
      translations: translations ?? this.translations,
      latlng: latlng ?? this.latlng,
      landlocked: landlocked ?? this.landlocked,
      borders: borders ?? this.borders,
      area: area ?? this.area,
      demonyms: demonyms ?? this.demonyms,
      flag: flag ?? this.flag,
      maps: maps ?? this.maps,
      population: population ?? this.population,
      gini: gini ?? this.gini,
      fifa: fifa ?? this.fifa,
      car: car ?? this.car,
      timezones: timezones ?? this.timezones,
      continents: continents ?? this.continents,
      flags: flags ?? this.flags,
      coatOfArms: coatOfArms ?? this.coatOfArms,
      startOfWeek: startOfWeek ?? this.startOfWeek,
      capitalInfo: capitalInfo ?? this.capitalInfo,
      postalCode: postalCode ?? this.postalCode,
    );
  }

  factory CountryEntity.fromJson(Map<String, dynamic> json) {
    return CountryEntity(
      name: json["name"] == null ? null : Name.fromJson(json["name"]),
      tld: json["tld"] == null
          ? []
          : List<String>.from(json["tld"]!.map((x) => x)),
      cca2: json["cca2"],
      ccn3: json["ccn3"],
      cca3: json["cca3"],
      cioc: json["cioc"],
      independent: json["independent"],
      status: json["status"],
      unMember: json["unMember"],
      currencies: json["currencies"] == null
          ? null
          : Currencies.fromJson(json["currencies"]),
      idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
      capital: json["capital"] == null
          ? []
          : List<String>.from(json["capital"]!.map((x) => x)),
      altSpellings: json["altSpellings"] == null
          ? []
          : List<String>.from(json["altSpellings"]!.map((x) => x)),
      region: json["region"],
      subregion: json["subregion"],
      languages: json["languages"] != null
          ? Map.from(json["languages"])
              .map((k, v) => MapEntry<String, String>(k, v))
          : {},
      translations: json["translations"] != null
          ? Map.from(json["translations"]).map((k, v) =>
              MapEntry<String, Translation>(k, Translation.fromJson(v)))
          : {},
      latlng: json["latlng"] == null
          ? []
          : List<double>.from(json["latlng"]!.map((x) => x)),
      landlocked: json["landlocked"],
      borders: json["borders"] == null
          ? []
          : List<String>.from(json["borders"]!.map((x) => x)),
      area: json["area"],
      demonyms:
          json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
      flag: json["flag"],
      maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
      population: json["population"],
      gini: json["gini"] != null
          ? Map.from(json["gini"]).map((k, v) => MapEntry<String, double>(k, v))
          : {},
      fifa: json["fifa"],
      car: json["car"] == null ? null : Car.fromJson(json["car"]),
      timezones: json["timezones"] == null
          ? []
          : List<String>.from(json["timezones"]!.map((x) => x)),
      continents: json["continents"] == null
          ? []
          : List<String>.from(json["continents"]!.map((x) => x)),
      flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
      coatOfArms: json["coatOfArms"] == null
          ? null
          : CoatOfArms.fromJson(json["coatOfArms"]),
      startOfWeek: json["startOfWeek"],
      capitalInfo: json["capitalInfo"] == null
          ? null
          : CapitalInfo.fromJson(json["capitalInfo"]),
      postalCode: json["postalCode"] == null
          ? null
          : PostalCode.fromJson(json["postalCode"]),
    );
  }
  @override
  Map<String, dynamic> toJson() => {
        "name": name?.toJson(),
        "tld": tld.map((x) => x).toList(),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "cioc": cioc,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        "currencies": currencies?.toJson(),
        "idd": idd?.toJson(),
        "capital": capital.map((x) => x).toList(),
        "altSpellings": altSpellings.map((x) => x).toList(),
        "region": region,
        "subregion": subregion,
        "languages":
            Map.from(languages).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "translations": Map.from(translations)
            .map((k, v) => MapEntry<String, dynamic>(k, v?.toJson())),
        "latlng": latlng.map((x) => x).toList(),
        "landlocked": landlocked,
        "borders": borders.map((x) => x).toList(),
        "area": area,
        "demonyms": demonyms?.toJson(),
        "flag": flag,
        "maps": maps?.toJson(),
        "population": population,
        "gini": Map.from(gini).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "fifa": fifa,
        "car": car?.toJson(),
        "timezones": timezones.map((x) => x).toList(),
        "continents": continents.map((x) => x).toList(),
        "flags": flags?.toJson(),
        "coatOfArms": coatOfArms?.toJson(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo?.toJson(),
        "postalCode": postalCode?.toJson(),
      };

  @override
  String toString() {
    return "$name, $tld, $cca2, $ccn3, $cca3, $cioc, $independent, $status, $unMember, $currencies, $idd, $capital, $altSpellings, $region, $subregion, $languages, $translations, $latlng, $landlocked, $borders, $area, $demonyms, $flag, $maps, $population, $gini, $fifa, $car, $timezones, $continents, $flags, $coatOfArms, $startOfWeek, $capitalInfo, $postalCode, ";
  }
}

class CapitalInfo {
  CapitalInfo({
    required this.latlng,
  });

  final List<double> latlng;

  CapitalInfo copyWith({
    List<double>? latlng,
  }) {
    return CapitalInfo(
      latlng: latlng ?? this.latlng,
    );
  }

  factory CapitalInfo.fromJson(Map<String, dynamic> json) {
    return CapitalInfo(
      latlng: json["latlng"] == null
          ? []
          : List<double>.from(json["latlng"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "latlng": latlng.map((x) => x).toList(),
      };

  @override
  String toString() {
    return "$latlng, ";
  }
}

class Car {
  Car({
    required this.signs,
    required this.side,
  });

  final List<String> signs;
  final String? side;

  Car copyWith({
    List<String>? signs,
    String? side,
  }) {
    return Car(
      signs: signs ?? this.signs,
      side: side ?? this.side,
    );
  }

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      signs: json["signs"] == null
          ? []
          : List<String>.from(json["signs"]!.map((x) => x)),
      side: json["side"],
    );
  }

  Map<String, dynamic> toJson() => {
        "signs": signs.map((x) => x).toList(),
        "side": side,
      };

  @override
  String toString() {
    return "$signs, $side, ";
  }
}

class CoatOfArms {
  CoatOfArms({
    required this.png,
    required this.svg,
  });

  final String? png;
  final String? svg;

  CoatOfArms copyWith({
    String? png,
    String? svg,
  }) {
    return CoatOfArms(
      png: png ?? this.png,
      svg: svg ?? this.svg,
    );
  }

  factory CoatOfArms.fromJson(Map<String, dynamic> json) {
    return CoatOfArms(
      png: json["png"],
      svg: json["svg"],
    );
  }

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
      };

  @override
  String toString() {
    return "$png, $svg, ";
  }
}

class Currencies {
  Currencies({
    required this.mdl,
    required this.usd,
    required this.eur,
    required this.aud,
    required this.mzn,
    required this.brl,
    required this.cve,
    required this.xaf,
    required this.all,
    required this.nzd,
    required this.ngn,
    required this.gmd,
    required this.sos,
    required this.yer,
    required this.myr,
    required this.xcd,
    required this.gbp,
    required this.mga,
    required this.dzd,
    required this.mad,
    required this.mru,
    required this.pyg,
    required this.lkr,
    required this.zar,
    required this.kwd,
    required this.sll,
    required this.rwf,
    required this.syp,
    required this.hnl,
    required this.jod,
    required this.tvd,
    required this.npr,
    required this.lrd,
    required this.ggp,
    required this.djf,
    required this.fjd,
    required this.nok,
    required this.fkp,
    required this.kzt,
    required this.tmt,
    required this.bgn,
    required this.xpf,
    required this.bbd,
    required this.stn,
    required this.bnd,
    required this.sgd,
    required this.btn,
    required this.inr,
    required this.ars,
    required this.azn,
    required this.mxn,
    required this.gtq,
    required this.kes,
    required this.czk,
    required this.gip,
    required this.awg,
    required this.aed,
    required this.ssp,
    required this.xof,
    required this.shp,
    required this.bwp,
    required this.uzs,
    required this.tnd,
    required this.hkd,
    required this.mkd,
    required this.srd,
    required this.sbd,
    required this.uah,
    required this.bam,
    required this.irr,
    required this.cuc,
    required this.cup,
    required this.ern,
    required this.currenciesTry,
    required this.php,
    required this.vuv,
    required this.bob,
    required this.ron,
    required this.khr,
    required this.zwl,
    required this.jep,
    required this.kgs,
    required this.gyd,
    required this.amd,
    required this.lbp,
    required this.dkk,
    required this.pgk,
    required this.zmw,
    required this.ttd,
    required this.pen,
    required this.sek,
    required this.sdg,
    required this.omr,
    required this.twd,
    required this.mnt,
    required this.tzs,
    required this.cad,
    required this.crc,
    required this.cny,
    required this.cop,
    required this.mmk,
    required this.rub,
    required this.kpw,
    required this.kyd,
    required this.byn,
    required this.szl,
    required this.pln,
    required this.chf,
    required this.ves,
    required this.pab,
    required this.wst,
    required this.fok,
    required this.thb,
    required this.bsd,
    required this.top,
    required this.bif,
    required this.bhd,
    required this.imp,
    required this.htg,
    required this.afn,
    required this.ils,
    required this.lyd,
    required this.uyu,
    required this.nio,
    required this.ckd,
    required this.lak,
    required this.kid,
    required this.ang,
    required this.jmd,
    required this.egp,
    required this.clp,
    required this.lsl,
    required this.ghs,
    required this.scr,
    required this.aoa,
    required this.bmd,
    required this.pkr,
    required this.sar,
    required this.krw,
    required this.etb,
    required this.bdt,
    required this.kmf,
    required this.bzd,
    required this.ugx,
    required this.huf,
    required this.isk,
    required this.tjs,
    required this.nad,
    required this.rsd,
    required this.mur,
    required this.mop,
    required this.mvr,
    required this.idr,
    required this.cdf,
    required this.vnd,
    required this.gnf,
    required this.gel,
    required this.mwk,
    required this.iqd,
    required this.jpy,
    required this.dop,
    required this.qar,
  });

  final Aed? mdl;
  final Aed? usd;
  final Aed? eur;
  final Aed? aud;
  final Aed? mzn;
  final Aed? brl;
  final Aed? cve;
  final Aed? xaf;
  final Aed? all;
  final Aed? nzd;
  final Aed? ngn;
  final Aed? gmd;
  final Aed? sos;
  final Aed? yer;
  final Aed? myr;
  final Aed? xcd;
  final Aed? gbp;
  final Aed? mga;
  final Aed? dzd;
  final Aed? mad;
  final Aed? mru;
  final Aed? pyg;
  final Aed? lkr;
  final Aed? zar;
  final Aed? kwd;
  final Aed? sll;
  final Aed? rwf;
  final Aed? syp;
  final Aed? hnl;
  final Aed? jod;
  final Aed? tvd;
  final Aed? npr;
  final Aed? lrd;
  final Aed? ggp;
  final Aed? djf;
  final Aed? fjd;
  final Aed? nok;
  final Aed? fkp;
  final Aed? kzt;
  final Aed? tmt;
  final Aed? bgn;
  final Aed? xpf;
  final Aed? bbd;
  final Aed? stn;
  final Aed? bnd;
  final Aed? sgd;
  final Aed? btn;
  final Aed? inr;
  final Aed? ars;
  final Aed? azn;
  final Aed? mxn;
  final Aed? gtq;
  final Aed? kes;
  final Aed? czk;
  final Aed? gip;
  final Aed? awg;
  final Aed? aed;
  final Aed? ssp;
  final Aed? xof;
  final Aed? shp;
  final Aed? bwp;
  final Aed? uzs;
  final Aed? tnd;
  final Aed? hkd;
  final Aed? mkd;
  final Aed? srd;
  final Aed? sbd;
  final Aed? uah;
  final Bam? bam;
  final Aed? irr;
  final Aed? cuc;
  final Aed? cup;
  final Aed? ern;
  final Aed? currenciesTry;
  final Aed? php;
  final Aed? vuv;
  final Aed? bob;
  final Aed? ron;
  final Aed? khr;
  final Aed? zwl;
  final Aed? jep;
  final Aed? kgs;
  final Aed? gyd;
  final Aed? amd;
  final Aed? lbp;
  final Aed? dkk;
  final Aed? pgk;
  final Aed? zmw;
  final Aed? ttd;
  final Aed? pen;
  final Aed? sek;
  final Bam? sdg;
  final Aed? omr;
  final Aed? twd;
  final Aed? mnt;
  final Aed? tzs;
  final Aed? cad;
  final Aed? crc;
  final Aed? cny;
  final Aed? cop;
  final Aed? mmk;
  final Aed? rub;
  final Aed? kpw;
  final Aed? kyd;
  final Aed? byn;
  final Aed? szl;
  final Aed? pln;
  final Aed? chf;
  final Aed? ves;
  final Aed? pab;
  final Aed? wst;
  final Aed? fok;
  final Aed? thb;
  final Aed? bsd;
  final Aed? top;
  final Aed? bif;
  final Aed? bhd;
  final Aed? imp;
  final Aed? htg;
  final Aed? afn;
  final Aed? ils;
  final Aed? lyd;
  final Aed? uyu;
  final Aed? nio;
  final Aed? ckd;
  final Aed? lak;
  final Aed? kid;
  final Aed? ang;
  final Aed? jmd;
  final Aed? egp;
  final Aed? clp;
  final Aed? lsl;
  final Aed? ghs;
  final Aed? scr;
  final Aed? aoa;
  final Aed? bmd;
  final Aed? pkr;
  final Aed? sar;
  final Aed? krw;
  final Aed? etb;
  final Aed? bdt;
  final Aed? kmf;
  final Aed? bzd;
  final Aed? ugx;
  final Aed? huf;
  final Aed? isk;
  final Aed? tjs;
  final Aed? nad;
  final Aed? rsd;
  final Aed? mur;
  final Aed? mop;
  final Aed? mvr;
  final Aed? idr;
  final Aed? cdf;
  final Aed? vnd;
  final Aed? gnf;
  final Aed? gel;
  final Aed? mwk;
  final Aed? iqd;
  final Aed? jpy;
  final Aed? dop;
  final Aed? qar;

  Currencies copyWith({
    Aed? mdl,
    Aed? usd,
    Aed? eur,
    Aed? aud,
    Aed? mzn,
    Aed? brl,
    Aed? cve,
    Aed? xaf,
    Aed? all,
    Aed? nzd,
    Aed? ngn,
    Aed? gmd,
    Aed? sos,
    Aed? yer,
    Aed? myr,
    Aed? xcd,
    Aed? gbp,
    Aed? mga,
    Aed? dzd,
    Aed? mad,
    Aed? mru,
    Aed? pyg,
    Aed? lkr,
    Aed? zar,
    Aed? kwd,
    Aed? sll,
    Aed? rwf,
    Aed? syp,
    Aed? hnl,
    Aed? jod,
    Aed? tvd,
    Aed? npr,
    Aed? lrd,
    Aed? ggp,
    Aed? djf,
    Aed? fjd,
    Aed? nok,
    Aed? fkp,
    Aed? kzt,
    Aed? tmt,
    Aed? bgn,
    Aed? xpf,
    Aed? bbd,
    Aed? stn,
    Aed? bnd,
    Aed? sgd,
    Aed? btn,
    Aed? inr,
    Aed? ars,
    Aed? azn,
    Aed? mxn,
    Aed? gtq,
    Aed? kes,
    Aed? czk,
    Aed? gip,
    Aed? awg,
    Aed? aed,
    Aed? ssp,
    Aed? xof,
    Aed? shp,
    Aed? bwp,
    Aed? uzs,
    Aed? tnd,
    Aed? hkd,
    Aed? mkd,
    Aed? srd,
    Aed? sbd,
    Aed? uah,
    Bam? bam,
    Aed? irr,
    Aed? cuc,
    Aed? cup,
    Aed? ern,
    Aed? currenciesTry,
    Aed? php,
    Aed? vuv,
    Aed? bob,
    Aed? ron,
    Aed? khr,
    Aed? zwl,
    Aed? jep,
    Aed? kgs,
    Aed? gyd,
    Aed? amd,
    Aed? lbp,
    Aed? dkk,
    Aed? pgk,
    Aed? zmw,
    Aed? ttd,
    Aed? pen,
    Aed? sek,
    Bam? sdg,
    Aed? omr,
    Aed? twd,
    Aed? mnt,
    Aed? tzs,
    Aed? cad,
    Aed? crc,
    Aed? cny,
    Aed? cop,
    Aed? mmk,
    Aed? rub,
    Aed? kpw,
    Aed? kyd,
    Aed? byn,
    Aed? szl,
    Aed? pln,
    Aed? chf,
    Aed? ves,
    Aed? pab,
    Aed? wst,
    Aed? fok,
    Aed? thb,
    Aed? bsd,
    Aed? top,
    Aed? bif,
    Aed? bhd,
    Aed? imp,
    Aed? htg,
    Aed? afn,
    Aed? ils,
    Aed? lyd,
    Aed? uyu,
    Aed? nio,
    Aed? ckd,
    Aed? lak,
    Aed? kid,
    Aed? ang,
    Aed? jmd,
    Aed? egp,
    Aed? clp,
    Aed? lsl,
    Aed? ghs,
    Aed? scr,
    Aed? aoa,
    Aed? bmd,
    Aed? pkr,
    Aed? sar,
    Aed? krw,
    Aed? etb,
    Aed? bdt,
    Aed? kmf,
    Aed? bzd,
    Aed? ugx,
    Aed? huf,
    Aed? isk,
    Aed? tjs,
    Aed? nad,
    Aed? rsd,
    Aed? mur,
    Aed? mop,
    Aed? mvr,
    Aed? idr,
    Aed? cdf,
    Aed? vnd,
    Aed? gnf,
    Aed? gel,
    Aed? mwk,
    Aed? iqd,
    Aed? jpy,
    Aed? dop,
    Aed? qar,
  }) {
    return Currencies(
      mdl: mdl ?? this.mdl,
      usd: usd ?? this.usd,
      eur: eur ?? this.eur,
      aud: aud ?? this.aud,
      mzn: mzn ?? this.mzn,
      brl: brl ?? this.brl,
      cve: cve ?? this.cve,
      xaf: xaf ?? this.xaf,
      all: all ?? this.all,
      nzd: nzd ?? this.nzd,
      ngn: ngn ?? this.ngn,
      gmd: gmd ?? this.gmd,
      sos: sos ?? this.sos,
      yer: yer ?? this.yer,
      myr: myr ?? this.myr,
      xcd: xcd ?? this.xcd,
      gbp: gbp ?? this.gbp,
      mga: mga ?? this.mga,
      dzd: dzd ?? this.dzd,
      mad: mad ?? this.mad,
      mru: mru ?? this.mru,
      pyg: pyg ?? this.pyg,
      lkr: lkr ?? this.lkr,
      zar: zar ?? this.zar,
      kwd: kwd ?? this.kwd,
      sll: sll ?? this.sll,
      rwf: rwf ?? this.rwf,
      syp: syp ?? this.syp,
      hnl: hnl ?? this.hnl,
      jod: jod ?? this.jod,
      tvd: tvd ?? this.tvd,
      npr: npr ?? this.npr,
      lrd: lrd ?? this.lrd,
      ggp: ggp ?? this.ggp,
      djf: djf ?? this.djf,
      fjd: fjd ?? this.fjd,
      nok: nok ?? this.nok,
      fkp: fkp ?? this.fkp,
      kzt: kzt ?? this.kzt,
      tmt: tmt ?? this.tmt,
      bgn: bgn ?? this.bgn,
      xpf: xpf ?? this.xpf,
      bbd: bbd ?? this.bbd,
      stn: stn ?? this.stn,
      bnd: bnd ?? this.bnd,
      sgd: sgd ?? this.sgd,
      btn: btn ?? this.btn,
      inr: inr ?? this.inr,
      ars: ars ?? this.ars,
      azn: azn ?? this.azn,
      mxn: mxn ?? this.mxn,
      gtq: gtq ?? this.gtq,
      kes: kes ?? this.kes,
      czk: czk ?? this.czk,
      gip: gip ?? this.gip,
      awg: awg ?? this.awg,
      aed: aed ?? this.aed,
      ssp: ssp ?? this.ssp,
      xof: xof ?? this.xof,
      shp: shp ?? this.shp,
      bwp: bwp ?? this.bwp,
      uzs: uzs ?? this.uzs,
      tnd: tnd ?? this.tnd,
      hkd: hkd ?? this.hkd,
      mkd: mkd ?? this.mkd,
      srd: srd ?? this.srd,
      sbd: sbd ?? this.sbd,
      uah: uah ?? this.uah,
      bam: bam ?? this.bam,
      irr: irr ?? this.irr,
      cuc: cuc ?? this.cuc,
      cup: cup ?? this.cup,
      ern: ern ?? this.ern,
      currenciesTry: currenciesTry ?? this.currenciesTry,
      php: php ?? this.php,
      vuv: vuv ?? this.vuv,
      bob: bob ?? this.bob,
      ron: ron ?? this.ron,
      khr: khr ?? this.khr,
      zwl: zwl ?? this.zwl,
      jep: jep ?? this.jep,
      kgs: kgs ?? this.kgs,
      gyd: gyd ?? this.gyd,
      amd: amd ?? this.amd,
      lbp: lbp ?? this.lbp,
      dkk: dkk ?? this.dkk,
      pgk: pgk ?? this.pgk,
      zmw: zmw ?? this.zmw,
      ttd: ttd ?? this.ttd,
      pen: pen ?? this.pen,
      sek: sek ?? this.sek,
      sdg: sdg ?? this.sdg,
      omr: omr ?? this.omr,
      twd: twd ?? this.twd,
      mnt: mnt ?? this.mnt,
      tzs: tzs ?? this.tzs,
      cad: cad ?? this.cad,
      crc: crc ?? this.crc,
      cny: cny ?? this.cny,
      cop: cop ?? this.cop,
      mmk: mmk ?? this.mmk,
      rub: rub ?? this.rub,
      kpw: kpw ?? this.kpw,
      kyd: kyd ?? this.kyd,
      byn: byn ?? this.byn,
      szl: szl ?? this.szl,
      pln: pln ?? this.pln,
      chf: chf ?? this.chf,
      ves: ves ?? this.ves,
      pab: pab ?? this.pab,
      wst: wst ?? this.wst,
      fok: fok ?? this.fok,
      thb: thb ?? this.thb,
      bsd: bsd ?? this.bsd,
      top: top ?? this.top,
      bif: bif ?? this.bif,
      bhd: bhd ?? this.bhd,
      imp: imp ?? this.imp,
      htg: htg ?? this.htg,
      afn: afn ?? this.afn,
      ils: ils ?? this.ils,
      lyd: lyd ?? this.lyd,
      uyu: uyu ?? this.uyu,
      nio: nio ?? this.nio,
      ckd: ckd ?? this.ckd,
      lak: lak ?? this.lak,
      kid: kid ?? this.kid,
      ang: ang ?? this.ang,
      jmd: jmd ?? this.jmd,
      egp: egp ?? this.egp,
      clp: clp ?? this.clp,
      lsl: lsl ?? this.lsl,
      ghs: ghs ?? this.ghs,
      scr: scr ?? this.scr,
      aoa: aoa ?? this.aoa,
      bmd: bmd ?? this.bmd,
      pkr: pkr ?? this.pkr,
      sar: sar ?? this.sar,
      krw: krw ?? this.krw,
      etb: etb ?? this.etb,
      bdt: bdt ?? this.bdt,
      kmf: kmf ?? this.kmf,
      bzd: bzd ?? this.bzd,
      ugx: ugx ?? this.ugx,
      huf: huf ?? this.huf,
      isk: isk ?? this.isk,
      tjs: tjs ?? this.tjs,
      nad: nad ?? this.nad,
      rsd: rsd ?? this.rsd,
      mur: mur ?? this.mur,
      mop: mop ?? this.mop,
      mvr: mvr ?? this.mvr,
      idr: idr ?? this.idr,
      cdf: cdf ?? this.cdf,
      vnd: vnd ?? this.vnd,
      gnf: gnf ?? this.gnf,
      gel: gel ?? this.gel,
      mwk: mwk ?? this.mwk,
      iqd: iqd ?? this.iqd,
      jpy: jpy ?? this.jpy,
      dop: dop ?? this.dop,
      qar: qar ?? this.qar,
    );
  }

  factory Currencies.fromJson(Map<String, dynamic> json) {
    return Currencies(
      mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
      usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
      eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
      aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
      mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
      brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
      cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
      xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
      all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
      nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
      ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
      gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
      sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
      yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
      myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
      xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
      gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
      mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
      dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
      mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
      mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
      pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
      lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
      zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
      kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
      sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
      rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
      syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
      hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
      jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
      tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
      npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
      lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
      ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
      djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
      fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
      nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
      fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
      kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
      tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
      bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
      xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
      bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
      stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
      bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
      sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
      btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
      inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
      ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
      azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
      mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
      gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
      kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
      czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
      gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
      awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
      aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
      ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
      xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
      shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
      bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
      uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
      tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
      hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
      mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
      srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
      sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
      uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
      bam: json["BAM"] == null ? null : Bam.fromJson(json["BAM"]),
      irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
      cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
      cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
      ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
      currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
      php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
      vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
      bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
      ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
      khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
      zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
      jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
      kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
      gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
      amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
      lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
      dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
      pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
      zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
      ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
      pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
      sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
      sdg: json["SDG"] == null ? null : Bam.fromJson(json["SDG"]),
      omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
      twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
      mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
      tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
      cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
      crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
      cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
      cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
      mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
      rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
      kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
      kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
      byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
      szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
      pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
      chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
      ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
      pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
      wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
      fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
      thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
      bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
      top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
      bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
      bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
      imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
      htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
      afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
      ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
      lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
      uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
      nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
      ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
      lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
      kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
      ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
      jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
      egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
      clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
      lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
      ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
      scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
      aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
      bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
      pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
      sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
      krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
      etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
      bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
      kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
      bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
      ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
      huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
      isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
      tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
      nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
      rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
      mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
      mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
      mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
      idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
      cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
      vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
      gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
      gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
      mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
      iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
      jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
      dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
      qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "MDL": mdl?.toJson(),
        "USD": usd?.toJson(),
        "EUR": eur?.toJson(),
        "AUD": aud?.toJson(),
        "MZN": mzn?.toJson(),
        "BRL": brl?.toJson(),
        "CVE": cve?.toJson(),
        "XAF": xaf?.toJson(),
        "ALL": all?.toJson(),
        "NZD": nzd?.toJson(),
        "NGN": ngn?.toJson(),
        "GMD": gmd?.toJson(),
        "SOS": sos?.toJson(),
        "YER": yer?.toJson(),
        "MYR": myr?.toJson(),
        "XCD": xcd?.toJson(),
        "GBP": gbp?.toJson(),
        "MGA": mga?.toJson(),
        "DZD": dzd?.toJson(),
        "MAD": mad?.toJson(),
        "MRU": mru?.toJson(),
        "PYG": pyg?.toJson(),
        "LKR": lkr?.toJson(),
        "ZAR": zar?.toJson(),
        "KWD": kwd?.toJson(),
        "SLL": sll?.toJson(),
        "RWF": rwf?.toJson(),
        "SYP": syp?.toJson(),
        "HNL": hnl?.toJson(),
        "JOD": jod?.toJson(),
        "TVD": tvd?.toJson(),
        "NPR": npr?.toJson(),
        "LRD": lrd?.toJson(),
        "GGP": ggp?.toJson(),
        "DJF": djf?.toJson(),
        "FJD": fjd?.toJson(),
        "NOK": nok?.toJson(),
        "FKP": fkp?.toJson(),
        "KZT": kzt?.toJson(),
        "TMT": tmt?.toJson(),
        "BGN": bgn?.toJson(),
        "XPF": xpf?.toJson(),
        "BBD": bbd?.toJson(),
        "STN": stn?.toJson(),
        "BND": bnd?.toJson(),
        "SGD": sgd?.toJson(),
        "BTN": btn?.toJson(),
        "INR": inr?.toJson(),
        "ARS": ars?.toJson(),
        "AZN": azn?.toJson(),
        "MXN": mxn?.toJson(),
        "GTQ": gtq?.toJson(),
        "KES": kes?.toJson(),
        "CZK": czk?.toJson(),
        "GIP": gip?.toJson(),
        "AWG": awg?.toJson(),
        "AED": aed?.toJson(),
        "SSP": ssp?.toJson(),
        "XOF": xof?.toJson(),
        "SHP": shp?.toJson(),
        "BWP": bwp?.toJson(),
        "UZS": uzs?.toJson(),
        "TND": tnd?.toJson(),
        "HKD": hkd?.toJson(),
        "MKD": mkd?.toJson(),
        "SRD": srd?.toJson(),
        "SBD": sbd?.toJson(),
        "UAH": uah?.toJson(),
        "BAM": bam?.toJson(),
        "IRR": irr?.toJson(),
        "CUC": cuc?.toJson(),
        "CUP": cup?.toJson(),
        "ERN": ern?.toJson(),
        "TRY": currenciesTry?.toJson(),
        "PHP": php?.toJson(),
        "VUV": vuv?.toJson(),
        "BOB": bob?.toJson(),
        "RON": ron?.toJson(),
        "KHR": khr?.toJson(),
        "ZWL": zwl?.toJson(),
        "JEP": jep?.toJson(),
        "KGS": kgs?.toJson(),
        "GYD": gyd?.toJson(),
        "AMD": amd?.toJson(),
        "LBP": lbp?.toJson(),
        "DKK": dkk?.toJson(),
        "PGK": pgk?.toJson(),
        "ZMW": zmw?.toJson(),
        "TTD": ttd?.toJson(),
        "PEN": pen?.toJson(),
        "SEK": sek?.toJson(),
        "SDG": sdg?.toJson(),
        "OMR": omr?.toJson(),
        "TWD": twd?.toJson(),
        "MNT": mnt?.toJson(),
        "TZS": tzs?.toJson(),
        "CAD": cad?.toJson(),
        "CRC": crc?.toJson(),
        "CNY": cny?.toJson(),
        "COP": cop?.toJson(),
        "MMK": mmk?.toJson(),
        "RUB": rub?.toJson(),
        "KPW": kpw?.toJson(),
        "KYD": kyd?.toJson(),
        "BYN": byn?.toJson(),
        "SZL": szl?.toJson(),
        "PLN": pln?.toJson(),
        "CHF": chf?.toJson(),
        "VES": ves?.toJson(),
        "PAB": pab?.toJson(),
        "WST": wst?.toJson(),
        "FOK": fok?.toJson(),
        "THB": thb?.toJson(),
        "BSD": bsd?.toJson(),
        "TOP": top?.toJson(),
        "BIF": bif?.toJson(),
        "BHD": bhd?.toJson(),
        "IMP": imp?.toJson(),
        "HTG": htg?.toJson(),
        "AFN": afn?.toJson(),
        "ILS": ils?.toJson(),
        "LYD": lyd?.toJson(),
        "UYU": uyu?.toJson(),
        "NIO": nio?.toJson(),
        "CKD": ckd?.toJson(),
        "LAK": lak?.toJson(),
        "KID": kid?.toJson(),
        "ANG": ang?.toJson(),
        "JMD": jmd?.toJson(),
        "EGP": egp?.toJson(),
        "CLP": clp?.toJson(),
        "LSL": lsl?.toJson(),
        "GHS": ghs?.toJson(),
        "SCR": scr?.toJson(),
        "AOA": aoa?.toJson(),
        "BMD": bmd?.toJson(),
        "PKR": pkr?.toJson(),
        "SAR": sar?.toJson(),
        "KRW": krw?.toJson(),
        "ETB": etb?.toJson(),
        "BDT": bdt?.toJson(),
        "KMF": kmf?.toJson(),
        "BZD": bzd?.toJson(),
        "UGX": ugx?.toJson(),
        "HUF": huf?.toJson(),
        "ISK": isk?.toJson(),
        "TJS": tjs?.toJson(),
        "NAD": nad?.toJson(),
        "RSD": rsd?.toJson(),
        "MUR": mur?.toJson(),
        "MOP": mop?.toJson(),
        "MVR": mvr?.toJson(),
        "IDR": idr?.toJson(),
        "CDF": cdf?.toJson(),
        "VND": vnd?.toJson(),
        "GNF": gnf?.toJson(),
        "GEL": gel?.toJson(),
        "MWK": mwk?.toJson(),
        "IQD": iqd?.toJson(),
        "JPY": jpy?.toJson(),
        "DOP": dop?.toJson(),
        "QAR": qar?.toJson(),
      };

  @override
  String toString() {
    return "$mdl, $usd, $eur, $aud, $mzn, $brl, $cve, $xaf, $all, $nzd, $ngn, $gmd, $sos, $yer, $myr, $xcd, $gbp, $mga, $dzd, $mad, $mru, $pyg, $lkr, $zar, $kwd, $sll, $rwf, $syp, $hnl, $jod, $tvd, $npr, $lrd, $ggp, $djf, $fjd, $nok, $fkp, $kzt, $tmt, $bgn, $xpf, $bbd, $stn, $bnd, $sgd, $btn, $inr, $ars, $azn, $mxn, $gtq, $kes, $czk, $gip, $awg, $aed, $ssp, $xof, $shp, $bwp, $uzs, $tnd, $hkd, $mkd, $srd, $sbd, $uah, $bam, $irr, $cuc, $cup, $ern, $currenciesTry, $php, $vuv, $bob, $ron, $khr, $zwl, $jep, $kgs, $gyd, $amd, $lbp, $dkk, $pgk, $zmw, $ttd, $pen, $sek, $sdg, $omr, $twd, $mnt, $tzs, $cad, $crc, $cny, $cop, $mmk, $rub, $kpw, $kyd, $byn, $szl, $pln, $chf, $ves, $pab, $wst, $fok, $thb, $bsd, $top, $bif, $bhd, $imp, $htg, $afn, $ils, $lyd, $uyu, $nio, $ckd, $lak, $kid, $ang, $jmd, $egp, $clp, $lsl, $ghs, $scr, $aoa, $bmd, $pkr, $sar, $krw, $etb, $bdt, $kmf, $bzd, $ugx, $huf, $isk, $tjs, $nad, $rsd, $mur, $mop, $mvr, $idr, $cdf, $vnd, $gnf, $gel, $mwk, $iqd, $jpy, $dop, $qar, ";
  }
}

class Aed {
  Aed({
    required this.name,
    required this.symbol,
  });

  final String? name;
  final String? symbol;

  Aed copyWith({
    String? name,
    String? symbol,
  }) {
    return Aed(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  factory Aed.fromJson(Map<String, dynamic> json) {
    return Aed(
      name: json["name"],
      symbol: json["symbol"],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };

  @override
  String toString() {
    return "$name, $symbol, ";
  }
}

class Bam {
  Bam({
    required this.name,
  });

  final String? name;

  Bam copyWith({
    String? name,
  }) {
    return Bam(
      name: name ?? this.name,
    );
  }

  factory Bam.fromJson(Map<String, dynamic> json) {
    return Bam(
      name: json["name"],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
      };

  @override
  String toString() {
    return "$name, ";
  }
}

class Demonyms {
  Demonyms({
    required this.eng,
    required this.fra,
  });

  final Eng? eng;
  final Eng? fra;

  Demonyms copyWith({
    Eng? eng,
    Eng? fra,
  }) {
    return Demonyms(
      eng: eng ?? this.eng,
      fra: fra ?? this.fra,
    );
  }

  factory Demonyms.fromJson(Map<String, dynamic> json) {
    return Demonyms(
      eng: json["eng"] == null ? null : Eng.fromJson(json["eng"]),
      fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "eng": eng?.toJson(),
        "fra": fra?.toJson(),
      };

  @override
  String toString() {
    return "$eng, $fra, ";
  }
}

class Eng {
  Eng({
    required this.f,
    required this.m,
  });

  final String? f;
  final String? m;

  Eng copyWith({
    String? f,
    String? m,
  }) {
    return Eng(
      f: f ?? this.f,
      m: m ?? this.m,
    );
  }

  factory Eng.fromJson(Map<String, dynamic> json) {
    return Eng(
      f: json["f"],
      m: json["m"],
    );
  }

  Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
      };

  @override
  String toString() {
    return "$f, $m, ";
  }
}

class Flags {
  Flags({
    required this.png,
    required this.svg,
    required this.alt,
  });

  final String? png;
  final String? svg;
  final String? alt;

  Flags copyWith({
    String? png,
    String? svg,
    String? alt,
  }) {
    return Flags(
      png: png ?? this.png,
      svg: svg ?? this.svg,
      alt: alt ?? this.alt,
    );
  }

  factory Flags.fromJson(Map<String, dynamic> json) {
    return Flags(
      png: json["png"],
      svg: json["svg"],
      alt: json["alt"],
    );
  }

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
        "alt": alt,
      };

  @override
  String toString() {
    return "$png, $svg, $alt, ";
  }
}

class Idd {
  Idd({
    required this.root,
    required this.suffixes,
  });

  final String? root;
  final List<String> suffixes;

  Idd copyWith({
    String? root,
    List<String>? suffixes,
  }) {
    return Idd(
      root: root ?? this.root,
      suffixes: suffixes ?? this.suffixes,
    );
  }

  factory Idd.fromJson(Map<String, dynamic> json) {
    return Idd(
      root: json["root"],
      suffixes: json["suffixes"] == null
          ? []
          : List<String>.from(json["suffixes"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "root": root,
        "suffixes": suffixes.map((x) => x).toList(),
      };

  @override
  String toString() {
    return "$root, $suffixes, ";
  }
}

class Maps {
  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  final String? googleMaps;
  final String? openStreetMaps;

  Maps copyWith({
    String? googleMaps,
    String? openStreetMaps,
  }) {
    return Maps(
      googleMaps: googleMaps ?? this.googleMaps,
      openStreetMaps: openStreetMaps ?? this.openStreetMaps,
    );
  }

  factory Maps.fromJson(Map<String, dynamic> json) {
    return Maps(
      googleMaps: json["googleMaps"],
      openStreetMaps: json["openStreetMaps"],
    );
  }

  Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
      };

  @override
  String toString() {
    return "$googleMaps, $openStreetMaps, ";
  }
}

class Name {
  Name({
    required this.common,
    required this.official,
    // required this.nativeName,
  });

  final String? common;
  final String? official;
  // final Map<String, Translation> nativeName;

  Name copyWith({
    String? common,
    String? official,
    // Map<String, Translation>? nativeName,
  }) {
    return Name(
      common: common ?? this.common,
      official: official ?? this.official,
      // nativeName: nativeName ?? this.nativeName,
    );
  }

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      common: json["common"],
      official: json["official"],
      // nativeName: json["nativeName"]
      //     ? Map.from(json["nativeName"]).map((k, v) =>
      //         MapEntry<String, Translation>(k, Translation.fromJson(v)))
      //     : {},
    );
  }

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        // "nativeName": Map.from(nativeName)
        //     .map((k, v) => MapEntry<String, dynamic>(k, v?.toJson())),
      };

  @override
  String toString() {
    return "$common, $official, ";
  }
}

class Translation {
  Translation({
    required this.official,
    required this.common,
  });

  final String? official;
  final String? common;

  Translation copyWith({
    String? official,
    String? common,
  }) {
    return Translation(
      official: official ?? this.official,
      common: common ?? this.common,
    );
  }

  factory Translation.fromJson(Map<String, dynamic> json) {
    return Translation(
      official: json["official"],
      common: json["common"],
    );
  }

  Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
      };

  @override
  String toString() {
    return "$official, $common, ";
  }
}

class PostalCode {
  PostalCode({
    required this.format,
    required this.regex,
  });

  final String? format;
  final String? regex;

  PostalCode copyWith({
    String? format,
    String? regex,
  }) {
    return PostalCode(
      format: format ?? this.format,
      regex: regex ?? this.regex,
    );
  }

  factory PostalCode.fromJson(Map<String, dynamic> json) {
    return PostalCode(
      format: json["format"],
      regex: json["regex"],
    );
  }

  Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex,
      };

  @override
  String toString() {
    return "$format, $regex, ";
  }
}
