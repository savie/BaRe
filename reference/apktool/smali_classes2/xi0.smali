.class public final Lxi0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lil0;

.field public b:J


# direct methods
.method public constructor <init>(Lil0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxi0;->a:Lil0;

    .line 5
    .line 6
    return-void
.end method

.method public static final a(Lxi0;Landroid/app/Activity;ZZ)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const v5, 0x7f1304e1

    .line 11
    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v3, "system_app_parts"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    invoke-static/range {v1 .. v6}, Lxi0;->e(Lxi0;Landroid/app/Activity;Ljava/lang/String;ZIZ)Ljj0;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const v5, 0x7f1304e2

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    const-string v3, "user_app_parts"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static/range {v1 .. v6}, Lxi0;->e(Lxi0;Landroid/app/Activity;Ljava/lang/String;ZIZ)Ljj0;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_0
    move-object v1, p0

    .line 42
    move-object v2, p1

    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    const v5, 0x7f1304e1

    .line 46
    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    const-string v3, "system_app_parts"

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    invoke-static/range {v1 .. v6}, Lxi0;->e(Lxi0;Landroid/app/Activity;Ljava/lang/String;ZIZ)Ljj0;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    if-eqz p2, :cond_2

    .line 60
    .line 61
    const v5, 0x7f1304e2

    .line 62
    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    const-string v3, "user_app_parts"

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static/range {v1 .. v6}, Lxi0;->e(Lxi0;Landroid/app/Activity;Ljava/lang/String;ZIZ)Ljj0;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    return-object v0
.end method

.method public static final d(Lxi0;Landroid/app/Activity;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIZ)Ljj0;
    .locals 24

    move/from16 v0, p15

    .line 1
    new-instance v1, Ljj0;

    move-object/from16 v2, p0

    .line 2
    iget-object v7, v2, Lxi0;->a:Lil0;

    move/from16 v2, p16

    .line 3
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v5, Ldk;

    const/16 v2, 0xa

    move-object/from16 v4, p1

    invoke-direct {v5, v4, v2}, Ldk;-><init>(Ljava/lang/Object;I)V

    const/4 v6, 0x4

    move-object/from16 v2, p14

    move/from16 v4, p17

    .line 5
    invoke-direct/range {v1 .. v6}, Ljj0;-><init>(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)V

    .line 6
    new-instance v8, Lli0;

    .line 7
    sget-object v2, Liu;->APP:Liu;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    const-string v3, "APK"

    :goto_0
    move-object v10, v3

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, "APKs"

    goto :goto_0

    .line 9
    :goto_2
    const-string v3, ""

    if-nez p5, :cond_2

    move-object v11, v3

    goto :goto_3

    :cond_2
    move-object/from16 v11, p5

    :goto_3
    const v4, 0x7f0800bf

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 11
    invoke-virtual {v2, v0}, Liu;->isCheckedInExpansion(Z)Z

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0xd0

    const/4 v13, 0x0

    .line 12
    invoke-direct/range {v8 .. v16}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 13
    iget-object v2, v1, Ljj0;->c:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v4, Lki0;->c:Lki0;

    const/4 v5, 0x2

    const v6, 0x7f080154

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0604ae

    if-eqz p6, :cond_a

    .line 15
    sget-object v12, Liu;->DATA:Liu;

    invoke-virtual {v12}, Liu;->getBackupReq()Lsk0;

    move-result-object v13

    if-nez p2, :cond_4

    .line 16
    invoke-virtual {v13}, Lsk0;->isPossible()Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_4

    :cond_3
    move v14, v9

    goto :goto_5

    :cond_4
    :goto_4
    move v14, v8

    .line 17
    :goto_5
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const v15, 0x7f1301d8

    .line 18
    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p7, :cond_5

    move-object/from16 v18, v3

    goto :goto_6

    :cond_5
    move-object/from16 v18, p7

    :goto_6
    if-nez v14, :cond_6

    move v15, v6

    goto :goto_7

    :cond_6
    const v15, 0x7f080125

    .line 19
    :goto_7
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 20
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-nez v14, :cond_7

    move-object/from16 v20, v15

    goto :goto_8

    :cond_7
    move-object/from16 v20, v10

    :goto_8
    if-eqz v14, :cond_8

    .line 21
    invoke-virtual {v12, v0}, Liu;->isCheckedInExpansion(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v21, v8

    goto :goto_9

    :cond_8
    move/from16 v21, v9

    :goto_9
    if-nez v14, :cond_9

    .line 22
    new-instance v12, Lii0;

    invoke-virtual {v13, v7}, Lsk0;->conditionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v10, v5}, Lii0;-><init>(Ljava/lang/String;Lbt3;I)V

    move-object/from16 v22, v12

    goto :goto_a

    :cond_9
    move-object/from16 v22, v4

    .line 23
    :goto_a
    new-instance v15, Lli0;

    const/16 v23, 0x80

    invoke-direct/range {v15 .. v23}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 24
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz p8, :cond_12

    .line 25
    sget-object v12, Liu;->EXTDATA:Liu;

    invoke-virtual {v12}, Liu;->getBackupReq()Lsk0;

    move-result-object v13

    if-nez p2, :cond_c

    .line 26
    invoke-virtual {v13}, Lsk0;->isPossible()Z

    move-result v14

    if-eqz v14, :cond_b

    goto :goto_b

    :cond_b
    move v14, v9

    goto :goto_c

    :cond_c
    :goto_b
    move v14, v8

    .line 27
    :goto_c
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const v15, 0x7f13022f

    .line 28
    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p9, :cond_d

    move-object/from16 v18, v3

    goto :goto_d

    :cond_d
    move-object/from16 v18, p9

    :goto_d
    if-nez v14, :cond_e

    move v15, v6

    goto :goto_e

    :cond_e
    const v15, 0x7f0801b0

    .line 29
    :goto_e
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 30
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-nez v14, :cond_f

    move-object/from16 v20, v15

    goto :goto_f

    :cond_f
    move-object/from16 v20, v10

    :goto_f
    if-eqz v14, :cond_10

    .line 31
    invoke-virtual {v12, v0}, Liu;->isCheckedInExpansion(Z)Z

    move-result v12

    if-eqz v12, :cond_10

    move/from16 v21, v8

    goto :goto_10

    :cond_10
    move/from16 v21, v9

    :goto_10
    if-nez v14, :cond_11

    .line 32
    new-instance v12, Lii0;

    invoke-virtual {v13, v7}, Lsk0;->conditionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v10, v5}, Lii0;-><init>(Ljava/lang/String;Lbt3;I)V

    move-object/from16 v22, v12

    goto :goto_11

    :cond_11
    move-object/from16 v22, v4

    .line 33
    :goto_11
    new-instance v15, Lli0;

    const/16 v23, 0x80

    invoke-direct/range {v15 .. v23}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 34
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz p12, :cond_1a

    .line 35
    sget-object v12, Liu;->EXPANSION:Liu;

    invoke-virtual {v12}, Liu;->getBackupReq()Lsk0;

    move-result-object v13

    if-nez p2, :cond_14

    .line 36
    invoke-virtual {v13}, Lsk0;->isPossible()Z

    move-result v14

    if-eqz v14, :cond_13

    goto :goto_12

    :cond_13
    move v14, v9

    goto :goto_13

    :cond_14
    :goto_12
    move v14, v8

    .line 37
    :goto_13
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const v15, 0x7f13022a

    .line 38
    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p13, :cond_15

    move-object/from16 v18, v3

    goto :goto_14

    :cond_15
    move-object/from16 v18, p13

    :goto_14
    if-nez v14, :cond_16

    move v15, v6

    goto :goto_15

    :cond_16
    const v15, 0x7f080132

    .line 39
    :goto_15
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 40
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-nez v14, :cond_17

    move-object/from16 v20, v15

    goto :goto_16

    :cond_17
    move-object/from16 v20, v10

    :goto_16
    if-eqz v14, :cond_18

    .line 41
    invoke-virtual {v12, v0}, Liu;->isCheckedInExpansion(Z)Z

    move-result v12

    if-eqz v12, :cond_18

    move/from16 v21, v8

    goto :goto_17

    :cond_18
    move/from16 v21, v9

    :goto_17
    if-nez v14, :cond_19

    .line 42
    new-instance v12, Lii0;

    invoke-virtual {v13, v7}, Lsk0;->conditionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v10, v5}, Lii0;-><init>(Ljava/lang/String;Lbt3;I)V

    move-object/from16 v22, v12

    goto :goto_18

    :cond_19
    move-object/from16 v22, v4

    .line 43
    :goto_18
    new-instance v15, Lli0;

    const/16 v23, 0x80

    invoke-direct/range {v15 .. v23}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 44
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-eqz p10, :cond_22

    .line 45
    sget-object v12, Liu;->MEDIA:Liu;

    invoke-virtual {v12}, Liu;->getBackupReq()Lsk0;

    move-result-object v13

    if-nez p2, :cond_1c

    .line 46
    invoke-virtual {v13}, Lsk0;->isPossible()Z

    move-result v14

    if-eqz v14, :cond_1b

    goto :goto_19

    :cond_1b
    move v14, v9

    goto :goto_1a

    :cond_1c
    :goto_19
    move v14, v8

    .line 47
    :goto_1a
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 48
    invoke-static {v12, v9, v8, v10}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    if-nez p11, :cond_1d

    goto :goto_1b

    :cond_1d
    move-object/from16 v3, p11

    :goto_1b
    if-nez v14, :cond_1e

    goto :goto_1c

    :cond_1e
    const v6, 0x7f080176

    .line 49
    :goto_1c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 50
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-nez v14, :cond_1f

    goto :goto_1d

    :cond_1f
    move-object v11, v10

    :goto_1d
    if-eqz v14, :cond_20

    .line 51
    invoke-virtual {v12, v0}, Liu;->isCheckedInExpansion(Z)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_1e

    :cond_20
    move v8, v9

    :goto_1e
    if-nez v14, :cond_21

    .line 52
    new-instance v4, Lii0;

    invoke-virtual {v13, v7}, Lsk0;->conditionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v10, v5}, Lii0;-><init>(Ljava/lang/String;Lbt3;I)V

    .line 53
    :cond_21
    new-instance v0, Lli0;

    const/16 v5, 0x80

    move-object/from16 p0, v0

    move-object/from16 p3, v3

    move-object/from16 p7, v4

    move/from16 p8, v5

    move-object/from16 p4, v6

    move/from16 p6, v8

    move-object/from16 p5, v11

    move-object/from16 p1, v15

    move-object/from16 p2, v16

    invoke-direct/range {p0 .. p8}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 54
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-object v1
.end method

