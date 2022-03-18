#import "fishhook/fishhook.h"
#import <dlfcn.h>
#import <mach-o/dyld.h>

%group Foundation

%hook NSProcessInfo
%new
- (BOOL)isiOSAppOnMac {
  return NO;
}
%end

%end

%group UIKit

%hook UIViewController
%new
- (void)setNeedsUpdateOfPrefersPointerLocked {
}
%end

%end

%group Metal

%hook _MTLDevice
%new
- (BOOL)supportsPullModelInterpolation {
  return NO;
}
%new
- (BOOL)supportsDynamicLibraries {
  return NO;
}
%new
- (BOOL)supportsCounterSampling:(NSInteger)arg1 {
  return arg1 == 0;
}
%new
- (BOOL)supports32BitFloatFiltering {
  return NO;
}
%new
- (BOOL)supports32BitMSAA {
  return NO;
}
%new
- (BOOL)supportsQueryTextureLOD {
  return NO;
}
%new
- (BOOL)supportsRaytracing {
  return NO;
}
%new
- (BOOL)supportsFunctionPointers {
  return NO;
}
%end

%hook MTLCompileOptionsInternal
%property(nonatomic, assign) BOOL preserveInvariance;
%end

%end

void add_image(const struct mach_header *mh, intptr_t vmaddr_slide) {
  Dl_info info;
  if (dladdr((void *)mh, &info) != 0) {
    if (strcmp(info.dli_fname,
               "/System/Library/Frameworks/Foundation.framework/Foundation") ==
        0) {
      %init(Foundation);
    }
    if (strcmp(info.dli_fname,
               "/System/Library/Frameworks/UIKit.framework/UIKit") == 0) {
      %init(UIKit);
    }
    if (strcmp(info.dli_fname,
               "/System/Library/Frameworks/Metal.framework/Metal") == 0) {
      %init(Metal);
    }
  }
}

// Disables hardware checks. I don't know why this works, but it does. Hopefully
// nothing breaks
int (*orig_access)(const char *path, int mode);
int hook_access(const char *path, int mode) {
  if (strstr(path, "specifications.xml")) {
    return -1;
  }
  return orig_access(path, mode);
}

%ctor {
  _dyld_register_func_for_add_image(add_image);
  rebind_symbols((struct rebinding[1]){{"access", (void *)hook_access,
                                        (void **)&orig_access}},
                 1);
}
