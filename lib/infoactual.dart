import 'dart:convert';
class InfoActual {
    InfoActual({
      required  this.date,
      required  this.state,
        this.positive,
        this.probableCases,
        this.negative,
        this.pending,
        this.totalTestResultsSource,
        this.totalTestResults,
        this.hospitalizedCurrently,
        this.hospitalizedCumulative,
        this.inIcuCurrently,
        this.inIcuCumulative,
        this.onVentilatorCurrently,
        this.onVentilatorCumulative,
        this.recovered,
        this.lastUpdateEt,
        this.dateModified,
        this.checkTimeEt,
        this.death,
        this.hospitalized,
        this.hospitalizedDischarged,
        this.dateChecked,
        this.totalTestsViral,
        this.positiveTestsViral,
        this.negativeTestsViral,
        this.positiveCasesViral,
        this.deathConfirmed,
        this.deathProbable,
        this.totalTestEncountersViral,
        this.totalTestsPeopleViral,
        this.totalTestsAntibody,
        this.positiveTestsAntibody,
        this.negativeTestsAntibody,
        this.totalTestsPeopleAntibody,
        this.positiveTestsPeopleAntibody,
        this.negativeTestsPeopleAntibody,
        this.totalTestsPeopleAntigen,
        this.positiveTestsPeopleAntigen,
        this.totalTestsAntigen,
        this.positiveTestsAntigen,
        this.fips,
        this.positiveIncrease,
        this.negativeIncrease,
        this.total,
        this.totalTestResultsIncrease,
        this.posNeg,
        this.dataQualityGrade,
        this.deathIncrease,
        this.hospitalizedIncrease,
        this.hash,
        this.commercialScore,
        this.negativeRegularScore,
        this.negativeScore,
        this.positiveScore,
        this.score,
        this.grade,
    });

    int date;
    String state;
    int? positive;
    dynamic probableCases;
    dynamic negative;
    dynamic pending;
    String? totalTestResultsSource;
    int? totalTestResults;
    int? hospitalizedCurrently;
    int? hospitalizedCumulative;
    dynamic inIcuCurrently;
    dynamic inIcuCumulative;
    int? onVentilatorCurrently;
    dynamic onVentilatorCumulative;
    dynamic recovered;
    String? lastUpdateEt;
    String? dateModified;
    String? checkTimeEt;
    int? death;
    int? hospitalized;
    dynamic hospitalizedDischarged;
    String? dateChecked;
    int? totalTestsViral;
    int? positiveTestsViral;
    int? negativeTestsViral;
    dynamic positiveCasesViral;
    dynamic deathConfirmed;
    dynamic deathProbable;
    dynamic totalTestEncountersViral;
    dynamic totalTestsPeopleViral;
    dynamic totalTestsAntibody;
    dynamic positiveTestsAntibody;
    dynamic negativeTestsAntibody;
    dynamic totalTestsPeopleAntibody;
    dynamic positiveTestsPeopleAntibody;
    dynamic negativeTestsPeopleAntibody;
    dynamic totalTestsPeopleAntigen;
    dynamic positiveTestsPeopleAntigen;
    dynamic totalTestsAntigen;
    dynamic positiveTestsAntigen;
    String? fips;
    int? positiveIncrease;
    int? negativeIncrease;
    int? total;
    int? totalTestResultsIncrease;
    int? posNeg;
    dynamic dataQualityGrade;
    int? deathIncrease;
    int? hospitalizedIncrease;
    String? hash;
    int? commercialScore;
    int? negativeRegularScore;
    int? negativeScore;
    int? positiveScore;
    int? score;
    String? grade;

    factory InfoActual.fromJson(String str) => InfoActual.fromMap(json.decode(str));
    factory InfoActual.fromMap(Map<String, dynamic> json) => InfoActual(
        date: json["date"],
        state: json["state"],
        positive: json["positive"],
        probableCases: json["probableCases"],
        negative: json["negative"],
        pending: json["pending"],
        totalTestResultsSource: json["totalTestResultsSource"],
        totalTestResults: json["totalTestResults"],
        hospitalizedCurrently: json["hospitalizedCurrently"],
        hospitalizedCumulative: json["hospitalizedCumulative"],
        inIcuCurrently: json["inIcuCurrently"],
        inIcuCumulative: json["inIcuCumulative"],
        onVentilatorCurrently: json["onVentilatorCurrently"],
        onVentilatorCumulative: json["onVentilatorCumulative"],
        recovered: json["recovered"],
        lastUpdateEt: json["lastUpdateEt"],
        dateModified: json["dateModified"],
        checkTimeEt: json["checkTimeEt"],
        death: json["death"],
        hospitalized: json["hospitalized"],
        hospitalizedDischarged: json["hospitalizedDischarged"],
        dateChecked: json["dateChecked"],
        totalTestsViral: json["totalTestsViral"],
        positiveTestsViral: json["positiveTestsViral"],
        negativeTestsViral: json["negativeTestsViral"],
        positiveCasesViral: json["positiveCasesViral"],
        deathConfirmed: json["deathConfirmed"],
        deathProbable: json["deathProbable"],
        totalTestEncountersViral: json["totalTestEncountersViral"],
        totalTestsPeopleViral: json["totalTestsPeopleViral"],
        totalTestsAntibody: json["totalTestsAntibody"],
        positiveTestsAntibody: json["positiveTestsAntibody"],
        negativeTestsAntibody: json["negativeTestsAntibody"],
        totalTestsPeopleAntibody: json["totalTestsPeopleAntibody"],
        positiveTestsPeopleAntibody: json["positiveTestsPeopleAntibody"],
        negativeTestsPeopleAntibody: json["negativeTestsPeopleAntibody"],
        totalTestsPeopleAntigen: json["totalTestsPeopleAntigen"],
        positiveTestsPeopleAntigen: json["positiveTestsPeopleAntigen"],
        totalTestsAntigen: json["totalTestsAntigen"],
        positiveTestsAntigen: json["positiveTestsAntigen"],
        fips: json["fips"],
        positiveIncrease: json["positiveIncrease"],
        negativeIncrease: json["negativeIncrease"],
        total: json["total"],
        totalTestResultsIncrease: json["totalTestResultsIncrease"],
        posNeg: json["posNeg"],
        dataQualityGrade: json["dataQualityGrade"],
        deathIncrease: json["deathIncrease"],
        hospitalizedIncrease: json["hospitalizedIncrease"],
        hash: json["hash"],
        commercialScore: json["commercialScore"],
        negativeRegularScore: json["negativeRegularScore"],
        negativeScore: json["negativeScore"],
        positiveScore: json["positiveScore"],
        score: json["score"],
        grade: json["grade"],
    );
}
