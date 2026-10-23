.class public final Lek3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lqp3;

.field public b:Lhk3;

.field public c:Lio3;

.field public final d:Lcd;

.field public e:Z


# direct methods
.method public constructor <init>(Lqp3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lek3;->a:Lqp3;

    .line 5
    .line 6
    new-instance p1, Lcd;

    .line 7
    .line 8
    const/4 v0, 0x7

    .line 9
    invoke-direct {p1, v0}, Lcd;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lek3;->d:Lcd;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lbo3;Lbk3;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lbo3;->f:Lxp1;

    .line 2
    iget-object v4, v1, Lbo3;->c:Lkj3;

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    xor-int/lit8 v8, v7, 0x1

    .line 3
    iget-object v9, v1, Lbo3;->h:Ljava/util/List;

    .line 4
    invoke-static {v9}, Lji8;->r(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x1

    .line 5
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v8, v11}, [Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v8}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_4

    .line 7
    :cond_3
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x0

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_4

    add-int/lit8 v11, v11, 0x1

    if-ltz v11, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {}, Lfl1;->E0()V

    throw v12

    :cond_6
    :goto_4
    const/16 v8, 0x64

    mul-int/2addr v11, v8

    .line 8
    const-string v13, ": "

    iget-object v15, v0, Lek3;->d:Lcd;

    move/from16 v16, v8

    iget-object v8, v0, Lek3;->a:Lqp3;

    if-nez v7, :cond_38

    .line 9
    new-instance v14, Lhk3;

    invoke-direct {v14, v1, v8}, Lhk3;-><init>(Lbo3;Lqp3;)V

    .line 10
    iput-object v14, v0, Lek3;->b:Lhk3;

    move-object/from16 v18, v12

    .line 11
    new-instance v12, Lck3;

    invoke-direct {v12, v11, v2}, Lck3;-><init>(ILbk3;)V

    .line 12
    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "Started backup: "

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v14, Lhk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "FolderBackupTask"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Props="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v20, "FolderBackupTask"

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v27, v4

    .line 15
    iget-object v4, v14, Lhk3;->b:Lgk3;

    move/from16 v28, v7

    iget-object v7, v4, Lgk3;->b:Ljava/lang/String;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v7, 0x1

    :goto_6
    if-eqz v7, :cond_c

    .line 16
    iget-object v7, v4, Lgk3;->b:Ljava/lang/String;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v7, 0x1

    :goto_8
    if-nez v7, :cond_b

    .line 17
    iget-object v7, v4, Lgk3;->b:Ljava/lang/String;

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_c

    .line 18
    :cond_b
    iget-boolean v7, v14, Lhk3;->c:Z

    if-eqz v7, :cond_d

    :cond_c
    move/from16 v29, v10

    move/from16 v19, v11

    move-object/from16 v37, v15

    goto/16 :goto_23

    .line 19
    :cond_d
    iget-object v7, v8, Lpw6;->i:Lex6;

    .line 20
    sget-object v14, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v14

    move/from16 v29, v10

    const v10, 0x7f130086

    invoke-virtual {v14, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lex6;->k(Ljava/lang/Object;)V

    .line 21
    iget-object v7, v1, Lbo3;->g:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-static {v10, v14}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_35

    .line 23
    iget-object v10, v1, Lbo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 24
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    move-result v14

    if-eqz v14, :cond_34

    .line 25
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_33

    .line 26
    new-instance v14, Lq63;

    move-object/from16 v20, v7

    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    invoke-direct {v14, v7, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v14}, Lq63;->j()Z

    move-result v2

    if-nez v2, :cond_e

    .line 28
    const-string v2, "Source folder not found at "

    .line 29
    invoke-static {v14, v2}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x4

    const/16 v24, 0x0

    .line 30
    const-string v20, "FolderBackupHelper"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    move-object/from16 v2, v21

    .line 31
    new-instance v3, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;

    invoke-direct {v3, v2}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;-><init>(Ljava/lang/String;)V

    move-wide/from16 v39, v5

    move/from16 v19, v11

    move-object/from16 v37, v15

    goto/16 :goto_20

    .line 32
    :cond_e
    new-instance v2, Ld76;

    const/16 v7, 0x16

    invoke-direct {v2, v10, v7}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 33
    new-instance v7, Lgv7;

    invoke-direct {v7, v2}, Lgv7;-><init>(Lbt3;)V

    .line 34
    new-instance v2, Lkf;

    const/16 v14, 0x1b

    invoke-direct {v2, v7, v14}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 35
    new-instance v14, Lgv7;

    invoke-direct {v14, v2}, Lgv7;-><init>(Lbt3;)V

    .line 36
    sget-object v2, Lq05;->DEVICE:Lq05;

    invoke-interface {v9, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v19, v2

    if-eqz v2, :cond_f

    .line 37
    sget-object v2, Lq05;->CLOUD:Lq05;

    invoke-interface {v9, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 38
    invoke-virtual {v14}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    .line 39
    :goto_9
    invoke-static {v9}, Lji8;->t(Ljava/util/Collection;)Z

    move-result v21

    if-nez v21, :cond_11

    move/from16 v21, v2

    .line 40
    sget-object v2, Lq05;->CLOUD:Lq05;

    invoke-interface {v9, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 41
    invoke-virtual {v14}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    goto :goto_b

    :cond_11
    move/from16 v21, v2

    :goto_a
    const/4 v2, 0x1

    .line 42
    :goto_b
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    filled-new-array {v9, v14}, [Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 43
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    const/4 v14, 0x0

    goto :goto_d

    .line 44
    :cond_12
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v14, 0x0

    :cond_13
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_13

    add-int/lit8 v14, v14, 0x1

    if-ltz v14, :cond_14

    goto :goto_c

    :cond_14
    invoke-static {}, Lfl1;->E0()V

    throw v18

    :cond_15
    :goto_d
    mul-int/lit8 v14, v14, 0x64

    .line 45
    new-instance v9, Lyj3;

    invoke-direct {v9, v14, v12}, Lyj3;-><init>(ILck3;)V

    .line 46
    const-string v14, "Backup result: "

    move/from16 v22, v2

    const-string v2, " backup for \'"

    const-string v23, "Updating"

    const-string v24, "Creating"

    move-object/from16 v30, v7

    const-string v7, "\'"

    if-eqz v19, :cond_1f

    .line 47
    sget-object v31, Lvr6;->INSTANCE:Lvr6;

    move/from16 v19, v11

    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    const-string v0, "Preparing local backup for \'"

    .line 48
    invoke-static {v0, v11, v7}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x4

    const/16 v36, 0x0

    .line 49
    const-string v32, "prepareLocalBackup"

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    move-object/from16 v37, v15

    const/4 v0, 0x1

    const/4 v11, 0x0

    .line 50
    invoke-static {v10, v11, v0}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    move-result-object v15

    .line 51
    new-instance v0, Lwj3;

    invoke-direct {v0, v8, v15, v9}, Lwj3;-><init>(Lqp3;Lkj3;Lmt3;)V

    .line 52
    invoke-virtual/range {v20 .. v20}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->isSingleBackup()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-virtual {v15}, Lkj3;->f()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 53
    invoke-virtual {v15}, Lkj3;->a()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_17

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_16

    goto :goto_e

    :cond_16
    const/16 v35, 0x4

    const/16 v36, 0x0

    .line 54
    const-string v33, "Backup strategy is set to \'Single\' but existing backup has incremental backups"

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 55
    const-string v33, "Deleting entire backup to create a fresh Single backup"

    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    const/4 v11, 0x0

    .line 56
    invoke-static {v10, v11}, Lal3;->b(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Z)V

    goto :goto_f

    .line 57
    :cond_17
    :goto_e
    invoke-virtual {v15}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    move-result-object v11

    .line 58
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    move-result-object v11

    invoke-virtual {v0, v11}, Lwj3;->a(Lq63;)Lvj3;

    move-result-object v11

    .line 59
    iget-object v11, v11, Lvj3;->a:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 60
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_18

    const/16 v35, 0x4

    const/16 v36, 0x0

    .line 61
    const-string v33, "Changes detected since last base backup"

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 62
    const-string v33, "Deleting base backup to create a fresh Single backup"

    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    const/4 v11, 0x0

    .line 63
    invoke-static {v10, v11}, Lal3;->b(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Z)V

    goto :goto_f

    :cond_18
    const/16 v35, 0x4

    const/16 v36, 0x0

    .line 64
    const-string v33, "No changes detected since last base backup"

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 65
    new-instance v0, Lzj3;

    sget-object v11, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$NoChange;->INSTANCE:Lorg/swiftapps/swiftbackup/folders/data/BackupResult$NoChange;

    invoke-direct {v0, v15, v11}, Lzj3;-><init>(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/BackupResult;)V

    move-wide/from16 v39, v5

    goto :goto_13

    .line 66
    :cond_19
    :goto_f
    invoke-virtual {v15}, Lkj3;->f()Z

    move-result v11

    move/from16 v38, v11

    if-nez v11, :cond_1a

    move-object/from16 v11, v24

    :goto_10
    move-wide/from16 v39, v5

    goto :goto_11

    :cond_1a
    move-object/from16 v11, v23

    goto :goto_10

    .line 67
    :goto_11
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-static {v11, v2, v5, v7}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x4

    const/16 v36, 0x0

    const/16 v34, 0x0

    .line 69
    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    if-nez v38, :cond_1b

    .line 70
    invoke-static {v0, v3}, Lwj3;->b(Lwj3;Lxp1;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult;

    move-result-object v0

    goto :goto_12

    :cond_1b
    const/4 v5, 0x5

    move-object/from16 v6, v18

    .line 71
    invoke-static {v0, v6, v3, v5}, Lwj3;->d(Lwj3;Lq63;Lxp1;I)Lorg/swiftapps/swiftbackup/folders/data/BackupResult;

    move-result-object v0

    .line 72
    :goto_12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 73
    invoke-static {v15, v10}, Lak3;->a(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 74
    new-instance v0, Lzj3;

    invoke-direct {v0, v15, v5}, Lzj3;-><init>(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/BackupResult;)V

    goto :goto_13

    .line 75
    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x4

    const/16 v36, 0x0

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 76
    new-instance v5, Lzj3;

    invoke-direct {v5, v15, v0}, Lzj3;-><init>(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/BackupResult;)V

    move-object v0, v5

    .line 77
    :goto_13
    iget-object v5, v0, Lzj3;->b:Lorg/swiftapps/swiftbackup/folders/data/BackupResult;

    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_1d

    :goto_14
    move-object v3, v5

    goto/16 :goto_20

    :cond_1d
    if-eqz v21, :cond_1e

    .line 78
    iget-object v0, v0, Lzj3;->a:Lkj3;

    .line 79
    iput-object v0, v1, Lbo3;->d:Lkj3;

    goto :goto_14

    :cond_1e
    if-nez v22, :cond_20

    goto :goto_14

    :cond_1f
    move-wide/from16 v39, v5

    move/from16 v19, v11

    move-object/from16 v37, v15

    :cond_20
    if-eqz v22, :cond_32

    .line 80
    invoke-virtual/range {v30 .. v30}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 81
    sget-object v30, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Preparing cloud backup for \'"

    .line 82
    invoke-static {v6, v5, v7}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x4

    const/16 v35, 0x0

    .line 83
    const-string v31, "prepareCloudBackup"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    if-eqz v0, :cond_21

    .line 84
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasBackups()Z

    move-result v5

    if-eqz v5, :cond_21

    :goto_15
    const/4 v5, 0x1

    goto :goto_16

    :cond_21
    const/4 v0, 0x0

    goto :goto_15

    .line 85
    :goto_16
    invoke-static {v10, v5, v5}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    move-result-object v6

    .line 86
    new-instance v11, Lwj3;

    invoke-direct {v11, v8, v6, v9}, Lwj3;-><init>(Lqp3;Lkj3;Lmt3;)V

    .line 87
    invoke-virtual/range {v20 .. v20}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->isSingleBackup()Z

    move-result v9

    if-eqz v9, :cond_26

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasBackups()Z

    move-result v9

    if-ne v9, v5, :cond_26

    .line 88
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackups()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    goto :goto_17

    :cond_22
    const/4 v5, 0x0

    :goto_17
    if-eqz v5, :cond_24

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_19

    :cond_23
    const/16 v34, 0x4

    const/16 v35, 0x0

    .line 89
    const-string v32, "Backup strategy is set to \'Single\' but existing backup has incremental backups"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 90
    const-string v32, "Deleting entire backup to create a fresh Single backup"

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 91
    invoke-static {v0}, Lal3;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V

    :goto_18
    const/4 v0, 0x0

    goto :goto_1a

    .line 92
    :cond_24
    :goto_19
    invoke-static {v0}, Lsk3;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)Lq63;

    move-result-object v5

    .line 93
    invoke-virtual {v11, v5}, Lwj3;->a(Lq63;)Lvj3;

    move-result-object v5

    .line 94
    iget-object v5, v5, Lvj3;->a:Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 95
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_25

    const/16 v34, 0x4

    const/16 v35, 0x0

    .line 96
    const-string v32, "Changes detected since last base backup"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 97
    const-string v32, "Deleting base backup to create a fresh Single backup"

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 98
    invoke-static {v0}, Lal3;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V

    goto :goto_18

    :cond_25
    const/16 v34, 0x4

    const/16 v35, 0x0

    .line 99
    const-string v32, "No changes detected since last base backup"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 100
    new-instance v0, Lzj3;

    sget-object v2, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$NoChange;->INSTANCE:Lorg/swiftapps/swiftbackup/folders/data/BackupResult$NoChange;

    invoke-direct {v0, v6, v2}, Lzj3;-><init>(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/BackupResult;)V

    goto/16 :goto_1f

    :cond_26
    :goto_1a
    if-eqz v0, :cond_28

    .line 101
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasBackups()Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_1b

    :cond_27
    const/4 v5, 0x0

    goto :goto_1c

    :cond_28
    :goto_1b
    const/4 v5, 0x1

    :goto_1c
    if-eqz v5, :cond_29

    move-object/from16 v9, v24

    goto :goto_1d

    :cond_29
    move-object/from16 v9, v23

    .line 102
    :goto_1d
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    .line 103
    invoke-static {v9, v2, v15, v7}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v33, 0x0

    .line 104
    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    if-eqz v5, :cond_2a

    .line 105
    invoke-static {v11, v3}, Lwj3;->b(Lwj3;Lxp1;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult;

    move-result-object v0

    goto :goto_1e

    .line 106
    :cond_2a
    invoke-static {v0}, Lsk3;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)Lq63;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/4 v2, 0x4

    .line 107
    invoke-static {v11, v0, v3, v2}, Lwj3;->d(Lwj3;Lq63;Lxp1;I)Lorg/swiftapps/swiftbackup/folders/data/BackupResult;

    move-result-object v0

    goto :goto_1e

    .line 108
    :cond_2b
    new-instance v0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;

    const-string v2, "Unable to download latest manifest file from cloud"

    invoke-direct {v0, v2}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;-><init>(Ljava/lang/String;)V

    .line 109
    :goto_1e
    instance-of v2, v0, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;

    if-eqz v2, :cond_2c

    .line 110
    invoke-static {v6, v10}, Lak3;->a(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 111
    new-instance v0, Lzj3;

    invoke-direct {v0, v6, v2}, Lzj3;-><init>(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/BackupResult;)V

    goto :goto_1f

    .line 112
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 113
    new-instance v2, Lzj3;

    invoke-direct {v2, v6, v0}, Lzj3;-><init>(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/BackupResult;)V

    move-object v0, v2

    .line 114
    :goto_1f
    iget-object v3, v0, Lzj3;->b:Lorg/swiftapps/swiftbackup/folders/data/BackupResult;

    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_20

    .line 115
    :cond_2d
    instance-of v2, v3, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Success;

    if-eqz v2, :cond_2e

    .line 116
    iget-object v0, v0, Lzj3;->a:Lkj3;

    .line 117
    iput-object v0, v1, Lbo3;->d:Lkj3;

    .line 118
    :cond_2e
    :goto_20
    instance-of v0, v3, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;

    if-eqz v0, :cond_31

    .line 119
    check-cast v3, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;

    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/BackupResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    iget-object v2, v4, Lgk3;->b:Ljava/lang/String;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_21

    .line 122
    :cond_2f
    iget-object v2, v4, Lgk3;->b:Ljava/lang/String;

    const-string v3, ", "

    .line 123
    invoke-static {v2, v3, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iput-object v0, v4, Lgk3;->b:Ljava/lang/String;

    goto :goto_22

    .line 125
    :cond_30
    :goto_21
    iget-object v2, v4, Lgk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v2, v13, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iput-object v0, v4, Lgk3;->b:Ljava/lang/String;

    .line 128
    :cond_31
    :goto_22
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lck3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v30, Lvr6;->INSTANCE:Lvr6;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide/from16 v5, v39

    invoke-static {v5, v6, v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->u(JJ)Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x4

    const/16 v35, 0x0

    const-string v31, "FolderBackupTask"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto :goto_23

    .line 130
    :cond_32
    const-string v0, "Invalid state reached. At this point cloud prep should be enabled"

    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_33
    const-string v0, "Invalid locations: "

    .line 132
    invoke-static {v0, v9}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    return-void

    .line 134
    :cond_34
    const-string v0, "Invalid folder item: "

    invoke-static {v10, v0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_35
    invoke-static {}, Ld6;->o()V

    return-void

    .line 136
    :goto_23
    iget-object v0, v4, Lgk3;->b:Ljava/lang/String;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_36

    goto :goto_24

    :cond_36
    const/4 v0, 0x0

    goto :goto_25

    :cond_37
    :goto_24
    const/4 v0, 0x1

    :goto_25
    move-object/from16 v2, v37

    if-nez v0, :cond_39

    .line 137
    iget-object v0, v2, Lcd;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_38
    move-object/from16 v27, v4

    move/from16 v28, v7

    move/from16 v29, v10

    move/from16 v19, v11

    move-object v2, v15

    .line 139
    :cond_39
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lek3;->b()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_5b

    :cond_3a
    if-nez v28, :cond_3b

    move/from16 v0, v16

    goto :goto_27

    :cond_3b
    const/4 v0, 0x0

    .line 140
    :goto_27
    iget-object v3, v1, Lbo3;->d:Lkj3;

    if-nez v3, :cond_3c

    move-object/from16 v4, v27

    goto :goto_28

    :cond_3c
    move-object v4, v3

    .line 141
    :goto_28
    iput-object v4, v1, Lbo3;->d:Lkj3;

    if-eqz v29, :cond_8e

    if-eqz v4, :cond_8e

    .line 142
    new-instance v3, Lio3;

    invoke-direct {v3, v1, v8}, Lio3;-><init>(Lbo3;Lqp3;)V

    move-object/from16 v1, p0

    .line 143
    iput-object v3, v1, Lek3;->c:Lio3;

    .line 144
    new-instance v1, Ldk3;

    move-object/from16 v4, p2

    move/from16 v11, v19

    invoke-direct {v1, v0, v4, v11}, Ldk3;-><init>(ILbk3;I)V

    .line 145
    iget-object v0, v3, Lio3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    move-result-object v4

    .line 146
    sget-object v5, Ltb1;->a:Ltb1;

    invoke-static {}, Lqb1;->f()Ldd1;

    move-result-object v5

    invoke-virtual {v5}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Processing upload for folder: "

    const-string v7, ". Cloud: "

    .line 147
    invoke-static {v6, v4, v7, v5}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 148
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "FolderUploadTask"

    const/16 v22, 0x0

    move-object/from16 v19, v4

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 149
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasAnyBackup()Z

    move-result v5

    iget-object v10, v3, Lio3;->j:Lho3;

    if-nez v5, :cond_3d

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 150
    const-string v5, "FolderUploadTask"

    const-string v6, "Local metadata has no backups, skipping upload"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    :goto_29
    move-object v12, v10

    goto/16 :goto_59

    .line 151
    :cond_3d
    iput-object v1, v3, Lio3;->k:Ldk3;

    .line 152
    sget-object v1, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    iget-object v11, v3, Lio3;->b:Lqp3;

    iget-object v12, v3, Lio3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    if-nez v1, :cond_3e

    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->z()Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 153
    const-string v5, "FolderUploadTask"

    const-string v6, "Upload requires WiFi, but WiFi isn\'t available. Wait for it in case of network switch."

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 154
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->a()Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 155
    const-string v5, "FolderUploadTask"

    const-string v6, "Still no WiFi, skipping upload."

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 156
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13018d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iput-object v0, v10, Lho3;->a:Ljava/lang/String;

    :goto_2a
    const/4 v6, 0x0

    goto/16 :goto_58

    :cond_3e
    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 158
    const-string v5, "FolderUploadTask"

    const-string v6, "Checking cloud for current sync status"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 159
    sget-object v1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->Companion:Lum3;

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    invoke-static {}, Lre3;->h()Lzc2;

    move-result-object v1

    invoke-virtual {v1, v5}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    move-result-object v1

    const/4 v5, 0x1

    .line 162
    invoke-static {v1, v5}, Lcf3;->a(Lzc2;Z)Ll73;

    move-result-object v1

    .line 163
    instance-of v6, v1, Lwe3;

    if-eqz v6, :cond_3f

    new-instance v6, Lhg7;

    .line 164
    check-cast v1, Lwe3;

    .line 165
    iget-object v1, v1, Lwe3;->n:Lwc2;

    const/4 v7, 0x0

    .line 166
    invoke-direct {v6, v7, v1, v5}, Lhg7;-><init>(Ljava/lang/Object;Lwc2;I)V

    goto :goto_2b

    :cond_3f
    const/4 v7, 0x0

    .line 167
    instance-of v5, v1, Lxe3;

    if-eqz v5, :cond_8b

    new-instance v6, Lhg7;

    .line 168
    check-cast v1, Lxe3;

    .line 169
    iget-object v1, v1, Lxe3;->n:Leb2;

    .line 170
    const-class v5, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    invoke-virtual {v1, v5}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x2

    .line 171
    invoke-direct {v6, v1, v7, v5}, Lhg7;-><init>(Ljava/lang/Object;Lwc2;I)V

    .line 172
    :goto_2b
    iget-boolean v1, v6, Lhg7;->c:Z

    if-nez v1, :cond_40

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to read current cloud status from firebase for this upload: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lhg7;->b:Lwc2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 174
    const-string v5, "FolderUploadTask"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 175
    iput-object v6, v10, Lho3;->a:Ljava/lang/String;

    goto :goto_2a

    .line 176
    :cond_40
    iget-object v1, v6, Lhg7;->a:Ljava/lang/Object;

    .line 177
    check-cast v1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 178
    iget-object v4, v3, Lio3;->a:Lbo3;

    iget-object v4, v4, Lbo3;->c:Lkj3;

    iget-object v7, v3, Lio3;->d:Lkj3;

    if-eqz v4, :cond_47

    if-eqz v1, :cond_47

    .line 179
    invoke-virtual {v7}, Lkj3;->f()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 180
    invoke-virtual {v7}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    move-result-object v4

    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getSize()J

    move-result-wide v8

    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getBaseBackupSize()J

    move-result-wide v12

    cmp-long v4, v8, v12

    if-nez v4, :cond_41

    const/4 v4, 0x1

    goto :goto_2c

    :cond_41
    const/4 v4, 0x0

    .line 181
    :goto_2c
    invoke-virtual {v7}, Lkj3;->a()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_43

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v12, 0x0

    :goto_2d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_42

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getSize()J

    move-result-wide v14

    add-long/2addr v12, v14

    goto :goto_2d

    :cond_42
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2e

    :cond_43
    const/4 v8, 0x0

    :goto_2e
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v8

    .line 182
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackupsSize()J

    move-result-wide v12

    cmp-long v8, v8, v12

    if-nez v8, :cond_44

    const/4 v8, 0x1

    goto :goto_2f

    :cond_44
    const/4 v8, 0x0

    :goto_2f
    if-eqz v4, :cond_45

    if-eqz v8, :cond_45

    .line 183
    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "FolderUploadTask"

    const-string v21, "Existing cloud backup is same as current device backup, skipping upload"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto/16 :goto_2a

    .line 184
    :cond_45
    sget-object v27, Lvr6;->INSTANCE:Lvr6;

    const/16 v31, 0x4

    const/16 v32, 0x0

    const-string v28, "FolderUploadTask"

    const-string v29, "User wants to sync existing local backup to cloud, Deleting existing cloud backup..."

    const/16 v30, 0x0

    invoke-static/range {v27 .. v32}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 185
    :try_start_0
    invoke-static {v1}, Lal3;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v31, 0x4

    const/16 v32, 0x0

    .line 186
    const-string v28, "FolderUploadTask"

    const-string v29, "Deleted existing cloud backup"

    const/16 v30, 0x0

    invoke-static/range {v27 .. v32}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    const/16 v19, 0x0

    goto :goto_31

    :catch_0
    move-exception v0

    move-object/from16 v36, v0

    .line 187
    sget-object v33, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error deleting existing cloud backup: "

    .line 188
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const/16 v38, 0x8

    const/16 v39, 0x0

    .line 189
    const-string v34, "FolderUploadTask"

    const/16 v37, 0x0

    invoke-static/range {v33 .. v39}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 190
    const-string v4, "FolderUploadTask"

    const-string v5, "Unable to delete existing cloud backup to sync device backup to cloud"

    const/4 v6, 0x0

    move-object/from16 v3, v33

    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 191
    iput-object v5, v10, Lho3;->a:Ljava/lang/String;

    goto/16 :goto_2a

    .line 192
    :cond_46
    const-string v0, "FolderBackup object has no backups: "

    invoke-static {v7, v0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_30
    const/4 v12, 0x0

    goto/16 :goto_59

    :cond_47
    move-object/from16 v19, v1

    :goto_31
    if-eqz v19, :cond_48

    .line 193
    invoke-virtual/range {v19 .. v19}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->isValid()Z

    :cond_48
    if-eqz v19, :cond_49

    const/16 v23, 0x6

    const/16 v24, 0x0

    .line 194
    iget-object v1, v3, Lio3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v1

    invoke-static/range {v19 .. v24}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/util/Map;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    move-result-object v1

    if-nez v1, :cond_4a

    :cond_49
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->copyWithNoBackups()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    move-result-object v1

    .line 195
    :cond_4a
    iput-object v1, v3, Lio3;->h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 196
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 197
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v8, v3, Lio3;->f:Lfo3;

    iget-object v9, v8, Lfo3;->a:Ljava/util/List;

    if-eqz v9, :cond_4b

    .line 199
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_4b
    iget-object v8, v8, Lfo3;->b:Ljava/util/List;

    if-eqz v8, :cond_4c

    .line 201
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 202
    :cond_4c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4d
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, " not implemented"

    const-string v12, "Cloud file type "

    if-eqz v8, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrf8;

    .line 203
    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    .line 204
    iget-object v13, v8, Lrf8;->h:Ljava/lang/String;

    iget-object v14, v8, Lrf8;->a:Lq63;

    iget v15, v8, Lrf8;->b:I

    const-wide/16 p0, 0x0

    .line 205
    const-string v5, "Checking upload for "

    .line 206
    invoke-static {v5, v13}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x4

    const/16 v24, 0x0

    .line 207
    const-string v20, "FolderUploadTask"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 208
    iget-object v5, v3, Lio3;->h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    if-nez v5, :cond_4e

    .line 209
    new-instance v5, Lea3;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v9}, Lea3;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_39

    :cond_4e
    packed-switch v15, :pswitch_data_0

    .line 210
    new-instance v0, Lio5;

    .line 211
    invoke-static {v15, v12, v9}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 213
    throw v0

    .line 214
    :pswitch_0
    invoke-static {v14}, Ljj3;->a(Lq63;)Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackups()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_4f

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    goto :goto_33

    :cond_4f
    const/4 v5, 0x0

    :goto_33
    const/16 v6, 0x21

    if-ne v15, v6, :cond_51

    if-eqz v5, :cond_50

    .line 216
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getManifestLink()Ljava/lang/String;

    move-result-object v6

    goto :goto_34

    :cond_50
    const/4 v6, 0x0

    goto :goto_34

    :cond_51
    if-eqz v5, :cond_50

    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getBackupLink()Ljava/lang/String;

    move-result-object v6

    :goto_34
    if-nez v5, :cond_52

    const/4 v5, 0x1

    goto :goto_38

    :cond_52
    const/4 v5, 0x0

    goto :goto_38

    .line 217
    :pswitch_1
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getBaseBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    move-result-object v6

    const/16 v9, 0x1f

    if-ne v15, v9, :cond_54

    if-eqz v6, :cond_53

    .line 218
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getManifestLink()Ljava/lang/String;

    move-result-object v9

    goto :goto_35

    :cond_53
    const/4 v9, 0x0

    goto :goto_35

    :cond_54
    if-eqz v6, :cond_53

    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getBackupLink()Ljava/lang/String;

    move-result-object v9

    .line 219
    :goto_35
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasBaseBackup()Z

    move-result v5

    if-nez v5, :cond_55

    :goto_36
    const/4 v5, 0x1

    goto :goto_37

    :cond_55
    if-eqz v6, :cond_59

    .line 220
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getBaseBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 221
    invoke-virtual {v5}, Lvm3;->getSize()J

    move-result-wide v12

    invoke-virtual {v6}, Lvm3;->getSize()J

    move-result-wide v5

    cmp-long v5, v12, v5

    if-eqz v5, :cond_56

    goto :goto_36

    :cond_56
    const/4 v5, 0x0

    :goto_37
    move-object v6, v9

    :goto_38
    xor-int/lit8 v9, v5, 0x1

    if-nez v5, :cond_57

    const/16 v23, 0x4

    const/16 v24, 0x0

    .line 222
    const-string v20, "FolderUploadTask"

    const-string v21, "Skipped uploading, already synced"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 223
    :cond_57
    new-instance v5, Lea3;

    invoke-direct {v5, v6, v9}, Lea3;-><init>(Ljava/lang/String;Z)V

    .line 224
    :goto_39
    iget-boolean v6, v5, Lea3;->a:Z

    if-nez v6, :cond_4d

    .line 225
    iget-object v5, v5, Lea3;->b:Ljava/lang/Comparable;

    check-cast v5, Ljava/lang/String;

    .line 226
    iput-object v5, v8, Lrf8;->f:Ljava/lang/String;

    .line 227
    invoke-virtual {v14}, Lq63;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_32

    .line 228
    :cond_58
    const-string v0, "Local base backup null!!"

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 229
    :cond_59
    const-string v0, "Synced base backup null!!"

    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_5a
    const-wide/16 p0, 0x0

    .line 230
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8a

    .line 231
    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v31, 0x0

    const/16 v32, 0x3f

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v27 .. v32}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Upload tasks: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "FolderUploadTask"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 232
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide/from16 v5, p0

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrf8;

    invoke-virtual {v8}, Lrf8;->a()J

    move-result-wide v13

    add-long/2addr v5, v13

    goto :goto_3a

    :cond_5b
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    cmp-long v5, v5, p0

    if-lez v5, :cond_5c

    goto :goto_3b

    :cond_5c
    const/4 v4, 0x0

    :goto_3b
    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_3c
    move-wide/from16 v37, v4

    goto :goto_3d

    :cond_5d
    const-wide/16 v4, 0x1

    goto :goto_3c

    .line 233
    :goto_3d
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 234
    new-instance v36, Lkh6;

    .line 235
    invoke-direct/range {v36 .. v36}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v39, Lkh6;

    .line 237
    invoke-direct/range {v39 .. v39}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v34, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 239
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 241
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v32, v8

    check-cast v32, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v33, v6

    check-cast v33, Lrf8;

    .line 242
    sget-object v6, Lzn4;->a:Lzn4;

    new-instance v30, Lrz;

    move-object/from16 v31, v3

    invoke-direct/range {v30 .. v39}, Lrz;-><init>(Lio3;Ljava/lang/String;Lrf8;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V

    move-object/from16 v8, v30

    move-object/from16 v6, v34

    .line 243
    new-instance v13, Lvn4;

    invoke-direct {v13, v8}, Lvn4;-><init>(Lbt3;)V

    .line 244
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_5e
    move-object/from16 v6, v34

    .line 245
    iget-object v5, v11, Lpw6;->i:Lex6;

    .line 246
    sget-object v8, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v8

    const v13, 0x7f13058e

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lex6;->k(Ljava/lang/Object;)V

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 248
    sget-object v5, Lzn4;->a:Lzn4;

    .line 249
    :try_start_1
    sget-object v5, Ld45;->b:Ld45;

    .line 250
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    move-result-object v5

    if-eqz v5, :cond_5f

    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3f

    :catch_1
    :cond_5f
    const/4 v5, 0x0

    .line 251
    :goto_3f
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 252
    const-string v5, "parallel_cloud_transfers"

    .line 253
    :try_start_2
    sget-object v8, Lcz4;->f:Landroid/content/SharedPreferences;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v15, 0x0

    if-eqz v8, :cond_60

    :try_start_3
    invoke-interface {v8, v5, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_40

    :cond_60
    const-string v5, "prefs"

    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    const/16 v18, 0x0

    throw v18
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_2
    const/4 v15, 0x0

    :catch_3
    move v5, v15

    :goto_40
    if-eqz v5, :cond_62

    const/4 v5, 0x1

    :goto_41
    const/4 v8, 0x4

    goto :goto_42

    :cond_61
    const/4 v15, 0x0

    :cond_62
    move v5, v15

    goto :goto_41

    .line 254
    :goto_42
    invoke-static {v8, v4, v5}, Lzn4;->a(ILjava/util/ArrayList;Z)Ljava/util/List;

    .line 255
    iget-boolean v5, v3, Lio3;->i:Z

    if-eqz v5, :cond_63

    .line 256
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    .line 257
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "FolderUploadTask"

    const-string v14, "Upload cancelled, deleting uploaded files from this attempt..."

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 258
    invoke-virtual {v3, v6}, Lio3;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    goto/16 :goto_56

    .line 259
    :cond_63
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-eq v4, v5, :cond_64

    .line 260
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    .line 261
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "FolderUploadTask"

    const-string v14, "asyncTasks.size != uploadResults.size, Deleting uploaded files..."

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 262
    invoke-virtual {v3, v6}, Lio3;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    goto/16 :goto_56

    .line 263
    :cond_64
    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "FolderUploadTask"

    const-string v21, "Upload complete. Assembling metadata details"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 264
    iget-object v4, v3, Lio3;->h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    if-eqz v4, :cond_65

    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackups()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 265
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_43

    :cond_65
    const/4 v5, 0x0

    .line 266
    :goto_43
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v22, v5

    const/16 v29, 0x0

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzf8;

    .line 267
    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    const-string v17, "Required value was null."

    if-eqz v16, :cond_73

    move-object/from16 v15, v16

    check-cast v15, Lrf8;

    .line 268
    iget-object v5, v5, Lzf8;->a:Ljava/lang/String;

    if-eqz v5, :cond_72

    .line 269
    iget v15, v15, Lrf8;->b:I

    packed-switch v15, :pswitch_data_1

    .line 270
    new-instance v0, Lio5;

    .line 271
    invoke-static {v15, v12, v9}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 273
    throw v0

    :pswitch_2
    move-object/from16 v20, v0

    move-object/from16 p0, v1

    move-object/from16 p1, v4

    goto/16 :goto_4a

    :pswitch_3
    if-nez v22, :cond_66

    .line 274
    new-instance v22, Ljava/util/LinkedHashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_66
    move-object/from16 v15, v22

    .line 275
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackups()Ljava/util/Map;

    move-result-object v16

    if-eqz v16, :cond_69

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    if-eqz v16, :cond_69

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_45
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_68

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v17

    check-cast v19, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    move-object/from16 v20, v0

    .line 276
    new-instance v0, Lq63;

    move-object/from16 p0, v1

    invoke-virtual/range {v19 .. v19}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getBackupLink()Ljava/lang/String;

    move-result-object v1

    move-object/from16 p1, v4

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lq63;->p()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    goto :goto_46

    :cond_67
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v0, v20

    goto :goto_45

    :cond_68
    move-object/from16 v20, v0

    move-object/from16 p0, v1

    move-object/from16 p1, v4

    const/16 v17, 0x0

    .line 278
    :goto_46
    move-object/from16 v0, v17

    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    move-object/from16 v30, v0

    goto :goto_47

    :cond_69
    move-object/from16 v20, v0

    move-object/from16 p0, v1

    move-object/from16 p1, v4

    const/16 v30, 0x0

    :goto_47
    if-eqz v30, :cond_6e

    .line 279
    new-instance v0, Lq63;

    invoke-virtual/range {v30 .. v30}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getManifestLink()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lq63;->p()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v6, v0}, Lx65;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzf8;

    .line 281
    iget-object v0, v0, Lzf8;->a:Ljava/lang/String;

    if-eqz v0, :cond_6d

    const/16 v38, 0x76

    const/16 v39, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v34, v0

    move-object/from16 v31, v5

    .line 282
    invoke-static/range {v30 .. v39}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    move-result-object v0

    .line 283
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 284
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6a

    goto :goto_48

    .line 285
    :cond_6a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 286
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 287
    sget-object v30, Lvr6;->INSTANCE:Lvr6;

    const/16 v34, 0x4

    const/16 v35, 0x0

    const-string v31, "FolderUploadTask"

    const-string v32, "Incremental backup possibly already exists in cloud??!!"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 288
    :cond_6c
    :goto_48
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v15

    goto :goto_4a

    .line 289
    :cond_6d
    const-string v0, "Manifest link seems to be null"

    .line 290
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 291
    :cond_6e
    const-string v0, "Unable to find uploaded file\'s Incremental backup in the local metadata"

    .line 292
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    goto/16 :goto_30

    :pswitch_4
    move-object/from16 v20, v0

    move-object/from16 p0, v1

    move-object/from16 p1, v4

    move-object/from16 v31, v5

    if-nez v29, :cond_6f

    .line 293
    invoke-virtual/range {v20 .. v20}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getBaseBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    move-result-object v29

    :cond_6f
    move-object/from16 v30, v29

    if-eqz v30, :cond_70

    const/16 v38, 0x77

    const/16 v39, 0x0

    move-object/from16 v34, v31

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v30 .. v39}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    move-result-object v0

    goto :goto_49

    :cond_70
    const/4 v0, 0x0

    :goto_49
    move-object/from16 v29, v0

    goto :goto_4a

    :pswitch_5
    move-object/from16 v20, v0

    move-object/from16 p0, v1

    move-object/from16 p1, v4

    move-object/from16 v31, v5

    if-nez v29, :cond_71

    .line 294
    invoke-virtual/range {v20 .. v20}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getBaseBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    move-result-object v29

    :cond_71
    move-object/from16 v30, v29

    if-eqz v30, :cond_70

    const/16 v38, 0x7e

    const/16 v39, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v30 .. v39}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    move-result-object v0

    goto :goto_49

    :goto_4a
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v0, v20

    const/4 v15, 0x0

    goto/16 :goto_44

    .line 295
    :cond_72
    invoke-static/range {v17 .. v17}, Lc6;->f(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 296
    :cond_73
    invoke-static/range {v17 .. v17}, Lc6;->f(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_74
    if-eqz v29, :cond_76

    .line 297
    iget-object v0, v3, Lio3;->h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    if-eqz v0, :cond_75

    const/16 v31, 0x5

    const/16 v32, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v32}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/util/Map;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    move-result-object v0

    goto :goto_4b

    :cond_75
    const/4 v0, 0x0

    :goto_4b
    iput-object v0, v3, Lio3;->h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    :cond_76
    if-eqz v22, :cond_79

    .line 298
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_4d

    .line 299
    :cond_77
    iget-object v0, v3, Lio3;->h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    if-eqz v0, :cond_78

    const/16 v23, 0x3

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v24}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/util/Map;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    move-result-object v0

    goto :goto_4c

    :cond_78
    const/4 v0, 0x0

    :goto_4c
    iput-object v0, v3, Lio3;->h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 300
    :cond_79
    :goto_4d
    iget-object v0, v3, Lio3;->h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasBackups()Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7a

    move v0, v4

    goto :goto_4f

    :cond_7a
    :goto_4e
    const/4 v0, 0x0

    goto :goto_4f

    :cond_7b
    const/4 v4, 0x1

    goto :goto_4e

    .line 301
    :goto_4f
    iget-object v1, v3, Lio3;->h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasValidCloudLinks()Z

    move-result v1

    if-ne v1, v4, :cond_7c

    move v5, v4

    goto :goto_50

    :cond_7c
    const/4 v5, 0x0

    :goto_50
    if-eqz v0, :cond_86

    if-nez v5, :cond_7d

    goto/16 :goto_55

    .line 302
    :cond_7d
    const-string v1, ". Error: "

    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "FolderUploadTask"

    const-string v21, "Uploading metadata"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    move-object/from16 v0, v19

    .line 303
    iget-object v4, v3, Lio3;->h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    if-eqz v4, :cond_85

    .line 304
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasBackups()Z

    move-result v5

    if-nez v5, :cond_7e

    .line 305
    const-string v1, "FolderMetadata has no backups! Not uploading to database."

    sget-object v4, Lvr6$a;->YELLOW:Lvr6$a;

    const-string v5, "FolderUploadTask"

    invoke-virtual {v0, v5, v1, v4}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    goto/16 :goto_54

    .line 306
    :cond_7e
    :try_start_4
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->writeToFirebaseNode()Laf3;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 307
    instance-of v8, v5, Lye3;

    if-eqz v8, :cond_7f

    .line 308
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    move-result-object v0

    check-cast v5, Lye3;

    .line 309
    iget-object v4, v5, Lye3;->b:Lwc2;

    .line 310
    iget-object v4, v4, Lwc2;->b:Ljava/lang/String;

    .line 311
    invoke-static {v0, v1, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    iput-object v0, v10, Lho3;->c:Ljava/lang/String;

    goto/16 :goto_54

    .line 313
    :cond_7f
    sget-object v1, Lze3;->b:Lze3;

    invoke-static {v5, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 314
    invoke-virtual {v7}, Lkj3;->g()Lq63;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 315
    invoke-virtual {v1}, Lq63;->k()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 316
    sget-object v3, Lsk3;->a:Lgv7;

    .line 317
    invoke-virtual {v1}, Lq63;->p()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Caching latest manifest file from cloud: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "FolderCloudManifestCache"

    const/16 v22, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 318
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasValidCloudLinks()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 319
    invoke-virtual {v1}, Lq63;->j()Z

    move-result v0

    if-nez v0, :cond_80

    .line 320
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Manifest file not found at "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "FolderCloudManifestCache"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto :goto_53

    .line 321
    :cond_80
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk3;->b(Ljava/lang/String;)Lq63;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lq63;->j()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-virtual {v0}, Lq63;->h()Z

    :goto_51
    const/4 v6, 0x0

    goto :goto_52

    :cond_81
    invoke-static {v0}, Lio4;->g(Lq63;)V

    goto :goto_51

    .line 323
    :goto_52
    invoke-virtual {v1, v0, v6}, Lq63;->d(Lq63;Lkl;)V

    goto :goto_53

    .line 324
    :cond_82
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderMetadata doesn\'t have valid cloud links: "

    .line 325
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_83
    move-object/from16 v19, v0

    .line 327
    :goto_53
    invoke-static {v13, v14}, Lorg/swiftapps/swiftbackup/common/Const;->v(J)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "FolderUploadTask"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto :goto_56

    .line 328
    :cond_84
    invoke-static {}, Lq;->j()V

    goto/16 :goto_30

    :catch_4
    move-exception v0

    move-object/from16 v28, v0

    .line 329
    sget-object v25, Lvr6;->INSTANCE:Lvr6;

    const/16 v30, 0x8

    const/16 v31, 0x0

    const-string v26, "FolderUploadTask"

    const-string v27, "Error uploading metadata"

    const/16 v29, 0x0

    invoke-static/range {v25 .. v31}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 330
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-static {v0, v1, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    iput-object v0, v10, Lho3;->c:Ljava/lang/String;

    .line 333
    :goto_54
    invoke-virtual {v3, v6}, Lio3;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_56

    .line 334
    :cond_85
    const-string v0, "Cloud metadata null!!"

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_86
    :goto_55
    if-nez v0, :cond_87

    .line 335
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "FolderUploadTask"

    const-string v14, "CloudMetadata doesn\'t have any backups! Cleaning recently uploaded files..."

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    :cond_87
    if-nez v5, :cond_88

    .line 336
    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "FolderUploadTask"

    const-string v21, "CloudMetadata doesn\'t have valid file links! Cleaning recently uploaded files..."

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 337
    :cond_88
    invoke-virtual {v3, v6}, Lio3;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    :cond_89
    :goto_56
    const/4 v6, 0x0

    goto :goto_57

    .line 338
    :cond_8a
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "FolderUploadTask"

    const-string v14, "Nothing to upload!"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto :goto_56

    .line 339
    :goto_57
    invoke-virtual {v11, v6}, Lpw6;->o(Ljava/lang/String;)V

    .line 340
    :goto_58
    invoke-virtual {v11, v6}, Lpw6;->o(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_8b
    move-object v6, v7

    .line 341
    invoke-static {}, Lq;->j()V

    move-object v12, v6

    .line 342
    :goto_59
    iget-object v0, v12, Lho3;->a:Ljava/lang/String;

    if-nez v0, :cond_8d

    .line 343
    iget-object v0, v12, Lho3;->c:Ljava/lang/String;

    if-eqz v0, :cond_8c

    goto :goto_5a

    :cond_8c
    return-void

    .line 344
    :cond_8d
    :goto_5a
    iget-object v0, v2, Lcd;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 345
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8e
    :goto_5b
    return-void

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lek3;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_8

    .line 5
    .line 6
    iget-object p0, p0, Lek3;->d:Lcd;

    .line 7
    .line 8
    iget-object v0, p0, Lcd;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lgk3;

    .line 37
    .line 38
    iget-object v3, v3, Lgk3;->b:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v3, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    move v3, v1

    .line 52
    :goto_1
    if-nez v3, :cond_1

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_4
    :goto_2
    iget-object p0, p0, Lcd;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Ljava/util/ArrayList;

    .line 58
    .line 59
    if-eqz p0, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lho3;

    .line 83
    .line 84
    iget-boolean v3, v0, Lho3;->b:Z

    .line 85
    .line 86
    if-nez v3, :cond_8

    .line 87
    .line 88
    iget-object v0, v0, Lho3;->c:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_8

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_7
    :goto_4
    return v2

    .line 100
    :cond_8
    :goto_5
    return v1
.end method
