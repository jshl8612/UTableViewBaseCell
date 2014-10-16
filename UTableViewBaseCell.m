//
//  UTableViewBaseCell.m
//
//
//  Created by stevenj on 2014. 6. 23..
//  Copyright (c) 2014년 stevenj. All rights reserved.
//

#import "UTableViewBaseCell.h"

#define colorRGB(a,b,c,d) [UIColor colorWithRed:a/255.0f green:b/255.0f blue:c/255.0f alpha:d]

#define DefaultSeparatorColor       colorRGB(226, 225, 224, 1)

@interface UTableViewBaseCell()

@property (nonatomic, strong) CAShapeLayer *lineLayer;

@end

@implementation UTableViewBaseCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (_lineLayer) {
        [_lineLayer removeFromSuperlayer];
    }
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    if ((_uSseparatorStyle & SeparatorStyle_Top) == SeparatorStyle_Top ) {
        [path moveToPoint:CGPointMake(16, 0.0)];
        [path addLineToPoint:CGPointMake(self.bounds.size.width, 0.0)];
    }
    
    if ((_uSseparatorStyle & SeparatorStyle_Bottom) == SeparatorStyle_Bottom) {
        [path moveToPoint:CGPointMake(16, self.bounds.size.height-1)];
        [path addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height-1)];
    }
    
    _lineLayer = [CAShapeLayer layer];
    _lineLayer.path = [path CGPath];
    _lineLayer.strokeColor = (_separatorColor?_separatorColor:DefaultSeparatorColor).CGColor;
    _lineLayer.lineWidth = 0.5f;
    
    [self.layer addSublayer:_lineLayer];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