.method public static final e(Lxi0;Landroid/app/Activity;Ljava/lang/String;ZIZ)Ljj0;
    .locals 20

    .line 1
    const/16 v18, 0x1

    .line 2
    .line 3
    const/16 v19, 0x0

    .line 4
    .line 5
    const/4 v7, 0x1

    .line 6
    const/4 v8, 0x1

    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v10, 0x1

    .line 9
    const/4 v11, 0x1

    .line 10
    const/4 v12, 0x1

    .line 11
    const/4 v13, 0x0

    .line 12
    const/4 v14, 0x1

    .line 13
    const/4 v15, 0x0

    .line 14
    const/16 v16, 0x1

    .line 15
    .line 16
    const/16 v17, 0x0

    .line 17
    .line 18
    move-object/from16 v1, p0

    .line 19
    .line 20
    move-object/from16 v2, p1

    .line 21
    .line 22
    move-object/from16 v3, p2

    .line 23
    .line 24
    move/from16 v4, p3

    .line 25
    .line 26
    move/from16 v6, p4

    .line 27
    .line 28
    move/from16 v5, p5

    .line 29
    .line 30
    invoke-virtual/range {v1 .. v19}, Lxi0;->b(Landroid/app/Activity;Ljava/lang/String;ZZIZZLjava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljj0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/app/Activity;Ljava/lang/String;ZZIZZLjava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljj0;
    .locals 20

    move/from16 v0, p3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    move-object/from16 v1, p0

    .line 2
    iget-object v1, v1, Lxi0;->a:Lil0;

    move/from16 v3, p5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v3, Ljj0;

    new-instance v7, Lbk;

    const/4 v4, 0x6

    move-object/from16 v6, p1

    invoke-direct {v7, v6, v4}, Lbk;-><init>(Ljava/lang/Object;I)V

    const/4 v8, 0x4

    move-object/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Ljj0;-><init>(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)V

    .line 4
    sget-object v4, Lki0;->c:Lki0;

    const/4 v5, 0x2

    const-string v6, ""

    iget-object v7, v3, Ljj0;->c:Ljava/util/List;

    if-eqz p7, :cond_4

    .line 5
    new-instance v8, Lli0;

    .line 6
    sget-object v9, Liu;->APP:Liu;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez p9, :cond_1

    if-eqz p10, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    const-string v11, "APK"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v11, "APKs"

    :goto_1
    if-nez p8, :cond_2

    move-object v12, v6

    goto :goto_2

    :cond_2
    move-object/from16 v12, p8

    :goto_2
    const v13, 0x7f0800bf

    .line 8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 9
    invoke-virtual {v9, v0}, Liu;->isCheckedInExpansion(Z)Z

    move-result v14

    if-nez p6, :cond_3

    .line 10
    new-instance v9, Lji0;

    const v15, 0x7f13005e

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15, v5}, Lji0;-><init>(Ljava/lang/String;I)V

    move-object v15, v9

    goto :goto_3

    :cond_3
    move-object v15, v4

    :goto_3
    const/16 v16, 0x90

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    const/4 v13, 0x0

    .line 11
    invoke-direct/range {v8 .. v16}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 12
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v9, 0x1

    const v10, 0x7f080154

    const v11, 0x7f0604ae

    if-eqz p11, :cond_a

    .line 13
    sget-object v12, Liu;->DATA:Liu;

    invoke-virtual {v12}, Liu;->getBackupReq()Lsk0;

    move-result-object v13

    .line 14
    invoke-virtual {v13}, Lsk0;->isPossible()Z

    move-result v14

    .line 15
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const v8, 0x7f1301d8

    .line 16
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p12, :cond_5

    move-object/from16 v16, v6

    goto :goto_4

    :cond_5
    move-object/from16 v16, p12

    :goto_4
    if-nez v14, :cond_6

    move/from16 v17, v10

    goto :goto_5

    :cond_6
    const v17, 0x7f080125

    .line 17
    :goto_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 18
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    if-nez v14, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v18, v2

    :goto_6
    if-eqz v14, :cond_8

    .line 19
    invoke-virtual {v12, v0}, Liu;->isCheckedInExpansion(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    move v12, v9

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    :goto_7
    if-nez v14, :cond_9

    .line 20
    new-instance v14, Lii0;

    invoke-virtual {v13, v1}, Lsk0;->conditionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13, v2, v5}, Lii0;-><init>(Ljava/lang/String;Lbt3;I)V

    goto :goto_8

    :cond_9
    move-object v14, v4

    .line 21
    :goto_8
    new-instance v13, Lli0;

    const/16 v19, 0x80

    move-object/from16 p6, v8

    move/from16 p10, v12

    move-object/from16 p4, v13

    move-object/from16 p11, v14

    move-object/from16 p5, v15

    move-object/from16 p7, v16

    move-object/from16 p8, v17

    move-object/from16 p9, v18

    move/from16 p12, v19

    invoke-direct/range {p4 .. p12}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    move-object/from16 v8, p4

    .line 22
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz p13, :cond_10

    .line 23
    sget-object v8, Liu;->EXTDATA:Liu;

    invoke-virtual {v8}, Liu;->getBackupReq()Lsk0;

    move-result-object v12

    .line 24
    invoke-virtual {v12}, Lsk0;->isPossible()Z

    move-result v13

    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f13022f

    .line 26
    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p14, :cond_b

    move-object/from16 v16, v6

    goto :goto_9

    :cond_b
    move-object/from16 v16, p14

    :goto_9
    if-nez v13, :cond_c

    move/from16 v17, v10

    goto :goto_a

    :cond_c
    const v17, 0x7f0801b0

    .line 27
    :goto_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 28
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    if-nez v13, :cond_d

    goto :goto_b

    :cond_d
    move-object/from16 v18, v2

    :goto_b
    if-eqz v13, :cond_e

    .line 29
    invoke-virtual {v8, v0}, Liu;->isCheckedInExpansion(Z)Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v9

    goto :goto_c

    :cond_e
    const/4 v8, 0x0

    :goto_c
    if-nez v13, :cond_f

    .line 30
    new-instance v13, Lii0;

    invoke-virtual {v12, v1}, Lsk0;->conditionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12, v2, v5}, Lii0;-><init>(Ljava/lang/String;Lbt3;I)V

    goto :goto_d

    :cond_f
    move-object v13, v4

    .line 31
    :goto_d
    new-instance v12, Lli0;

    const/16 v19, 0x80

    move/from16 p10, v8

    move-object/from16 p4, v12

    move-object/from16 p11, v13

    move-object/from16 p5, v14

    move-object/from16 p6, v15

    move-object/from16 p7, v16

    move-object/from16 p8, v17

    move-object/from16 p9, v18

    move/from16 p12, v19

    invoke-direct/range {p4 .. p12}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    move-object/from16 v8, p4

    .line 32
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    if-eqz p17, :cond_16

    .line 33
    sget-object v8, Liu;->EXPANSION:Liu;

    invoke-virtual {v8}, Liu;->getBackupReq()Lsk0;

    move-result-object v12

    .line 34
    invoke-virtual {v12}, Lsk0;->isPossible()Z

    move-result v13

    .line 35
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f13022a

    .line 36
    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p18, :cond_11

    move-object/from16 v16, v6

    goto :goto_e

    :cond_11
    move-object/from16 v16, p18

    :goto_e
    if-nez v13, :cond_12

    move/from16 v17, v10

    goto :goto_f

    :cond_12
    const v17, 0x7f080132

    .line 37
    :goto_f
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 38
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    if-nez v13, :cond_13

    goto :goto_10

    :cond_13
    move-object/from16 v18, v2

    :goto_10
    if-eqz v13, :cond_14

    .line 39
    invoke-virtual {v8, v0}, Liu;->isCheckedInExpansion(Z)Z

    move-result v8

    if-eqz v8, :cond_14

    move v8, v9

    goto :goto_11

    :cond_14
    const/4 v8, 0x0

    :goto_11
    if-nez v13, :cond_15

    .line 40
    new-instance v13, Lii0;

    invoke-virtual {v12, v1}, Lsk0;->conditionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12, v2, v5}, Lii0;-><init>(Ljava/lang/String;Lbt3;I)V

    goto :goto_12

    :cond_15
    move-object v13, v4

    .line 41
    :goto_12
    new-instance v12, Lli0;

    const/16 v19, 0x80

    move/from16 p10, v8

    move-object/from16 p4, v12

    move-object/from16 p11, v13

    move-object/from16 p5, v14

    move-object/from16 p6, v15

    move-object/from16 p7, v16

    move-object/from16 p8, v17

    move-object/from16 p9, v18

    move/from16 p12, v19

    invoke-direct/range {p4 .. p12}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    move-object/from16 v8, p4

    .line 42
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz p15, :cond_1c

    .line 43
    sget-object v8, Liu;->MEDIA:Liu;

    invoke-virtual {v8}, Liu;->getBackupReq()Lsk0;

    move-result-object v12

    .line 44
    invoke-virtual {v12}, Lsk0;->isPossible()Z

    move-result v13

    .line 45
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f130346

    .line 46
    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p16, :cond_17

    goto :goto_13

    :cond_17
    move-object/from16 v6, p16

    :goto_13
    if-nez v13, :cond_18

    goto :goto_14

    :cond_18
    const v10, 0x7f080176

    .line 47
    :goto_14
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 48
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-nez v13, :cond_19

    goto :goto_15

    :cond_19
    move-object v11, v2

    :goto_15
    if-eqz v13, :cond_1a

    .line 49
    invoke-virtual {v8, v0}, Liu;->isCheckedInExpansion(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v8, v9

    goto :goto_16

    :cond_1a
    const/4 v8, 0x0

    :goto_16
    if-nez v13, :cond_1b

    .line 50
    new-instance v4, Lii0;

    invoke-virtual {v12, v1}, Lsk0;->conditionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v2, v5}, Lii0;-><init>(Ljava/lang/String;Lbt3;I)V

    .line 51
    :cond_1b
    new-instance v0, Lli0;

    const/16 v1, 0x80

    move-object/from16 p1, v0

    move/from16 p9, v1

    move-object/from16 p8, v4

    move-object/from16 p4, v6

    move/from16 p7, v8

    move-object/from16 p5, v10

    move-object/from16 p6, v11

    move-object/from16 p2, v14

    move-object/from16 p3, v15

    invoke-direct/range {p1 .. p9}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 52
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    return-object v3

    .line 53
    :cond_1d
    invoke-static {}, Ld6;->o()V

    return-object v2
