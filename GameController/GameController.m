// Fill in missing symbols not found on iOS < 14

__attribute__((visibility("default"))) const float GCHapticDurationInfinite = 1000000.000000f;
__attribute__((visibility("default"))) const NSString *GCHapticsLocalityDefault = @"Default";
__attribute__((visibility("default"))) const NSString *GCHapticsLocalityAll = @"All";
__attribute__((visibility("default"))) const NSString *GCHapticsLocalityHandles = @"Handles";
__attribute__((visibility("default"))) const NSString *GCHapticsLocalityLeftHandle = @"Left Handle";
__attribute__((visibility("default"))) const NSString *GCHapticsLocalityRightHandle =
    @"Right Handle";
__attribute__((visibility("default"))) const NSString *GCHapticsLocalityTriggers = @"Triggers";
__attribute__((visibility("default"))) const NSString *GCHapticsLocalityLeftTrigger =
    @"Left Trigger";
__attribute__((visibility("default"))) const NSString *GCHapticsLocalityRightTrigger =
    @"Right Trigger";

__attribute__((visibility("default"))) const NSString *GCKeyboardDidConnectNotification =
    @"GCKeyboardDidConnectNotification";
__attribute__((visibility("default"))) const NSString *GCKeyboardDidDisconnectNotification =
    @"GCKeyboardDidDisconnectNotification";

__attribute__((visibility("default"))) const NSString *GCMouseDidConnectNotification =
    @"GCMouseDidConnectNotification";
__attribute__((visibility("default"))) const NSString *GCMouseDidDisconnectNotification =
    @"GCMouseDidDisconnectNotification";

@interface GCKeyboard : NSObject
@end

@implementation GCKeyboard
+ (instancetype)coalescedKeyboard {
  return nil;
}
@end

@interface GCMouse : NSObject
@end

@implementation GCMouse
+ (NSArray *)mice {
  return [NSArray array];
}
@end