.class public final synthetic Lg52;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lg52;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lg52;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lg52;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lg52;->a:I

    const/4 v2, 0x6

    const/16 v3, 0x8

    const-string v4, ""

    const/4 v5, 0x0

    sget-object v6, Lbe8;->a:Lbe8;

    const/4 v7, 0x1

    iget-object v8, v0, Lg52;->c:Ljava/lang/Object;

    iget-object v0, v0, Lg52;->b:Ljava/lang/Object;

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    check-cast v8, Lao8;

    sget-object v1, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 1
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O()Lco8;

    move-result-object v0

    .line 2
    iget-object v1, v8, Lao8;->a:Lyn8;

    .line 3
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, v8, Lao8;->a:Lyn8;

    .line 5
    iget-object v2, v2, Lyn8;->a:Lq63;

    .line 6
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lry5;->u:Ljava/lang/String;

    .line 7
    invoke-static {v9, v5}, Lqy5;->f(ZLzn7;)Lry5;

    move-result-object v3

    .line 8
    iget-object v3, v3, Lry5;->r:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3, v9}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    .line 10
    sget-object v3, Lzn4;->a:Lzn4;

    new-instance v3, Lbo8;

    invoke-direct {v3, v2, v0, v1, v5}, Lbo8;-><init>(ZLco8;Ljava/util/List;Ljv1;)V

    .line 11
    invoke-static {v5, v3}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    return-object v6

    .line 12
    :pswitch_0
    check-cast v0, Ljava/lang/String;

    check-cast v8, Lq47;

    .line 13
    sget-object v1, Lc47;->a:Lc47;

    invoke-virtual {v1}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    move-result-object v9

    .line 14
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppsQuickActionSchedules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 17
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 18
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v14, v2

    goto :goto_1

    :cond_2
    move-object v14, v5

    .line 19
    :goto_1
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppsLabelSchedules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 22
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v15, v2

    goto :goto_3

    :cond_5
    move-object v15, v5

    .line 24
    :goto_3
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppConfigSchedules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 27
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v16, v2

    goto :goto_5

    :cond_8
    move-object/from16 v16, v5

    .line 29
    :goto_5
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getMessagesSchedules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 32
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move-object/from16 v17, v2

    goto :goto_7

    :cond_b
    move-object/from16 v17, v5

    .line 34
    :goto_7
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getCallLogsSchedules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 37
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    move-object/from16 v18, v2

    goto :goto_9

    :cond_e
    move-object/from16 v18, v5

    .line 39
    :goto_9
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getWallsSchedules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 42
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 43
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    move-object/from16 v19, v2

    goto :goto_b

    :cond_11
    move-object/from16 v19, v5

    .line 44
    :goto_b
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getWifiSchedules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 47
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    move-object/from16 v20, v2

    goto :goto_d

    :cond_14
    move-object/from16 v20, v5

    .line 49
    :goto_d
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getFoldersSchedules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 52
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 53
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_16
    move-object/from16 v21, v5

    const/16 v23, 0x100f

    const/16 v24, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v22, 0x0

    .line 54
    invoke-static/range {v9 .. v24}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withScheduleDeleted(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    move-result-object v0

    .line 56
    invoke-static {v8, v0}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    return-object v6

    .line 57
    :pswitch_1
    check-cast v0, Lai6;

    check-cast v8, Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    iget-object v0, v0, Lai6;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_f

    :cond_17
    new-instance v5, Lu75;

    invoke-direct {v5, v0, v8}, Lu75;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    :goto_f
    return-object v5

    .line 61
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    check-cast v8, Ljava/util/ArrayList;

    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 62
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->Z()Lye5;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lme5;->j(Ljava/util/List;Z)V

    return-object v6

    .line 63
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    check-cast v8, Lff5;

    .line 64
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    move-result-object v0

    const-class v1, Lff5;

    invoke-virtual {v0, v1, v8}, Lqo0;->c(Ljava/lang/Class;Lpw6;)V

    return-object v6

    .line 65
    :pswitch_4
    check-cast v0, Leb2;

    check-cast v8, Lc64;

    .line 66
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 67
    :cond_18
    sget-object v0, Lc64;->l:Lix6;

    .line 68
    invoke-virtual {v8, v9}, Lc64;->j(Z)V

    return-object v6

    .line 69
    :pswitch_5
    check-cast v0, Lb82;

    check-cast v8, Lzx3;

    .line 70
    iget-object v0, v0, Lb82;->h:Lbr2;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iget-object v1, v8, Lzx3;->a:Lyn8;

    .line 73
    iget-object v1, v1, Lyn8;->f:Ljava/lang/String;

    if-nez v1, :cond_19

    goto :goto_10

    :cond_19
    move-object v4, v1

    .line 74
    :goto_10
    invoke-virtual {v0, v4}, Lbr2;->g(Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v0

    .line 75
    iget-object v0, v0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 76
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 77
    :pswitch_6
    check-cast v0, Lqp3;

    check-cast v8, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 78
    iget-object v1, v0, Lqp3;->o:Lex6;

    invoke-virtual {v1, v8}, Lex6;->k(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0}, Lqp3;->l()V

    return-object v6

    .line 80
    :pswitch_7
    check-cast v0, Lzn7;

    check-cast v8, Lin3;

    .line 81
    new-instance v1, Lhn3;

    invoke-virtual {v8}, Lin3;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lzn7;->n()Lq63;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lhn3;-><init>(Lzn7;Ljava/util/List;Lq63;)V

    return-object v1

    .line 82
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    check-cast v8, Luy7;

    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 83
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    move-result-object v0

    .line 84
    new-instance v1, Lkg;

    invoke-direct {v1, v3, v0, v8}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    return-object v6

    .line 85
    :pswitch_9
    check-cast v0, Lo23;

    check-cast v8, Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v8}, Lo23;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_14

    .line 87
    :cond_1a
    new-array v1, v7, [C

    const/16 v3, 0x2f

    aput-char v3, v1, v9

    invoke-static {v8, v1}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10, v2}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-string v10, "MKD"

    const-string v11, "createDirectory: Failed creating directory="

    const-string v12, ". Reply="

    if-le v2, v7, :cond_1e

    .line 89
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v9

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v2, :cond_1b

    move-object v4, v8

    goto :goto_12

    .line 90
    :cond_1b
    invoke-static {v4, v3, v8}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 91
    :goto_12
    invoke-virtual {v0, v4}, Lo23;->r(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 92
    invoke-virtual {v0, v4}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v9}, Lo23;->z(Z)Ld23;

    move-result-object v8

    .line 94
    invoke-virtual {v8, v10, v2}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 95
    invoke-static {v13}, Lk55;->x(I)Z

    move-result v13

    if-nez v13, :cond_1d

    .line 96
    invoke-virtual {v0, v4}, Lo23;->r(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    goto :goto_13

    .line 97
    :cond_1c
    invoke-virtual {v8}, Lz13;->i()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v11, v2, v12, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    goto :goto_15

    :cond_1d
    :goto_13
    move v2, v7

    goto :goto_11

    .line 100
    :cond_1e
    invoke-virtual {v0, v8}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v9}, Lo23;->z(Z)Ld23;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v10, v1}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 103
    invoke-static {v3}, Lk55;->x(I)Z

    move-result v3

    if-nez v3, :cond_20

    .line 104
    invoke-virtual {v0, v8}, Lo23;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_14

    .line 105
    :cond_1f
    invoke-virtual {v2}, Lz13;->i()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v11, v1, v12, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    goto :goto_15

    :cond_20
    :goto_14
    move-object v5, v6

    :goto_15
    return-object v5

    .line 108
    :pswitch_a
    check-cast v0, Lx92;

    check-cast v8, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 109
    invoke-virtual {v0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    move-result-object v0

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 110
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object v12, v0

    check-cast v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->s0:Lgv7;

    iget-object v1, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->o0:Lgv7;

    iget-object v10, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->p0:Lgv7;

    iget-object v11, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->v0:Lgv7;

    iget-object v13, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->t0:Lgv7;

    iget-object v14, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->n0:Lgv7;

    iget-object v15, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->h0:Lgv7;

    iget-object v2, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->e0:Lgv7;

    iget-object v3, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0:Lgv7;

    check-cast v8, Llh6;

    .line 111
    iget-object v8, v8, Llh6;->a:Ljava/lang/Object;

    check-cast v8, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    sget v18, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 112
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v5

    .line 113
    iget-object v5, v5, Lt52;->k:Landroid/widget/ImageView;

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ldd1;->getBrandingIconRes()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v5

    iget-object v5, v5, Lt52;->a0:Landroid/widget/TextView;

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v7

    invoke-virtual {v7}, Ldd1;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v5

    iget-object v5, v5, Lt52;->n:Landroid/widget/ImageView;

    new-instance v7, Lw42;

    invoke-direct {v7, v12, v9}, Lw42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v5, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0:Lgv7;

    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    .line 117
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ldd1;->getProtocols()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v19, v0

    const/4 v0, 0x1

    if-le v9, v0, :cond_21

    const/4 v0, 0x1

    goto :goto_16

    :cond_21
    const/4 v0, 0x0

    :goto_16
    invoke-static {v7, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 118
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 119
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    move-result v0

    const/16 v5, 0xa

    if-eqz v0, :cond_25

    .line 120
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v0

    invoke-virtual {v0}, Ldd1;->getProtocols()Ljava/util/List;

    move-result-object v0

    .line 121
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 123
    check-cast v7, Lfd1;

    .line 124
    invoke-virtual {v7}, Lfd1;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 126
    :cond_22
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x7f0d0097

    invoke-direct {v0, v12, v7, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    if-eqz v8, :cond_23

    .line 127
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProtocol()Lfd1;

    move-result-object v7

    if-nez v7, :cond_24

    :cond_23
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v7

    invoke-virtual {v7}, Ldd1;->getProtocols()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfd1;

    .line 128
    :cond_24
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/AutoCompleteTextView;

    .line 129
    invoke-virtual {v9, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 131
    invoke-virtual {v7}, Lfd1;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 132
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 133
    new-instance v3, Ll52;

    invoke-direct {v3, v12}, Ll52;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;)V

    .line 134
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    :cond_25
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v0

    iget-object v0, v0, Lt52;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    invoke-virtual {v3}, Ldd1;->isEmailPasswordBasedWebDav()Z

    move-result v3

    const/16 v20, 0x1

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 136
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v0

    iget-object v0, v0, Lt52;->X:Landroid/widget/TextView;

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    invoke-virtual {v3}, Ldd1;->isEmailPasswordBasedWebDav()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 137
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v0

    iget-object v0, v0, Lt52;->U:Landroid/widget/TextView;

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    invoke-virtual {v3}, Ldd1;->isEmailPasswordBasedWebDav()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 138
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->h0()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    invoke-virtual {v3, v12}, Ldd1;->getServerFieldHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->g0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 140
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->g0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-static {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->b0(Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 141
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->g0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    if-eqz v8, :cond_26

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_26
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v0, Lpw5;

    const-string v3, " "

    invoke-direct {v0, v3, v4}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    new-instance v3, Lpw5;

    const-string v7, "\n"

    invoke-direct {v3, v7, v4}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    filled-new-array {v0, v3}, [Lpw5;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    move-result-object v0

    .line 146
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->g0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v3

    .line 147
    new-instance v4, Lm52;

    const/4 v9, 0x0

    invoke-direct {v4, v9, v12, v0}, Lm52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->i0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 150
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    invoke-virtual {v3, v12}, Ldd1;->getPathFieldHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->e0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 152
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->e0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-static {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->b0(Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 153
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->e0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    if-eqz v8, :cond_27

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_27
    const/4 v3, 0x0

    :goto_19
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->e0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    .line 155
    new-instance v3, Ln52;

    invoke-direct {v3, v12}, Ln52;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;)V

    .line 156
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    invoke-virtual {v10}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 158
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    sget-object v4, Ldd1;->S3:Ldd1;

    if-ne v3, v4, :cond_28

    const/4 v3, 0x1

    goto :goto_1a

    :cond_28
    const/4 v3, 0x0

    :goto_1a
    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 159
    invoke-virtual {v10}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 160
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 161
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->w0()V

    .line 162
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->f0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 163
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->f0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-static {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->b0(Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 164
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->f0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    if-eqz v8, :cond_29

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getRegion()Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    :cond_29
    const/4 v3, 0x0

    :goto_1b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->f0()Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    .line 166
    new-instance v3, Lo52;

    const/4 v9, 0x0

    invoke-direct {v3, v12, v9}, Lo52;-><init>(Lsa1;I)V

    .line 167
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    :cond_2a
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v0

    if-ne v0, v4, :cond_2b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v0, 0x0

    .line 169
    :goto_1c
    iget-object v3, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->c0:Lgv7;

    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 170
    invoke-static {v3, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 171
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 172
    invoke-static {v3, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 173
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v0

    const/high16 v3, 0x40400000    # 3.0f

    if-eq v0, v4, :cond_2c

    goto :goto_1f

    .line 174
    :cond_2c
    sget-object v0, Lxq6;->j:Lxq6;

    .line 175
    sget-object v0, Lxq6;->m:Ljava/util/ArrayList;

    if-eqz v8, :cond_2d

    .line 176
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProviderPresetId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    :cond_2d
    const/4 v4, 0x0

    :goto_1d
    invoke-static {v4}, Lfo8;->e(Ljava/lang/String;)Lxq6;

    move-result-object v4

    if-nez v4, :cond_2f

    if-eqz v8, :cond_2e

    .line 177
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    :cond_2e
    const/4 v4, 0x0

    :goto_1e
    invoke-static {v4}, Lfo8;->h(Ljava/lang/String;)Lxq6;

    move-result-object v4

    .line 178
    :cond_2f
    iput-object v4, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->H0:Lxq6;

    .line 179
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->i0()Landroid/widget/AutoCompleteTextView;

    move-result-object v7

    new-instance v9, Lyq6;

    invoke-direct {v9, v12, v0}, Lyq6;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v7, v9}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->i0()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 181
    iget-object v7, v4, Lxq6;->b:Ljava/lang/String;

    const/4 v9, 0x0

    .line 182
    invoke-virtual {v0, v7, v9}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 183
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    iget v7, v4, Lxq6;->c:I

    .line 185
    iget-object v9, v4, Lxq6;->b:Ljava/lang/String;

    .line 186
    invoke-static {v0, v7, v9, v3}, Ly13;->D(Landroid/widget/ImageView;ILjava/lang/CharSequence;F)V

    .line 187
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->i0()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    new-instance v7, Lh7;

    const/4 v9, 0x7

    invoke-direct {v7, v12, v9}, Lh7;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v7}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 189
    new-instance v2, Lw42;

    const/4 v7, 0x1

    invoke-direct {v2, v12, v7}, Lw42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->i0()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 191
    new-instance v2, Lk52;

    const/4 v9, 0x0

    invoke-direct {v2, v12, v9}, Lk52;-><init>(Ljava/lang/Object;I)V

    .line 192
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    invoke-virtual {v12, v4, v9}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->Z(Lxq6;Z)V

    .line 194
    :goto_1f
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v0

    sget-object v2, Ldd1;->WebDav:Ldd1;

    if-ne v0, v2, :cond_30

    const/4 v0, 0x1

    goto :goto_20

    :cond_30
    const/4 v0, 0x0

    .line 195
    :goto_20
    iget-object v2, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->f0:Lgv7;

    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 196
    invoke-static {v2, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 197
    invoke-virtual {v15}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 198
    invoke-static {v2, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    if-nez v0, :cond_31

    goto :goto_23

    .line 199
    :cond_31
    sget-object v0, Loq8;->m:Ljava/util/ArrayList;

    if-eqz v8, :cond_32

    .line 200
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProviderPresetId()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_32
    const/4 v2, 0x0

    :goto_21
    invoke-static {v2}, Lxh8;->j(Ljava/lang/String;)Loq8;

    move-result-object v2

    if-nez v2, :cond_34

    if-eqz v8, :cond_33

    .line 201
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_33
    const/4 v2, 0x0

    :goto_22
    invoke-static {v2}, Lxh8;->t(Ljava/lang/String;)Loq8;

    move-result-object v2

    .line 202
    :cond_34
    iput-object v2, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->J0:Loq8;

    .line 203
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->j0()Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    new-instance v7, Lpq8;

    invoke-direct {v7, v12, v0}, Lpq8;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v7}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->j0()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 205
    iget-object v4, v2, Loq8;->b:Ljava/lang/String;

    const/4 v9, 0x0

    .line 206
    invoke-virtual {v0, v4, v9}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 207
    invoke-virtual {v15}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 208
    iget v4, v2, Loq8;->c:I

    .line 209
    iget-object v7, v2, Loq8;->b:Ljava/lang/String;

    .line 210
    invoke-static {v0, v4, v7, v3}, Ly13;->D(Landroid/widget/ImageView;ILjava/lang/CharSequence;F)V

    .line 211
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->j0()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    new-instance v3, Lz42;

    const/4 v7, 0x1

    invoke-direct {v3, v12, v7}, Lz42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {v15}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    new-instance v3, La52;

    invoke-direct {v3, v12, v7}, La52;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->j0()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 215
    new-instance v3, Lmv1;

    invoke-direct {v3, v12, v7}, Lmv1;-><init>(Lil0;I)V

    .line 216
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 217
    invoke-virtual {v12, v2, v0, v9}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->a0(Loq8;Loq8;Z)V

    .line 218
    :goto_23
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->v0()V

    .line 219
    invoke-virtual {v14}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v2, 0x2

    .line 220
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 221
    invoke-virtual {v14}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v8, :cond_35

    .line 222
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPort()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    :cond_35
    const/4 v3, 0x0

    :goto_24
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v14}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 224
    new-instance v3, Lp52;

    const/4 v9, 0x0

    invoke-direct {v3, v12, v9}, Lp52;-><init>(Ljava/lang/Object;I)V

    .line 225
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->r0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    invoke-virtual {v3}, Ldd1;->getShowUrlInSetup()Z

    move-result v3

    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 228
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 229
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    sget-object v4, Ldd1;->SMB:Ldd1;

    if-ne v3, v4, :cond_36

    const/4 v3, 0x1

    goto :goto_25

    :cond_36
    const/4 v3, 0x0

    :goto_25
    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 230
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 231
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 232
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v0

    iget-object v0, v0, Lt52;->y:Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    if-eqz v8, :cond_37

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getEncryption()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_26

    :cond_37
    const/4 v1, 0x0

    :goto_26
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 233
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v0

    iget-object v0, v0, Lt52;->y:Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 234
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v0

    iget-object v0, v0, Lt52;->y:Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    new-instance v3, Lx42;

    invoke-direct {v3, v12}, Lx42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_27

    :cond_38
    const/4 v1, 0x0

    :goto_27
    if-eqz v8, :cond_39

    .line 235
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getAuthType()Lnc1;

    move-result-object v0

    if-nez v0, :cond_3a

    :cond_39
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v0

    invoke-virtual {v0}, Ldd1;->getAuthTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnc1;

    .line 236
    :cond_3a
    invoke-virtual {v12, v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->n0(Lnc1;)V

    .line 237
    invoke-virtual/range {v19 .. v19}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 238
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v4

    invoke-virtual {v4}, Ldd1;->getAuthTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_3b

    const/4 v4, 0x1

    goto :goto_28

    :cond_3b
    const/4 v4, 0x0

    :goto_28
    invoke-static {v3, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 239
    invoke-virtual/range {v19 .. v19}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 240
    invoke-static {v3}, Lsz8;->I(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 241
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    invoke-virtual {v3}, Ldd1;->getAuthTypes()Ljava/util/List;

    move-result-object v3

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 244
    check-cast v7, Lnc1;

    .line 245
    invoke-virtual {v7}, Lnc1;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 247
    :cond_3c
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v7, 0x7f0d0097

    invoke-direct {v3, v12, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 248
    invoke-virtual {v13}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    .line 249
    invoke-virtual {v4, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    invoke-virtual {v13}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    .line 251
    invoke-virtual {v0}, Lnc1;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 252
    invoke-virtual {v13}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 253
    new-instance v3, Lnb1;

    const/4 v7, 0x1

    invoke-direct {v3, v12, v7}, Lnb1;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 254
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    :cond_3d
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->u0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 256
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    invoke-virtual {v3, v12}, Ldd1;->getUsernameFieldHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v11}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 258
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->b0(Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 259
    invoke-virtual {v11}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v8, :cond_3e

    .line 260
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getUsername()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_3e
    move-object v3, v1

    :goto_2a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v11}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 262
    new-instance v3, Lq52;

    const/4 v9, 0x0

    invoke-direct {v3, v12, v9}, Lq52;-><init>(Ljava/lang/Object;I)V

    .line 263
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->w0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 265
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v3

    invoke-virtual {v3, v12}, Ldd1;->getPasswordFieldHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const/4 v7, 0x1

    .line 266
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 267
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->x0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v3, 0x81

    .line 268
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 269
    invoke-static {v0}, Lsz8;->V(Lcom/google/android/material/textfield/TextInputEditText;)V

    if-eqz v8, :cond_3f

    .line 270
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPassword()Ljava/lang/String;

    move-result-object v4

    goto :goto_2b

    :cond_3f
    move-object v4, v1

    :goto_2b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    new-instance v4, Lr52;

    const/4 v9, 0x0

    invoke-direct {v4, v12, v9}, Lr52;-><init>(Ljava/lang/Object;I)V

    .line 272
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v0

    iget-object v0, v0, Lt52;->W:Landroid/widget/TextView;

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v4

    sget-object v7, Ldd1;->CloudMailRu2:Ldd1;

    if-ne v4, v7, :cond_40

    const/4 v4, 0x0

    goto :goto_2c

    :cond_40
    const/16 v4, 0x8

    .line 274
    :goto_2c
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v0

    iget-object v0, v0, Lt52;->V:Landroid/widget/TextView;

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v4

    if-ne v4, v7, :cond_41

    const/4 v4, 0x0

    goto :goto_2d

    :cond_41
    const/16 v4, 0x8

    .line 276
    :goto_2d
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->B0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v4, 0x7f13042b

    .line 278
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(I)V

    .line 279
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    const v4, 0x7f080126

    .line 280
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    .line 281
    invoke-static {v12}, Lsz8;->r(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 282
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->C0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const v4, 0x7f090004

    .line 283
    invoke-static {v12, v4}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 284
    invoke-static {v12}, Lsz8;->A(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x80001

    .line 285
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setInputType(I)V

    if-eqz v8, :cond_42

    .line 286
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getKey()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    move-result-object v4

    if-eqz v4, :cond_42

    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;->getKeyString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2e

    :cond_42
    move-object v4, v1

    :goto_2e
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    new-instance v4, Ll00;

    const/4 v7, 0x1

    invoke-direct {v4, v12, v7}, Ll00;-><init>(Lil0;I)V

    .line 288
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->z0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 290
    new-instance v4, Ly42;

    const/4 v9, 0x0

    invoke-direct {v4, v12, v9}, Ly42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->A0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 292
    new-instance v4, Lz42;

    invoke-direct {v4, v12, v9}, Lz42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->D0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v4, 0x7f13042c

    .line 294
    invoke-virtual {v12, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const/4 v7, 0x1

    .line 295
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 296
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->E0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 297
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 298
    invoke-static {v0}, Lsz8;->V(Lcom/google/android/material/textfield/TextInputEditText;)V

    if-eqz v8, :cond_43

    .line 299
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getKey()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    :cond_43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    new-instance v1, Ljq1;

    const/4 v7, 0x1

    invoke-direct {v1, v12, v7}, Ljq1;-><init>(Lil0;I)V

    .line 301
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 302
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->m0()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm62;->l(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 303
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->G0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 304
    new-instance v1, Les;

    const/4 v3, 0x5

    invoke-direct {v1, v12, v3}, Les;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->F0:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 306
    new-instance v1, La52;

    const/4 v9, 0x0

    invoke-direct {v1, v12, v9}, La52;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    move-result-object v0

    iget-object v0, v0, Lt52;->r:Lm86;

    iget-object v1, v0, Lm86;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, v0, Lm86;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 308
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v4

    .line 309
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    invoke-static {v4}, Lz85;->j(Ldd1;)Lh80;

    move-result-object v4

    if-eqz v4, :cond_44

    const/4 v9, 0x0

    .line 311
    iput-boolean v9, v12, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->M0:Z

    const v4, 0x7f0801b2

    .line 312
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f040137

    .line 313
    invoke-static {v12, v4}, Lsz8;->y(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 314
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 315
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 316
    iget-object v1, v0, Lm86;->n:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    .line 317
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    move-result-object v4

    invoke-virtual {v4}, Ldd1;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v7, 0x7f130301

    .line 318
    invoke-virtual {v12, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, v0, Lm86;->k:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f130300

    invoke-virtual {v12, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    new-instance v0, Ly42;

    const/4 v7, 0x1

    invoke-direct {v0, v12, v7}, Ly42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 322
    iget-object v0, v0, Lm62;->u:Lex6;

    .line 323
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v12, v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->u0(Z)V

    const/4 v9, 0x0

    .line 324
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f

    :cond_44
    const/16 v0, 0x8

    const/4 v9, 0x0

    .line 325
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :goto_2f
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 327
    iget-object v0, v0, Lm62;->h:Lix6;

    .line 328
    new-instance v1, Lu42;

    invoke-direct {v1, v12, v9}, Lu42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    new-instance v3, Ls30;

    invoke-direct {v3, v2, v1}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v12, v3}, Lix6;->e(Lfu4;Les5;)V

    .line 329
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 330
    iget-object v0, v0, Lm62;->j:Lex6;

    .line 331
    new-instance v1, Lzs;

    const/4 v3, 0x6

    invoke-direct {v1, v12, v3}, Lzs;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Ls30;

    invoke-direct {v3, v2, v1}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v12, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 332
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 333
    iget-object v0, v0, Lm62;->k:Lex6;

    .line 334
    new-instance v1, Llm;

    const/16 v3, 0x8

    invoke-direct {v1, v12, v3}, Llm;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Ls30;

    invoke-direct {v3, v2, v1}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v12, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 335
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 336
    iget-object v0, v0, Lm62;->n:Lex6;

    .line 337
    new-instance v1, Lw20;

    invoke-direct {v1, v12, v5}, Lw20;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Ls30;

    invoke-direct {v3, v2, v1}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v12, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 338
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 339
    iget-object v0, v0, Lm62;->l:Lix6;

    .line 340
    new-instance v1, Lc7;

    const/16 v3, 0xe

    invoke-direct {v1, v12, v3}, Lc7;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Ls30;

    invoke-direct {v3, v2, v1}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v12, v3}, Lix6;->e(Lfu4;Les5;)V

    .line 341
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 342
    iget-object v0, v0, Lm62;->m:Lix6;

    .line 343
    new-instance v10, Lhl0;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v11, 0x1

    .line 344
    const-class v13, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    const-string v14, "showSmbDataEncryptionRequiredDialog"

    const-string v15, "showSmbDataEncryptionRequiredDialog(Ljava/lang/String;)V"

    invoke-direct/range {v10 .. v17}, Lhl0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v9, v12

    .line 345
    new-instance v1, Ls30;

    invoke-direct {v1, v2, v10}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v9, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 346
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 347
    iget-object v0, v0, Lm62;->o:Lex6;

    .line 348
    new-instance v1, Lv42;

    const/4 v3, 0x0

    invoke-direct {v1, v9, v3}, Lv42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    new-instance v3, Ls30;

    invoke-direct {v3, v2, v1}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v9, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 349
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 350
    iget-object v0, v0, Lm62;->i:Lex6;

    .line 351
    new-instance v1, Lk3;

    invoke-direct {v1, v9, v5}, Lk3;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Ls30;

    invoke-direct {v3, v2, v1}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v9, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 352
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 353
    iget-object v0, v0, Lm62;->p:Lix6;

    .line 354
    new-instance v1, Lhj;

    const/16 v3, 0xb

    invoke-direct {v1, v9, v3}, Lhj;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Ls30;

    invoke-direct {v3, v2, v1}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v9, v3}, Lix6;->e(Lfu4;Les5;)V

    .line 355
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 356
    iget-object v0, v0, Lm62;->q:Lix6;

    .line 357
    new-instance v7, Lzd1;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v8, 0x1

    .line 358
    const-class v10, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    const-string v11, "showHostKeyNotVerifiable"

    const-string v12, "showHostKeyNotVerifiable(Lorg/swiftapps/swiftbackup/cloud/connect/CsVM$HostKeyNotVerifiableData;)V"

    invoke-direct/range {v7 .. v14}, Lzd1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 359
    new-instance v1, Ls30;

    invoke-direct {v1, v2, v7}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v9, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 360
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 361
    iget-object v0, v0, Lm62;->s:Lix6;

    .line 362
    new-instance v7, Lae1;

    const/4 v14, 0x2

    .line 363
    const-class v10, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    const-string v11, "showS3EndpointResolutionIssueDialog"

    const-string v12, "showS3EndpointResolutionIssueDialog(Lorg/swiftapps/swiftbackup/cloud/connect/CsVM$S3EndpointResolutionIssueData;)V"

    invoke-direct/range {v7 .. v14}, Lae1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 364
    new-instance v1, Ls30;

    invoke-direct {v1, v2, v7}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v9, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 365
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 366
    iget-object v0, v0, Lm62;->r:Lix6;

    .line 367
    new-instance v1, Lox;

    const/16 v3, 0x9

    invoke-direct {v1, v9, v3}, Lox;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Ls30;

    invoke-direct {v3, v2, v1}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v9, v3}, Lix6;->e(Lfu4;Les5;)V

    .line 368
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 369
    iget-object v0, v0, Lm62;->t:Lex6;

    .line 370
    new-instance v7, Lg70;

    .line 371
    const-class v10, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    const-string v11, "showLocalServerDiscoveryCard"

    const-string v12, "showLocalServerDiscoveryCard(Ljava/util/List;)V"

    invoke-direct/range {v7 .. v14}, Lg70;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 372
    new-instance v1, Ls30;

    invoke-direct {v1, v2, v7}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v9, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 373
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    move-result-object v0

    .line 374
    iget-object v0, v0, Lm62;->u:Lex6;

    .line 375
    new-instance v7, Ls52;

    const/4 v14, 0x0

    .line 376
    const-class v10, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    const-string v11, "updateLocalServerDiscoveryScanLoading"

    const-string v12, "updateLocalServerDiscoveryScanLoading(Z)V"

    invoke-direct/range {v7 .. v14}, Ls52;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 377
    new-instance v1, Ls30;

    invoke-direct {v1, v2, v7}, Ls30;-><init>(ILmt3;)V

    invoke-virtual {v0, v9, v1}, Lzy4;->e(Lfu4;Les5;)V

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
