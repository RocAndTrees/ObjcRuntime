//
//  ViewController.m
//  RunTimeDemo
//
//  Created by apple on 16/5/25.
//  Copyright © 2016年 Pxl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tabelView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self buildTableView];
}


#pragma mark - ---- delegate 🍎🌝
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString *identf = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identf];
    if (nil == cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identf];
    }
    cell.backgroundColor = [UIColor redColor];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}


-(void)buildTableView{
    [self.tabelView setTableFooterView:[[UIView  alloc] init]];
}
@end
