#import <Foundation/Foundation.h>
#import <dlfcn.h>

__attribute__((constructor)) static void init() {
    setenv("MTL_HUD_ENABLED", "1", 1);
    
    const char *path;
    if (kCFCoreFoundationVersionNumber >= 2042.1020) {
        path = "/Symbols/usr/lib/libMTLHud.dylib";
    } else {
        path = "/usr/lib/libMTLHud.dylib";
    }

    dlopen(path, RTLD_NOW);
}