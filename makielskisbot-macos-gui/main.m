//
//  main.m
//  makielskisbot-macos-gui
//
//  Created by Felix on 03/01/14.
//  Copyright (c) 2014 felix. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#include "c_bss.h"

int main(int argc, const char * argv[])
{
  void* server = create_server(argv[0]);
  start_server(server);
  return NSApplicationMain(argc, argv);
}
