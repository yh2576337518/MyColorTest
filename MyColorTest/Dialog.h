

#import <Foundation/Foundation.h>
#import <SVProgressHUD.h>
@interface Dialog : NSObject

/**
 *  成功提示
 *
 *  @param status 提示内容
 */
+ (void)showSucessWithStatus:(NSString *)status;

@end
