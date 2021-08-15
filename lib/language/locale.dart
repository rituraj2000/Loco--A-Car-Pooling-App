import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'languages/italian.dart';
import 'languages/portuguese.dart';
import 'languages/arabic.dart';
import 'languages/english.dart';
import 'languages/french.dart';
import 'languages/indonesian.dart';
import 'languages/spanish.dart';
import 'languages/swahili.dart';
import 'languages/turkish.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': english(),
    'ar': arabic(),
    'pt': portuguese(),
    'fr': french(),
    'id': indonesian(),
    'es': spanish(),
    'tr': turkish(),
    'it': italian(),
    'sw': swahili()
  };

  String? get enterMobileNumber {
    return _localizedValues[locale.languageCode]!['enterMobileNumber'];
  }

  String? get orContinueWith {
    return _localizedValues[locale.languageCode]!['orContinueWith'];
  }

  String? get facebook {
    return _localizedValues[locale.languageCode]!['facebook'];
  }

  String? get google {
    return _localizedValues[locale.languageCode]!['google'];
  }

  String? get phoneNumber {
    return _localizedValues[locale.languageCode]!['phoneNumber'];
  }

  String? get fullName {
    return _localizedValues[locale.languageCode]!['fullName'];
  }

  String? get emailAddress {
    return _localizedValues[locale.languageCode]!['emailAddress'];
  }

  String? get continuee {
    return _localizedValues[locale.languageCode]!['continuee'];
  }

  String? get findNow {
    return _localizedValues[locale.languageCode]!['findNow'];
  }

  String? get findLater {
    return _localizedValues[locale.languageCode]!['findLater'];
  }

  String? get backToSignIn {
    return _localizedValues[locale.languageCode]!['backToSignIn'];
  }

  String? get phoneCode {
    return _localizedValues[locale.languageCode]!['phoneCode'];
  }

  String? get enterVerificationCodeWeveSent {
    return _localizedValues[locale.languageCode]![
        'enterVerificationCodeWeveSent'];
  }

  String? get enterVerificationCode {
    return _localizedValues[locale.languageCode]!['enterVerificationCode'];
  }

  String? get verification {
    return _localizedValues[locale.languageCode]!['verification'];
  }

  String? get enter6digit {
    return _localizedValues[locale.languageCode]!['enter6digit'];
  }

  String? get inLessThanAmin {
    return _localizedValues[locale.languageCode]!['inLessThanAmin'];
  }

  String? get getStarted {
    return _localizedValues[locale.languageCode]!['getStarted'];
  }

  String? get enterFullName {
    return _localizedValues[locale.languageCode]!['enterFullName'];
  }

  String? get enterEmailAddress {
    return _localizedValues[locale.languageCode]!['enterEmailAddress'];
  }

  String? get wellSendCode {
    return _localizedValues[locale.languageCode]!['wellSendCode'];
  }

  String? get findPool {
    return _localizedValues[locale.languageCode]!['findPool'];
  }

  String? get offerPool {
    return _localizedValues[locale.languageCode]!['offerPool'];
  }

  String? get myTrips {
    return _localizedValues[locale.languageCode]!['myTrips'];
  }

  String? get chats {
    return _localizedValues[locale.languageCode]!['chats'];
  }

  String? get pickupLocation {
    return _localizedValues[locale.languageCode]!['pickupLocation'];
  }

  String? get dropLocation {
    return _localizedValues[locale.languageCode]!['dropLocation'];
  }

  String? get rideStartson {
    return _localizedValues[locale.languageCode]!['rideStartson'];
  }

  String? get startRide {
    return _localizedValues[locale.languageCode]!['startRide'];
  }

  String? get selectLocation {
    return _localizedValues[locale.languageCode]!['selectLocation'];
  }

  String? get enterLocation {
    return _localizedValues[locale.languageCode]!['enterLocation'];
  }

  String? get pinOnMap {
    return _localizedValues[locale.languageCode]!['pinOnMap'];
  }

  String? get signInNow {
    return _localizedValues[locale.languageCode]!['signInNow'];
  }

  String? get myCars {
    return _localizedValues[locale.languageCode]!['myCars'];
  }

  String? get favourites {
    return _localizedValues[locale.languageCode]!['favourites'];
  }

  String? get rideProviders {
    return _localizedValues[locale.languageCode]!['rideProviders'];
  }

  String? get selectCar {
    return _localizedValues[locale.languageCode]!['selectCar'];
  }

  String? get services {
    return _localizedValues[locale.languageCode]!['services'];
  }

  String? get when {
    return _localizedValues[locale.languageCode]!['when'];
  }

  String? get seat {
    return _localizedValues[locale.languageCode]!['seat'];
  }

  String? get bookingDetails {
    return _localizedValues[locale.languageCode]!['bookingDetails'];
  }

  String? get pickup {
    return _localizedValues[locale.languageCode]!['pickup'];
  }

  String? get driveIn {
    return _localizedValues[locale.languageCode]!['driveIn'];
  }

  String? get totalAmount {
    return _localizedValues[locale.languageCode]!['totalAmount'];
  }

  String? get bookedBy {
    return _localizedValues[locale.languageCode]!['bookedBy'];
  }

  String? get vehicle {
    return _localizedValues[locale.languageCode]!['vehicle'];
  }

  String? get profileSetting {
    return _localizedValues[locale.languageCode]!['profileSetting'];
  }

  String? get myServices {
    return _localizedValues[locale.languageCode]!['myServices'];
  }

  String? get account {
    return _localizedValues[locale.languageCode]!['account'];
  }

  String? get support {
    return _localizedValues[locale.languageCode]!['support'];
  }

  String? get providerName {
    return _localizedValues[locale.languageCode]!['providerName'];
  }

  String? get updateInfo {
    return _localizedValues[locale.languageCode]!['updateInfo'];
  }

  String? get home {
    return _localizedValues[locale.languageCode]!['home'];
  }

  String? get other {
    return _localizedValues[locale.languageCode]!['other'];
  }

  String? get logout {
    return _localizedValues[locale.languageCode]!['logout'];
  }

  String? get submit {
    return _localizedValues[locale.languageCode]!['submit'];
  }

  String? get resend {
    return _localizedValues[locale.languageCode]!['resend'];
  }

  String? get distance {
    return _localizedValues[locale.languageCode]!['distance'];
  }

  String? get cost {
    return _localizedValues[locale.languageCode]!['cost'];
  }

  String? get bookNow {
    return _localizedValues[locale.languageCode]!['bookNow'];
  }

  String? get poolers {
    return _localizedValues[locale.languageCode]!['poolers'];
  }

  String? get joinRide {
    return _localizedValues[locale.languageCode]!['joinRide'];
  }

  String? get copassengers {
    return _localizedValues[locale.languageCode]!['copassengers'];
  }

  String? get riderRating {
    return _localizedValues[locale.languageCode]!['riderRating'];
  }

  String? get rideWith {
    return _localizedValues[locale.languageCode]!['rideWith'];
  }

  String? get joined {
    return _localizedValues[locale.languageCode]!['joined'];
  }

  String? get vehicleInfo {
    return _localizedValues[locale.languageCode]!['vehicleInfo'];
  }

  String? get facilities {
    return _localizedValues[locale.languageCode]!['facilities'];
  }

  String? get instructions {
    return _localizedValues[locale.languageCode]!['instructions'];
  }

  String? get ac {
    return _localizedValues[locale.languageCode]!['ac'];
  }

  String? get luggageSpace {
    return _localizedValues[locale.languageCode]!['luggageSpace'];
  }

  String? get musicSystem {
    return _localizedValues[locale.languageCode]!['musicSystem'];
  }

  String? get smoking {
    return _localizedValues[locale.languageCode]!['smoking'];
  }

  String? get pets {
    return _localizedValues[locale.languageCode]!['pets'];
  }

  String? get congrats {
    return _localizedValues[locale.languageCode]!['congrats'];
  }

  String? get yourCarConfirmed {
    return _localizedValues[locale.languageCode]!['yourCarConfirmed'];
  }

  String? get hobbies {
    return _localizedValues[locale.languageCode]!['hobbies'];
  }

  String? get bio {
    return _localizedValues[locale.languageCode]!['bio'];
  }

  String? get listeningMusic {
    return _localizedValues[locale.languageCode]!['listeningMusic'];
  }

  String? get jolly {
    return _localizedValues[locale.languageCode]!['jolly'];
  }

  String? get toPickupPoint {
    return _localizedValues[locale.languageCode]!['toPickupPoint'];
  }

  String? get drive {
    return _localizedValues[locale.languageCode]!['drive'];
  }

  String? get fromDropPoint {
    return _localizedValues[locale.languageCode]!['fromDropPoint'];
  }

  String? get startTrip {
    return _localizedValues[locale.languageCode]!['startTrip'];
  }

  String? get endTrip {
    return _localizedValues[locale.languageCode]!['endTrip'];
  }

  String? get rideRoute {
    return _localizedValues[locale.languageCode]!['rideRoute'];
  }

  String? get direction {
    return _localizedValues[locale.languageCode]!['direction'];
  }

  String? get tripCompleted {
    return _localizedValues[locale.languageCode]!['tripCompleted'];
  }

  String? get hopeYouHad {
    return _localizedValues[locale.languageCode]!['hopeYouHad'];
  }

  String? get rateRider {
    return _localizedValues[locale.languageCode]!['rateRider'];
  }

  String? get amountToPay {
    return _localizedValues[locale.languageCode]!['amountToPay'];
  }

  String? get youHaveEarned {
    return _localizedValues[locale.languageCode]!['youHaveEarned'];
  }

  String? get fromThisTrip {
    return _localizedValues[locale.languageCode]!['fromThisTrip'];
  }

  String? get rateRideTaker {
    return _localizedValues[locale.languageCode]!['rateRideTaker'];
  }

  String? get wallet {
    return _localizedValues[locale.languageCode]!['wallet'];
  }

  String? get quickPayments {
    return _localizedValues[locale.languageCode]!['quickPayments'];
  }

  String? get myVehicle {
    return _localizedValues[locale.languageCode]!['myVehicle'];
  }

  String? get manageAddress {
    return _localizedValues[locale.languageCode]!['manageAddress'];
  }

  String? get manageBank {
    return _localizedValues[locale.languageCode]!['manageBank'];
  }

  String? get privacyPolicy {
    return _localizedValues[locale.languageCode]!['privacyPolicy'];
  }

  String? get termsConditions {
    return _localizedValues[locale.languageCode]!['termsConditions'];
  }

  String? get faq {
    return _localizedValues[locale.languageCode]!['faq'];
  }

  String? get signout {
    return _localizedValues[locale.languageCode]!['signout'];
  }

  String? get exitapp {
    return _localizedValues[locale.languageCode]!['exitapp'];
  }

  String? get addVehicleinfo {
    return _localizedValues[locale.languageCode]!['addVehicleinfo'];
  }

  String? get presavedAddress {
    return _localizedValues[locale.languageCode]!['presavedAddress'];
  }

  String? get presavedBank {
    return _localizedValues[locale.languageCode]!['presavedBank'];
  }

  String? get connectUsFor {
    return _localizedValues[locale.languageCode]!['connectUsFor'];
  }

  String? get knowPrivacy {
    return _localizedValues[locale.languageCode]!['knowPrivacy'];
  }

  String? get knowTerms {
    return _localizedValues[locale.languageCode]!['knowTerms'];
  }

  String? get setYourlanguage {
    return _localizedValues[locale.languageCode]!['setYourlanguage'];
  }

  String? get getYouranswers {
    return _localizedValues[locale.languageCode]!['getYouranswers'];
  }

  String? get language {
    return _localizedValues[locale.languageCode]!['language'];
  }

  String? get howToAddMoney {
    return _localizedValues[locale.languageCode]!['howToAddMoney'];
  }

  String? get preferredLanguage {
    return _localizedValues[locale.languageCode]!['preferredLanguage'];
  }

  String? get myProfile {
    return _localizedValues[locale.languageCode]!['myProfile'];
  }

  String? get pooltaker {
    return _localizedValues[locale.languageCode]!['pooltaker'];
  }

  String? get everythingAboutyou {
    return _localizedValues[locale.languageCode]!['everythingAboutyou'];
  }

  String? get profileInfo {
    return _localizedValues[locale.languageCode]!['profileInfo'];
  }

  String? get accountInfo {
    return _localizedValues[locale.languageCode]!['accountInfo'];
  }

  String? get companyName {
    return _localizedValues[locale.languageCode]!['companyName'];
  }

  String? get corporateEmail {
    return _localizedValues[locale.languageCode]!['corporateEmail'];
  }

  String? get govtId {
    return _localizedValues[locale.languageCode]!['govtId'];
  }

  String? get drivingLicense {
    return _localizedValues[locale.languageCode]!['drivingLicense'];
  }

  String? get shortBio {
    return _localizedValues[locale.languageCode]!['shortBio'];
  }

  String? get helloSir {
    return _localizedValues[locale.languageCode]!['helloSir'];
  }

  String? get iwillBe {
    return _localizedValues[locale.languageCode]!['iwillBe'];
  }

  String? get noWorries {
    return _localizedValues[locale.languageCode]!['noWorries'];
  }

  String? get writeyourMessage {
    return _localizedValues[locale.languageCode]!['writeyourMessage'];
  }

  String? get liveChat {
    return _localizedValues[locale.languageCode]!['liveChat'];
  }

  String? get archive {
    return _localizedValues[locale.languageCode]!['archive'];
  }

  String? get availableBalance {
    return _localizedValues[locale.languageCode]!['availableBalance'];
  }

  String? get addMoney {
    return _localizedValues[locale.languageCode]!['addMoney'];
  }

  String? get sendToBank {
    return _localizedValues[locale.languageCode]!['sendToBank'];
  }

  String? get paidToRider {
    return _localizedValues[locale.languageCode]!['paidToRider'];
  }

  String? get addedToWallet {
    return _localizedValues[locale.languageCode]!['addedToWallet'];
  }

  String? get receivedFrom {
    return _localizedValues[locale.languageCode]!['receivedFrom'];
  }

  String? get vehiclesYouOwn {
    return _localizedValues[locale.languageCode]!['vehiclesYouOwn'];
  }

  String? get addNewWehicle {
    return _localizedValues[locale.languageCode]!['addNewWehicle'];
  }

  String? get addVehicle {
    return _localizedValues[locale.languageCode]!['addVehicle'];
  }

  String? get vehicleType {
    return _localizedValues[locale.languageCode]!['vehicleType'];
  }

  String? get vehicleName {
    return _localizedValues[locale.languageCode]!['vehicleName'];
  }

  String? get vehicleReg {
    return _localizedValues[locale.languageCode]!['vehicleReg'];
  }

  String? get eng {
    return _localizedValues[locale.languageCode]!['english'];
  }

  String? get seatsOffering {
    return _localizedValues[locale.languageCode]!['seatsOffering'];
  }

  String? get arab {
    return _localizedValues[locale.languageCode]!['arabic'];
  }

  String? get ieAc {
    return _localizedValues[locale.languageCode]!['ieAc'];
  }

  String? get ieNo {
    return _localizedValues[locale.languageCode]!['ieNo'];
  }

  String? get office {
    return _localizedValues[locale.languageCode]!['office'];
  }

  String? get searchLocation {
    return _localizedValues[locale.languageCode]!['searchLocation'];
  }

  String? get addLandmark {
    return _localizedValues[locale.languageCode]!['addLandmark'];
  }

  String? get frnch {
    return _localizedValues[locale.languageCode]!['french'];
  }

  String? get writeAddressLandmark {
    return _localizedValues[locale.languageCode]!['writeAddressLandmark'];
  }

  String? get prtguese {
    return _localizedValues[locale.languageCode]!['portuguese'];
  }

  String? get connectUs {
    return _localizedValues[locale.languageCode]!['connectUs'];
  }

  String? get writeUs {
    return _localizedValues[locale.languageCode]!['writeUs'];
  }

  String? get email {
    return _localizedValues[locale.languageCode]!['email'];
  }

  String? get addYourIssue {
    return _localizedValues[locale.languageCode]!['addYourIssue'];
  }

  String? get feedback {
    return _localizedValues[locale.languageCode]!['feedback'];
  }

  String? get addContactInfo {
    return _localizedValues[locale.languageCode]!['addContactInfo'];
  }

  String? get howWeWork {
    return _localizedValues[locale.languageCode]!['howWeWork'];
  }

  String? get termsOfUse {
    return _localizedValues[locale.languageCode]!['termsOfUse'];
  }

  String? get selectPreferredLanguage {
    return _localizedValues[locale.languageCode]!['selectPreferredLanguage'];
  }

  String? get howToCreate {
    return _localizedValues[locale.languageCode]!['howToCreate'];
  }

  String? get howToOffer {
    return _localizedValues[locale.languageCode]!['howToOffer'];
  }

  String? get proceedToPay {
    return _localizedValues[locale.languageCode]!['proceedToPay'];
  }

  String? get viewAll {
    return _localizedValues[locale.languageCode]!['viewAll'];
  }

  String? get lorem {
    return _localizedValues[locale.languageCode]!['lorem'];
  }

  String? get registerNow {
    return _localizedValues[locale.languageCode]!['registerNow'];
  }

  String? get register {
    return _localizedValues[locale.languageCode]!['register'];
  }

  String? get enterName {
    return _localizedValues[locale.languageCode]!['enterName'];
  }

  String? get sun {
    return _localizedValues[locale.languageCode]!['sun'];
  }

  String? get mon {
    return _localizedValues[locale.languageCode]!['mon'];
  }

  String? get tue {
    return _localizedValues[locale.languageCode]!['tue'];
  }

  String? get wed {
    return _localizedValues[locale.languageCode]!['wed'];
  }

  String? get thr {
    return _localizedValues[locale.languageCode]!['thr'];
  }

  String? get fri {
    return _localizedValues[locale.languageCode]!['fri'];
  }

  String? get sat {
    return _localizedValues[locale.languageCode]!['sat'];
  }

  String? get june {
    return _localizedValues[locale.languageCode]!['june'];
  }

  String? get am {
    return _localizedValues[locale.languageCode]!['am'];
  }

  String? get pm {
    return _localizedValues[locale.languageCode]!['pm'];
  }

  String? get enterCode {
    return _localizedValues[locale.languageCode]!['enterCode'];
  }

  String? get setLocation {
    return _localizedValues[locale.languageCode]!['setLocation'];
  }

  String? get reviews {
    return _localizedValues[locale.languageCode]!['reviews'];
  }

  String? get payment {
    return _localizedValues[locale.languageCode]!['payment'];
  }

  String? get indonesia {
    return _localizedValues[locale.languageCode]!['indonesian'];
  }

  String? get italy {
    return _localizedValues[locale.languageCode]!['italian'];
  }

  String? get spansh {
    return _localizedValues[locale.languageCode]!['spanish'];
  }

  String? get swahilii {
    return _localizedValues[locale.languageCode]!['swahili'];
  }

  String? get turk {
    return _localizedValues[locale.languageCode]!['turkish'];
  }

  String? get payNow {
    return _localizedValues[locale.languageCode]!['payNow'];
  }

  String? get bookingConfirmed {
    return _localizedValues[locale.languageCode]!['bookingConfirmed'];
  }

  String? get viewMore {
    return _localizedValues[locale.languageCode]!['viewMore'];
  }

  String? get rateNow {
    return _localizedValues[locale.languageCode]!['rateNow'];
  }

  String? get bookingFor {
    return _localizedValues[locale.languageCode]!['bookingFor'];
  }

  String? get more {
    return _localizedValues[locale.languageCode]!['more'];
  }

  String? get viewProfile {
    return _localizedValues[locale.languageCode]!['viewProfile'];
  }

  String? get getDirection {
    return _localizedValues[locale.languageCode]!['getDirection'];
  }

  String? get peopleRated {
    return _localizedValues[locale.languageCode]!['peopleRated'];
  }

  String? get savedAddresses {
    return _localizedValues[locale.languageCode]!['savedAddresses'];
  }

  String? get addNewLocation {
    return _localizedValues[locale.languageCode]!['addNewLocation'];
  }

  String? get selectAddressType {
    return _localizedValues[locale.languageCode]!['selectAddressType'];
  }

  String? get enterAddressDetails {
    return _localizedValues[locale.languageCode]!['enterAddressDetails'];
  }

  String? get selectPaymentMethod {
    return _localizedValues[locale.languageCode]!['selectPaymentMethod'];
  }

  String? get rating {
    return _localizedValues[locale.languageCode]!['rating'];
  }

  String? get applyNow {
    return _localizedValues[locale.languageCode]!['applyNow'];
  }

  String? get selectDateAndTime {
    return _localizedValues[locale.languageCode]!['selectDateAndTime'];
  }

  String? get selectDate {
    return _localizedValues[locale.languageCode]!['selectDate'];
  }

  String? get selectTime {
    return _localizedValues[locale.languageCode]!['selectTime'];
  }

  String? get letUsKnowQuery {
    return _localizedValues[locale.languageCode]!['letUsKnowQuery'];
  }

  String? get sendYourMessage {
    return _localizedValues[locale.languageCode]!['sendYourMessage'];
  }

  String? get callUs {
    return _localizedValues[locale.languageCode]!['callUs'];
  }

  String? get mailUs {
    return _localizedValues[locale.languageCode]!['mailUs'];
  }

  String? get about {
    return _localizedValues[locale.languageCode]!['about'];
  }

  String? get address {
    return _localizedValues[locale.languageCode]!['address'];
  }

  String? get location {
    return _localizedValues[locale.languageCode]!['location'];
  }

  String? get days {
    return _localizedValues[locale.languageCode]!['days'];
  }

  String? get done {
    return _localizedValues[locale.languageCode]!['done'];
  }

  String? get time {
    return _localizedValues[locale.languageCode]!['time'];
  }

  String? get addNewAddress {
    return _localizedValues[locale.languageCode]!['addNewAddress'];
  }

  String? get saved {
    return _localizedValues[locale.languageCode]!['saved'];
  }

  String? get quickPayment {
    return _localizedValues[locale.languageCode]!['quickPayment'];
  }

  String? get saveAddress {
    return _localizedValues[locale.languageCode]!['saveAddress'];
  }

  String? get contactUs {
    return _localizedValues[locale.languageCode]!['contactUs'];
  }

  String? get save {
    return _localizedValues[locale.languageCode]!['save'];
  }

  String? get myAddresses {
    return _localizedValues[locale.languageCode]!['myAddresses'];
  }

  String? get changeLanguage {
    return _localizedValues[locale.languageCode]!['changeLanguage'];
  }

  String? get selectLanguage {
    return _localizedValues[locale.languageCode]!['selectLanguage'];
  }

  String? get contactNumber {
    return _localizedValues[locale.languageCode]!['contactNumber'];
  }

  String? get writeYourNumber {
    return _localizedValues[locale.languageCode]!['writeYourNumber'];
  }

  String? get offerRide {
    return _localizedValues[locale.languageCode]!['offerRide'];
  }

  String? get Chassis {
    return _localizedValues[locale.languageCode]!['Chassis'];
  }

  String? get enterreferalid {
    return _localizedValues[locale.languageCode]!['enterreferalid'];
  }

  String? get referalID {
    return _localizedValues[locale.languageCode]!['referalID'];
  }

  String? get Fueltype {
    return _localizedValues[locale.languageCode]!['Fueltype'];
  }

  String? get callRider {
    return _localizedValues[locale.languageCode]!['callRider'];
  }

  String? get drop {
    return _localizedValues[locale.languageCode]!['drop'];
  }

  String? get submitPay {
    return _localizedValues[locale.languageCode]!['submitPay'];
  }

  String? get no {
    return _localizedValues[locale.languageCode]!['no'];
  }

  String? get addYourMessage {
    return _localizedValues[locale.languageCode]!['addYourMessage'];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => [
        'en',
        'ar',
        'id',
        'pt',
        'fr',
        'es',
        'tr',
        'it',
        'sw'
      ].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of AppLocalizations.
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
