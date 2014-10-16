//
//  UTableViewBaseCell.h
//
//
//  Created by stevenj on 2014. 6. 23..
//  Copyright (c) 2014년 stevenj. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    SeparatorStyle_None = 0,
    SeparatorStyle_Bottom = 1<<0,
    SeparatorStyle_Top = 1<<1,
    SeparatorStyle_Both = SeparatorStyle_Bottom | SeparatorStyle_Top
} USeparatorStyle;

@interface UTableViewBaseCell : UITableViewCell

@property (nonatomic, assign) USeparatorStyle uSseparatorStyle;
@property (nonatomic, strong) UIColor *separatorColor;

@end
