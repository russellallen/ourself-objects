 '30.21.0'
 '
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> () From: ( | {
         'Category: checkpoints\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         checkpoint = ( |
            | 
            checkpointWithComment: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> () From: ( | {
         'Category: checkpoints\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         checkpointAskForComment = ( |
            | checkpointWithComment: userQuery askString: 'Comment for checkpoint' DefaultAnswer: '' IfCancel: [^ self]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> () From: ( | {
         'Category: checkpoints\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         checkpointWithComment: comment = ( |
             cd.
            | 
            cd: checkpoints checkpointDescription copyComment: comment.
            snapshotOptions fileName: '/self/', cd toFileName.
            writeSnapshotNoBackupIfSnapshotFails: [|:e| ^error: 'Snapshot failed: ', e].
            makeCurrent: cd.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> () From: ( | {
         'Category: checkpoints\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         checkpoints = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals memory checkpoints.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         all = ( |
            | 
            ((allFiles 
              mapBy: [|:fn| checkpointDescription copyFromFileName: fn IfInvalid: nil])
              filterBy: [|:cd| cd isNil not])
              sort).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         allFiles = ( |
            | (os outputOfCommand: 'ls /self' Timeout: 200 IfFail: [^ error: 'Cannot find /self']) splitOn: '\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         automatic = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals memory checkpoints automatic.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         abortHandlingProcess = ( |
            | running abortIfLive. running: deadProcess. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         automaticComment = '(current automatic checkpoint)'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         deadProcess = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> 'deadProcess' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals memory checkpoints automatic deadProcess.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> 'deadProcess' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         abortIfLive = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> 'deadProcess' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         isAlive = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         ensureRunning = ( |
            | 
            running isAlive ifFalse: [startRunning]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         handleLoop = ( |
            | 
            [process this sleep: waitTime. updateAutomaticCheckpoint] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         hup = ( |
            | abortHandlingProcess ensureRunning).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: ourself InitialContents: InitializeToExpression: (memory checkpoints automatic deadProcess)'
        
         running <- bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> 'deadProcess' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         startRunning = ( |
            | 
            running: (
              process copySend: (message copy receiver: self Selector: 'handleLoop')
                  CauseOfBirth: 'memory checkpoints automatic') resume. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         updateAutomaticCheckpoint = ( |
            | 
            memory checkpoints all sort 
               findFirst: [|:s| s comment = automaticComment]
               IfPresent: [|:cd |
                    memory checkpointWithComment: automaticComment.
                    cd deleteCheckpoint]
                IfAbsent: [memory checkpointWithComment: automaticComment].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'automatic' -> () From: ( | {
         'Category: settings\x7fModuleInfo: Module: ourself InitialContents: InitializeToExpression: (60000)'
        
         waitTime <- 60000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         checkpointDescription = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals memory checkpoints checkpointDescription.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         < cd = ( |
            | saveTime < cd saveTime).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         = cd = ( |
            | saveTime = cd saveTime).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: ourself InitialContents: InitializeToExpression: (\'\')'
        
         comment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         commentForFileName = ( |
            | '' = comment ifTrue: '' False: [ ' - ', escapedComment]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         copy = ( |
            | 
            copyComment: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         copyComment: comment = ( |
            | (resend.copy saveTime: time current) comment: comment).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         copyFromFileName: fn IfInvalid: blk = ( |
             c.
             s.
            | 
            s: fn splitOn: ' - '.
            (s size < 2) || (s size > 3) ifTrue: [^ blk value].
            'snapshot' != s first        ifTrue: [^ blk value].

            c: copy.
                                 c saveTime: readTime: (s at: 1) IfInvalid: [^ blk value].
            (s size = 3) ifTrue: [c comment: unescape: (s at: 2) IfInvalid: [^ blk value]].
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         deleteCheckpoint = ( |
            | os unlink: '/self/', toFileName IfFail: [^ error: 'Could not delete checkpoint']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         escapedComment = ( |
            | 
            (comment asVector mapBy: [|:c| c isLetter || (c = ' ') ifTrue: c False: '%', (c asByte printStringBase: 16 PadWith: '0' ToSize: 2)]) joinUsing: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         hasTimeStamp: s = ( |
            | timeForFileName = s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         hash = ( |
            | saveTime hash).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         ordered* = bootstrap stub -> 'mixins' -> 'ordered' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         readTime: s IfInvalid: blk = ( |
             d.
             m.
             ms.
             t.
             y.
            | 
            s size = (4 + 2 + 2 + 8) ifFalse: [^ blk value].
            s do: [| :c | c isDigit ifFalse: [^ blk value]].
            y: s slice: 0 @ 4.
            m: s slice: 4 @ 6.
            d: s slice: 6 @ 8.
            ms: s slice: 8 @ 16.
            t: time copyYear: y asInteger
                     Month: m asInteger
                      Date: d asInteger
                     Hours: 0
                   Minutes: 0
                   Seconds: 0. 
            t: t addMsec: ms asInteger.
            t).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: actions\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         revertToCheckpoint = ( |
            | memory revert: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: ourself InitialContents: InitializeToExpression: (time origin)'
        
         saveTime <- time origin.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         timeForFileName = ( |
            | 
             saveTime yearGMT asString, 
            (saveTime monthGMT printStringPadWith0ToSize: 2), 
            (saveTime dateGMT printStringPadWith0ToSize: 2), 
            (saveTime msec printStringPadWith0ToSize: 8)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         toFileName = ( |
            | 
            'snapshot - ', timeForFileName, commentForFileName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> 'checkpointDescription' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         unescape: s IfInvalid: blk = ( |
             i <- 0.
             u <- ''.
            | 
            [ i < s size ] whileTrue: [| l |
              l: s at: i.
              l isLetter || (l = ' ')
                 ifTrue: [ u: u, l. i: i succ ]
                  False: [| n. v | '%' = l ifFalse: [ ^ blk value: ''].
                           (i + 3) > s size ifTrue: [^ blk value: ''].
                           n: s slice: (i + 1) @ (i + 3).
                           v: n hexAsIntegerIfFail: [^ blk value: ''].
                           u: u, ('' characterFor: v IfFail: [^ blk value: '']).
                           i: i + 3]].
            u).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot\x7fVisibility: public'
        
         contributeToBackgroundMenu: m = ( |
            | 
            m addButton: 
              ( ( ( ui2Button copy
                       scriptBlock: [memory checkpointAskForComment])
                       label:  'Checkpoint ...' )
              isAsynchronous: true )
            ToGroup: 'bottom'.

            m addButton: 
              ( ( ( ui2Button copy
                       scriptBlock: [event sourceHand attach: event sourceHand world outlinerForMirror: reflect: memory checkpoints] )
                       label:  'Manage checkpoints ...' )
              isAsynchronous: true )
            ToGroup: 'bottom'.

            m addButton: 
              ( ( ( ui2Button copy
                       scriptBlock: [memory sleepSelf] )
                       label:  'Sleep ...' )
              isAsynchronous: true )
            ToGroup: 'bottom'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         earliest = ( |
            | all min).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         mostRecent = ( |
            | all max).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> 'checkpoints' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> () From: ( | {
         'Category: checkpoints\x7fCategory: support\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         makeCurrent: cd = ( |
            | 
            os command: 'ln -s -f \'/self/', cd toFileName, '\' /self/snapshot'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> () From: ( | {
         'Category: checkpoints\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         restartSelf = ( |
            | 
            "Without daemon, restartSelf will be commiting patricide"
            os command: 'daemon -f /usr/local/bin/restartSelf').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> () From: ( | {
         'Category: checkpoints\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         revert: cd = ( |
            | makeCurrent: cd. restartSelf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> () From: ( | {
         'Category: checkpoints\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         sleepSelf = ( |
            | 
            userQuery reportAndContinue: 'Please use the OurSelf management console to sleep.'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'memory' -> () From: ( | {
         'Category: checkpoints\x7fCategory: support\x7fComment: Like default, but don\'t save .backup file\x7fModuleInfo: Module: ourself InitialContents: FollowSlot\x7fVisibility: public'
        
         writeSnapshotNoBackupIfSnapshotFails: snapFailBlock = ( |
             ms.
             saveCode.
             snapSpaceSizes.
             undoBlock.
            | 
            "Save code only if asked to and the first old space segment is the only
             non-empty one."
            ms: memoryState copy.
            saveCode:     snapshotOptions saveObjectCode
                       && [ms numNonEmptyOldSpaceSegments = 1]
                       && [((ms old first at: 0) + (ms old first at: 1)) > 0].

            "Calculate startup space sizes for the snapshot."
            snapSpaceSizes: snapshotOptions spaceSizes copy.
            snapSpaceSizes old_size: ms used + (minLowSpaceThresholdInVM * 2).

            scavenge. "bug work-around, eden size too small"

            _MemoryWriteSnapshot: snapshotOptions fileName
                        Compress: snapshotOptions compressionFilters
                           Sizes: snapSpaceSizes
                        SaveCode: saveCode
                          IfFail: [|:e|
              undoBlock value.
              ^snapFailBlock value: e
            ].
            programmingLog writeSnapshot: snapshotOptions fileName.
            self).
        } | ) 

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
            worldMorph addBackgroundMenuContributor: memory checkpoints.
            snapshotAction addSchedulerInitialMessage: (
              message copy receiver: memory checkpoints automatic Selector: 'hup').
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'users' -> 'owner' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         hashedVNCPassword = ( |
            | 
            '/usr/local/ourselfvnc/0.vncpasswd' asFileContents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> () From: ( | {
         'Category: checkpointing\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         checkpoints = bootstrap setObjectAnnotationOf: bootstrap stub -> 'shell' -> 'shortcuts' -> 'checkpoints' -> () From: ( |
             {} = 'ModuleInfo: Creator: shell shortcuts checkpoints.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> 'checkpoints' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         all = ( |
            | 
            memory checkpoints all do: [|:cd| 
              (cd timeForFileName, '    ', cd comment) printLine]. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> 'checkpoints' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         delete: timeStamp = ( |
            | 
            memory checkpoints all do: [|:cd| 
              (cd hasTimeStamp: timeStamp) ifTrue: [cd deleteCheckpoint]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> 'checkpoints' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         new: s = ( |
            | memory checkpointWithComment: s. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> 'checkpoints' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> 'checkpoints' -> () From: ( | {
         'ModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         revert: timeStamp = ( |
            | memory checkpoints all do: [|:cd| 
              (cd hasTimeStamp: timeStamp) ifTrue: [cd revertToCheckpoint]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> () From: ( | {
         'Category: background menu\x7fModuleInfo: Module: ourself InitialContents: FollowSlot\x7fVisibility: public'
        
         contributeToBackgroundMenu: m = ( |
            | 
            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [event sourceHand attach:
                                   selfObjectModel newOutlinerFor: (reflect: shell copy)
                                                          InWorld: event sourceHand world] )
                   label: 'New shell' )
            ToGroup: 'top'.

            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [event sourceHand attach:
                                   selfObjectModel newOutlinerFor: (reflect: ())
                                                          InWorld: event sourceHand world] )
                   label: 'New Object' )
            ToGroup: 'top'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> () From: ( | {
         'Category: checkpointing\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         sleep = ( |
            | memory sleepSelf. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'handMorph' -> () From: ( | {
         'Category: name and other userInfo issues\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         informSystemAboutPassword = ( |
            | 
            "Remove initiall ':' character"
            ('/usr/local/ourselfvnc/',
               winCanvasForHand display originalName copyWithoutFirst,
            '.vncpasswd') setFileContentsTo: userInfo hashedVNCPassword.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'worldMorph' -> () From: ( | {
         'Category: background-menu building\x7fModuleInfo: Module: ourself InitialContents: FollowSlot\x7fVisibility: public'
        
         contributeToBackgroundMenu: m = ( |
            | 
            m addButton: ( (ui2Button copy scriptBlock: [event sourceHand attach: event sourceHand world outlinerForMirror: reflect: globals]) 
                                                 label: 'Globals' )
                ToGroup: 'usefulObjects'.
            m addButton: ( (ui2Button copy scriptBlock: [target toggleSpy]) 
                                                 label: 'Toggle Spy' )
                ToGroup: 'builtInMorphs'.
            m addButton: ( ( ui2Button copy scriptBlock: [target collapseAllOutliners: event] ) 
                                                  label: 'Collapse All' )
                ToGroup: 'worldManagement'.

            m addButton: ( ( ui2Button copy scriptBlock: [target cleanUp: event] ) 
                                                  label: 'Clean Up' )
                ToGroup: 'worldManagement'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'worldMorph' -> () From: ( | {
         'Category: menu operations\x7fCategory: support for opening and closing windows\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         guessServerName = '{server}.ourself.io'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'worldMorph' -> () From: ( | {
         'Category: menu operations\x7fCategory: support for opening and closing windows\x7fModuleInfo: Module: ourself InitialContents: FollowSlot'
        
         reportThatUser: u CanAccessDisplay: d = ( |
            | 
            userQuery report: u name, ' may now connect on https://', guessServerName, '/', u hostName, '/', (d slice: 1 @ infinity), '/'. self).
        } | ) 



 '-- Side effects'

 globals modules ourself postFileIn
