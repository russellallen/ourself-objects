 ''
 '
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
[ 
"prefileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         ourself = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'ourself' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             bootstrap remove: 'tree' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'ourself' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules ourself.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames tree.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ourself' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ourself' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ourself' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ourself' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            resend.postFileIn.
            snapshotAction
              forCommandLineArg: '--LoadOwnerVNCPassword'
                       DoAction: (| parent* = lobby.
                                 value: i With: arg = (
                                   " Load vnc password set by host "
                                   users owner hashedVNCPassword: '/self/vnc/0.vncpasswd' asFileContents.
                                   i succ).
                               |).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ourself' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: InitializeToExpression: (\'30.21.0\')\x7fVisibility: public'
        
         revision <- '30.21.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ourself' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ourself' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: InitializeToExpression: (\'ourself\')'
        
         tree <- 'ourself'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'userProfile' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: InitializeToExpression: (\'\')'
        
         hashedVNCPassword <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'userProfile' -> 'parent' -> () From: ( | {
         'Comment: Within the ourself.io system, this returns the id of the world\x7fModuleInfo: Module: ourself InitialContents: FollowSlot\x7fVisibility: public'
        
         hostName = ( |
            | 
            '/ACCOUNT' asFileContents shrinkwrapped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'userProfile' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         password: p = ( |
            | hashedVNCPassword: os outputOfCommand: 'echo ', p, ' | vncpasswd -f' Delay: 100 IfFail: [|:e| error: e]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'worldMorph' -> () From: ( | {
         'Category: menu operations\x7fCategory: support for opening and closing windows\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         reportThatUser: u CanAccessDisplay: d = ( |
            | 
            userQuery report: u name, ' may now connect on https://desktop.ourself.io/', u hostName, '/', (d slice: 1 @ infinity), '/'. self).
        } | ) 



 '-- Side effects'

 globals modules ourself postFileIn
