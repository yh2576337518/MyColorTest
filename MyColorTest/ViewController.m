//
//  ViewController.m
//  MyColorTest
//
//  Created by 惠上科技 on 2018/10/10.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import "ViewController.h"
#import "Dialog.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.imageView.image = [UIImage imageNamed:@"WechatIMG200"];
}

#pragma mark ---------图片转换成编码
- (IBAction)imageToBase64:(UIButton *)sender {
    NSData *imagedata = UIImagePNGRepresentation(self.imageView.image);
    NSString *image64 = [imagedata base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    self.textLabel.text = image64;
}

#pragma mark ---------编码转换成图片
- (IBAction)base64ToImage:(UIButton *)sender {
    NSData * imageData =[[NSData alloc] initWithBase64EncodedString:self.textLabel.text options:NSDataBase64DecodingIgnoreUnknownCharacters];
    UIImage *photo = [UIImage imageWithData:imageData];
    self.imageView.image = photo;
}

#pragma mark --------粘贴文本
- (IBAction)pasteClick:(UIButton *)sender {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    self.textLabel.text = pasteboard.string;
}


#pragma mark --------复制文本
- (IBAction)copyTextClick:(UIButton *)sender {
    [Dialog showSucessWithStatus:@"复制成功!"];
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = self.textLabel.text;
}
@end
