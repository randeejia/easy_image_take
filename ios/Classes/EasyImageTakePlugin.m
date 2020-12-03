#import "EasyImageTakePlugin.h"
#if __has_include(<easy_image_take/easy_image_take-Swift.h>)
#import <easy_image_take/easy_image_take-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "easy_image_take-Swift.h"
#endif

@implementation EasyImageTakePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEasyImageTakePlugin registerWithRegistrar:registrar];
}
@end
