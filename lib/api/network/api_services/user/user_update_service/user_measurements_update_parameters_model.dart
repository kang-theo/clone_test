import 'package:mwu/api/network/api_models/mwu_api_request_parameter_model/mwu_api_request_parameter_model.dart';

class UserMeasurementsUpdateDataParameters {
  final int bodyMeasurementSystem;
  final int nutritionMeasurementSystem;

  UserMeasurementsUpdateDataParameters(this.bodyMeasurementSystem, this.nutritionMeasurementSystem);

  Map<String, dynamic> toJson() => {'body_measurement_system': bodyMeasurementSystem, 'nutrition_measurement_system': nutritionMeasurementSystem};
}

class UserMeasurementsUpdateParameters extends MWUApiParameter<dynamic, UserMeasurementsUpdateDataParameters> {
  UserMeasurementsUpdateParameters(int bodyMeasurementSystem, int nutritionMeasurementSystem)
      : super(
    queryParameters: null,
    dataParameters: UserMeasurementsUpdateDataParameters(bodyMeasurementSystem, nutritionMeasurementSystem),
  );
}
