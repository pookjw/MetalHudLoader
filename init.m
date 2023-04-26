#import <Foundation/Foundation.h>
#import <dlfcn.h>

__attribute__((constructor)) static void init() {
    dlopen("/usr/lib/libMTLHud.dylib", RTLD_NOW);
    setenv("MTL_HUD_ENABLED", "1", 1);
}