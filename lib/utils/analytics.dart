import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

FirebaseAnalytics analytics = FirebaseAnalytics();
FirebaseAnalyticsObserver analyticsObserver =
    FirebaseAnalyticsObserver(analytics: analytics);

void logEvent(String event) => analytics.logEvent(name: event);
