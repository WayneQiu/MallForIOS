//
//  BasicInfoTableViewController.m
//  TestDemo
//
//  Created by 董冰彬 on 16/4/21.
//  Copyright © 2016年 dongbingbin. All rights reserved.
//

#import "BasicInfoTableViewController.h"
#import "BasicInfo1TableViewCell.h"
#import "BasicInfo2TableViewCell.h"

@interface BasicInfoTableViewController ()

@end



@implementation BasicInfoTableViewController

static NSString *CellIdentifier1 = @"Cellpic";
static NSString *CellIdentifier2 = @"Celltext";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //self.tableView =[[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    //[self.tableView registerClass:[BasicInfo1TableViewCell class] forCellReuseIdentifier:CellIdentifier1];
    //[self.tableView registerClass:[BasicInfo2TableViewCell class] forCellReuseIdentifier:CellIdentifier2];
    
    //self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    //self.tableView.separatorInset = UIEdgeInsetsMake(0,-40, 0, 0);
    //self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"编辑"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(toEditView)];
    
    self.dataArray1 = [[NSMutableArray alloc] initWithObjects:@"用户名", @"平台账号", @"手机号",@"性别",@"生日", nil];
    
    self.dataArray2 = [[NSMutableArray alloc] initWithObjects:@"职业", @"公司", @"所在地", @"简介", @"诚信指数", nil];
    
    self.dataArray3 = [[NSMutableArray alloc] initWithObjects:@"注册时间",  nil];
}

-(void)toEditView
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"标题" message:@"这个是UIAlertController的默认样式" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if(section==0)
    {
        return 0;
    }
    else
    {
        return 10;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section==0)
    {
        return 150;
    }
    else
    {
        return 30;
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    if(section==0)
    {
        return 1;
    }
    else if(section==1)
    {
        return [self.dataArray1 count];
    }
    else if(section==2)
    {
        return [self.dataArray2 count];
    }
    else if(section==3)
    {
        return [self.dataArray3 count];
    }
    else
    {
        return 0;
    }
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    
    
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    if(indexPath.section==0)
    {
        BasicInfo1TableViewCell *cell = (BasicInfo1TableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier1];
        if(cell == nil)
        {
                
            cell = [[BasicInfo1TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier1];
            
        }
        return cell;
    }
    else if(indexPath.section==1)
    {
        BasicInfo2TableViewCell *cell = (BasicInfo2TableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
        if(cell == nil)
        {
            
            cell = [[BasicInfo2TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier2];
            
        }
        NSString* val = @"";
        if(indexPath.row==0)
        {
            val = @"0";
        }
        else if(indexPath.row==1)
        {
            val = @"1";
        }
        else if(indexPath.row==2)
        {
            val = @"2";
        }
        else if(indexPath.row==3)
        {
            val = @"3";
        }
        else if(indexPath.row==4)
        {
            val = @"4";
        }
        //[cell.nameLabel setText: [self.dataArray1 objectAtIndex:indexPath.row]];
        [cell setContentWithModel:[self.dataArray1 objectAtIndex:indexPath.row] v:val];
        return cell;
        
    }
    else if(indexPath.section==2)
    {
        BasicInfo2TableViewCell *cell = (BasicInfo2TableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
        if(cell == nil)
        {
            
            cell = [[BasicInfo2TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier2];
            
        }
        NSString* val = @"";
        if(indexPath.row==0)
        {
            val = @"0";
        }
        else if(indexPath.row==1)
        {
            val = @"1";
        }
        else if(indexPath.row==2)
        {
            val = @"2";
        }
        else if(indexPath.row==3)
        {
            val = @"3";
        }
        else if(indexPath.row==4)
        {
            val = @"缺少图片";
        }
        [cell setContentWithModel:[self.dataArray2 objectAtIndex:indexPath.row] v:val];
        //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    }
    else
    {
        BasicInfo2TableViewCell *cell = (BasicInfo2TableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
        if(cell == nil)
        {
            
            cell = [[BasicInfo2TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier2];
            
        }
        NSString* val = @"";
        if(indexPath.row==0)
        {
            val = @"0";
        }

        [cell setContentWithModel:[self.dataArray3 objectAtIndex:indexPath.row] v:val];

        return cell;
    }
    
    // Configure the cell...
    
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
