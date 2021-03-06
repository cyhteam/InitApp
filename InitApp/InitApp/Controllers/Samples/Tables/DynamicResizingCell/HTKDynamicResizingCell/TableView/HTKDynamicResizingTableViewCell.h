//
//  HTKDynamicResizingTableViewCell.h
//  HTKDynamicResizingCell
//
//  Created by Henry T Kirk on 10/31/14.
//
//  Copyright (c) 2014 Henry T. Kirk (http://www.henrytkirk.info)
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.


#import <UIKit/UIKit.h>
#import "HTKDynamicResizingCellProtocol.h"

/**
 * Class that implements Dynamic resizing protocol. Subclass this
 * to work with auto resizing of cells.
 */
@interface HTKDynamicResizingTableViewCell : UITableViewCell <HTKDynamicResizingCellProtocol>

@end

// Copyright belongs to original author
// http://code4app.net (en) http://code4app.com (cn)
// From the most professional code share website: Code4App.net 
