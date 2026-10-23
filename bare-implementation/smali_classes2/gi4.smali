.class public final synthetic Lgi4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lgi4;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lgi4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lgi4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lgi4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lgi4;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lgi4;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 11
    .line 12
    check-cast v1, Lry5;

    .line 13
    .line 14
    check-cast p1, Lu55;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    sget v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->O:I

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget v0, p1, Lu55;->a:I

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const v0, 0x7f130071

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-object v2, p1, Lu55;->b:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v3, Lo55;

    .line 43
    .line 44
    invoke-direct {v3, p0, v1, p1, p2}, Lo55;-><init>(Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;Lry5;Lu55;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v2, v0, v3}, Lorg/swiftapps/swiftbackup/common/Const;->I(Lzm;Ljava/lang/String;Ljava/lang/String;Lbt3;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lbe8;->a:Lbe8;

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_0
    check-cast p0, Lli4;

    .line 54
    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp;

    .line 58
    .line 59
    check-cast p2, Lcom/jcraft/jsch/Session;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-virtual {p0, v1}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/ChannelSftp;->stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 72
    .line 73
    .line 74
    sget-object p0, Lih1;->Exists:Lih1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    move-object p0, v0

    .line 79
    invoke-static {p0}, Lli4;->z(Ljava/lang/Exception;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    sget-object p0, Lih1;->Missing:Lih1;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string p1, "JschService"

    .line 89
    .line 90
    const-string p2, "getMetadataPathExistence"

    .line 91
    .line 92
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 96
    .line 97
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "getMetadataPathExistence: "

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const/4 v4, 0x4

    .line 108
    const/4 v5, 0x0

    .line 109
    const-string v1, "JschService"

    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object p0, Lih1;->Unknown:Lih1;

    .line 116
    .line 117
    :goto_1
    return-object p0

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
