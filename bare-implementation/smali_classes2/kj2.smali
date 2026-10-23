.class public final synthetic Lkj2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpj2;

.field public final synthetic c:Lwj2;


# direct methods
.method public synthetic constructor <init>(Lpj2;Lwj2;I)V
    .locals 0

    .line 1
    iput p3, p0, Lkj2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lkj2;->b:Lpj2;

    .line 4
    .line 5
    iput-object p2, p0, Lkj2;->c:Lwj2;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkj2;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v3, v0, Lkj2;->c:Lwj2;

    .line 8
    .line 9
    iget-object v0, v0, Lkj2;->b:Lpj2;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v5, p1

    .line 15
    .line 16
    check-cast v5, Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v4, v0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 22
    .line 23
    sget-object v6, Liu;->EXPANSION:Liu;

    .line 24
    .line 25
    iget-object v8, v3, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-virtual/range {v4 .. v9}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :pswitch_0
    move-object/from16 v11, p1

    .line 34
    .line 35
    check-cast v11, Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v10, v0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 41
    .line 42
    sget-object v12, Liu;->MEDIA:Liu;

    .line 43
    .line 44
    iget-object v14, v3, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 45
    .line 46
    iget-boolean v0, v3, Lwj2;->l:Z

    .line 47
    .line 48
    iget-object v1, v3, Lwj2;->m:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    :goto_0
    move-object v15, v1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    goto :goto_0

    .line 56
    :goto_1
    const/4 v13, 0x0

    .line 57
    invoke-virtual/range {v10 .. v15}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v2

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