.end method

.method public final c(Landroid/app/Activity;ZZZZZZLjava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 19

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    const v17, 0x7f1304e1

    const/16 v18, 0x0

    .line 2
    const-string v15, "system_app_parts"

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v6, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v7, p11

    move-object/from16 v8, p12

    move/from16 v9, p13

    move-object/from16 v10, p14

    move/from16 v11, p15

    move-object/from16 v12, p16

    move/from16 v13, p17

    move-object/from16 v14, p18

    invoke-static/range {v1 .. v18}, Lxi0;->d(Lxi0;Landroid/app/Activity;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIZ)Ljj0;

    move-result-object v15

    .line 3
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v17, 0x7f1304e2

    const/16 v18, 0x1

    .line 4
    const-string v15, "user_app_parts"

    const/16 v16, 0x0

    invoke-static/range {v1 .. v18}, Lxi0;->d(Lxi0;Landroid/app/Activity;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIZ)Ljj0;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    if-eqz p5, :cond_1

    const v17, 0x7f1304e1

    const/16 v18, 0x1

    .line 6
    const-string v15, "system_app_parts"

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v6, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v7, p11

    move-object/from16 v8, p12

    move/from16 v9, p13

    move-object/from16 v10, p14

    move/from16 v11, p15

    move-object/from16 v12, p16

    move/from16 v13, p17

    move-object/from16 v14, p18

    invoke-static/range {v1 .. v18}, Lxi0;->d(Lxi0;Landroid/app/Activity;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIZ)Ljj0;

    move-result-object v15

    .line 7
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p4, :cond_2

    const v17, 0x7f1304e2

    const/16 v18, 0x1

    .line 8
    const-string v15, "user_app_parts"

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v6, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v7, p11

    move-object/from16 v8, p12

    move/from16 v9, p13

    move-object/from16 v10, p14

    move/from16 v11, p15

    move-object/from16 v12, p16

    move/from16 v13, p17

    move-object/from16 v14, p18

    invoke-static/range {v1 .. v18}, Lxi0;->d(Lxi0;Landroid/app/Activity;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIZ)Ljj0;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v1, p0

    .line 10
    :goto_0
    new-instance v2, Ljj0;

    const v3, 0x7f1304da

    iget-object v4, v1, Lxi0;->a:Lil0;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const-string v7, "locations"

    const/4 v8, 0x0

    move-object/from16 p8, v2

    move-object/from16 p10, v3

    move-object/from16 p12, v5

    move/from16 p13, v6

    move-object/from16 p9, v7

    move/from16 p11, v8

    invoke-direct/range {p8 .. p13}, Ljj0;-><init>(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)V

    const/4 v3, 0x0

    if-nez p6, :cond_4

    if-eqz p7, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    const-string v0, "Both locations disabled!!?"

    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    return-object v3

    .line 12
    :cond_4
    :goto_1
    sget-object v5, Lki0;->c:Lki0;

    const/4 v6, 0x3

    const/4 v7, 0x1

    iget-object v8, v2, Ljj0;->c:Ljava/util/List;

    if-eqz p6, :cond_6

    .line 13
    new-instance v9, Lli0;

    .line 14
    sget-object v10, Lq05;->DEVICE:Lq05;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f1301fa

    .line 15
    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v13, 0x7f080129

    .line 16
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 17
    invoke-virtual {v10, v7}, Lq05;->isCheckedInExpansion(I)Z

    move-result v10

    if-nez p7, :cond_5

    .line 18
    new-instance v14, Lji0;

    invoke-direct {v14, v3, v6}, Lji0;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    move-object v14, v5

    :goto_2
    const/16 v15, 0x94

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 p8, v9

    move/from16 p14, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p12, v13

    move-object/from16 p15, v14

    move/from16 p16, v15

    move-object/from16 p11, v16

    move-object/from16 p13, v17

    .line 19
    invoke-direct/range {p8 .. p16}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 20
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p7, :cond_c

    .line 21
    sget-object v9, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    move-result v10

    .line 22
    sget-object v11, Lq05;->CLOUD:Lq05;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f130106

    .line 23
    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v10, :cond_7

    const v13, 0x7f080146

    goto :goto_3

    :cond_7
    const v13, 0x7f080114

    .line 24
    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x7f0604a5

    .line 25
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-nez v10, :cond_8

    goto :goto_4

    :cond_8
    move-object v14, v3

    :goto_4
    if-eqz v10, :cond_9

    .line 26
    invoke-virtual {v11, v7}, Lq05;->isCheckedInExpansion(I)Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v7

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    .line 27
    :goto_5
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    move-result v9

    if-nez v9, :cond_a

    .line 28
    new-instance v5, Lii0;

    .line 29
    new-instance v6, Lak;

    const/4 v9, 0x6

    invoke-direct {v6, v1, v9}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 30
    invoke-direct {v5, v3, v6, v7}, Lii0;-><init>(Ljava/lang/String;Lbt3;I)V

    goto :goto_6

    :cond_a
    if-nez p6, :cond_b

    .line 31
    new-instance v5, Lji0;

    invoke-direct {v5, v3, v6}, Lji0;-><init>(Ljava/lang/String;I)V

    .line 32
    :cond_b
    :goto_6
    new-instance v1, Lli0;

    const/4 v3, 0x0

    const/16 v6, 0x84

    move-object/from16 p0, v1

    move-object/from16 p3, v3

    move-object/from16 p2, v4

    move-object/from16 p7, v5

    move/from16 p8, v6

    move/from16 p6, v10

    move-object/from16 p1, v12

    move-object/from16 p4, v13

    move-object/from16 p5, v14

    invoke-direct/range {p0 .. p8}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 33
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final f(Lpj0;ZLcd;Lri0;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lxi0;->b:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lxi0;->b:J

    .line 20
    .line 21
    new-instance v2, Lpi0;

    .line 22
    .line 23
    move-object v3, p0

    .line 24
    move-object v4, p1

    .line 25
    move v5, p2

    .line 26
    move-object v6, p3

    .line 27
    move-object v7, p4

    .line 28
    invoke-direct/range {v2 .. v7}, Lpi0;-><init>(Lxi0;Lpj0;ZLcd;Lri0;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Lpi0;->invoke()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    sget-object p0, Lzn4;->a:Lzn4;

    .line 50
    .line 51
    new-instance p0, Lgj;

    .line 52
    .line 53
    const/16 p1, 0xa

    .line 54
    .line 55
    invoke-direct {p0, v2, p1}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Lzn4;->e(Lbt3;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
