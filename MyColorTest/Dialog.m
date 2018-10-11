
#import "Dialog.h"
#import <unistd.h>
@implementation Dialog
+ (void)showSucessWithStatus:(NSString *)status{
    [SVProgressHUD setOffsetFromCenter:UIOffsetMake(0, 0)];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD showSuccessWithStatus:status];
}
@end
