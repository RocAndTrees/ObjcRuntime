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
//    cell.backgroundColor = [UIColor redColor];
    NSString* str = [NSString stringWithFormat:@"case %ld",indexPath.row+1];
    cell.textLabel.text = str;
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString*str = [NSString stringWithFormat:@"CaseController%ld",indexPath.row+1];
    [self pushViewController:str];
}


-(void)pushViewController:(NSString*)controller{
    UIViewController* controller1 = [[NSClassFromString(controller) alloc] init];
    [self.navigationController pushViewController:controller1 animated:YES];
}


-(void)buildTableView{
    [self.tabelView setTableFooterView:[[UIView  alloc] init]];
}
@end
