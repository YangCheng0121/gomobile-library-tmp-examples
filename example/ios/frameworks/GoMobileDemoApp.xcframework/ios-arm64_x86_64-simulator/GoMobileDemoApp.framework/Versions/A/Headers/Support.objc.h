// Objective-C API for talking to goMobileSupport/src Go package.
//   gobind -lang=objc goMobileSupport/src
//
// File is generated by gobind. Do not edit.

#ifndef __Support_H__
#define __Support_H__

@import Foundation;
#include "ref.h"
#include "Universe.objc.h"


@class SupportSupport;
@protocol SupportSupportObserve;
@class SupportSupportObserve;

@protocol SupportSupportObserve <NSObject>
- (void)onCallback:(long)code msg:(NSString* _Nullable)msg;
@end

@interface SupportSupport : NSObject <goSeqRefInterface> {
}
@property(strong, readonly) _Nonnull id _ref;

- (nonnull instancetype)initWithRef:(_Nonnull id)ref;
- (nullable instancetype)init;
- (SupportSupport* _Nullable)call:(NSString* _Nullable)name;
- (SupportSupport* _Nullable)echo;
- (SupportSupport* _Nullable)setObserve:(id<SupportSupportObserve> _Nullable)o;
@end

FOUNDATION_EXPORT SupportSupport* _Nullable SupportNewSupport(void);

@class SupportSupportObserve;

@interface SupportSupportObserve : NSObject <goSeqRefInterface, SupportSupportObserve> {
}
@property(strong, readonly) _Nonnull id _ref;

- (nonnull instancetype)initWithRef:(_Nonnull id)ref;
- (void)onCallback:(long)code msg:(NSString* _Nullable)msg;
@end

#endif
