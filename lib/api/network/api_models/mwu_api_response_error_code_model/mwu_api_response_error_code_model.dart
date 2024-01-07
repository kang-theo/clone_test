enum APIResponseErrorCode {
  checkinWindowClosed,
  httpUnauthorized,
  iapReceiptUsed,
  invalidCredentials,
  mealGuideInactive,
  missingMealGuide,
  programDeactivated,
  sessionExpired,
  userProgramPendingAccess,
  userProgramProfileMissing,
  maintenanceMode,
  unprocessedEntity,
  unknown; // default value

  // string to enum
  static APIResponseErrorCode fromString(String? errorCode) {
    switch (errorCode) {
      case 'CHECKIN_WINDOW_CLOSED':
        return APIResponseErrorCode.checkinWindowClosed;
      case 'HTTP_UNAUTHORIZED':
        return APIResponseErrorCode.httpUnauthorized;
      case 'IAP_RECEIPT_USED':
        return APIResponseErrorCode.iapReceiptUsed;
      case 'INVALID_CREDENTIALS':
        return APIResponseErrorCode.invalidCredentials;
      case 'MEAL_GUIDE_INACTIVE':
        return APIResponseErrorCode.mealGuideInactive;
      case 'MISSING_MEAL_GUIDE':
        return APIResponseErrorCode.missingMealGuide;
      case 'PROGRAM_DEACTIVATED':
        return APIResponseErrorCode.programDeactivated;
      case 'SESSION_EXPIRED':
        return APIResponseErrorCode.sessionExpired;
      case 'USER_PROGRAM_PENDING_ACCESS':
        return APIResponseErrorCode.userProgramPendingAccess;
      case 'USER_PROGRAM_PROFILE_MISSING':
        return APIResponseErrorCode.userProgramProfileMissing;
      case 'MAINTENANCE_MODE':
        return APIResponseErrorCode.maintenanceMode;
      case 'HTTP_UNPROCESSABLE_ENTITY':
        return APIResponseErrorCode.unprocessedEntity;
      default:
        return APIResponseErrorCode.unknown;
    }
  }

  // error code string
  String get code {
    switch (this) {
      case APIResponseErrorCode.checkinWindowClosed:
        return 'CHECKIN_WINDOW_CLOSED';
      case APIResponseErrorCode.httpUnauthorized:
        return 'HTTP_UNAUTHORIZED';
      case APIResponseErrorCode.iapReceiptUsed:
        return 'IAP_RECEIPT_USED';
      case APIResponseErrorCode.invalidCredentials:
        return 'INVALID_CREDENTIALS';
      case APIResponseErrorCode.mealGuideInactive:
        return 'MEAL_GUIDE_INACTIVE';
      case APIResponseErrorCode.missingMealGuide:
        return 'MISSING_MEAL_GUIDE';
      case APIResponseErrorCode.programDeactivated:
        return 'PROGRAM_DEACTIVATED';
      case APIResponseErrorCode.sessionExpired:
        return 'SESSION_EXPIRED';
      case APIResponseErrorCode.userProgramPendingAccess:
        return 'USER_PROGRAM_PENDING_ACCESS';
      case APIResponseErrorCode.userProgramProfileMissing:
        return 'USER_PROGRAM_PROFILE_MISSING';
      case APIResponseErrorCode.maintenanceMode:
        return 'MAINTENANCE_MODE';
      case APIResponseErrorCode.unprocessedEntity:
        return 'HTTP_UNPROCESSABLE_ENTITY';
      default:
        return 'UNKNOWN';
    }
  }
}
