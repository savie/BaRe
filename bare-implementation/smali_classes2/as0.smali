.class public final Las0;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p4, p0, Las0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Las0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Las0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget p1, p0, Las0;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Las0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Las0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Las0;

    .line 11
    .line 12
    check-cast p0, Lzn7;

    .line 13
    .line 14
    check-cast v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {p1, p0, v0, p2, v1}, Las0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_0
    new-instance p1, Las0;

    .line 22
    .line 23
    check-cast p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 24
    .line 25
    check-cast v0, Lbs0;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {p1, p0, v0, p2, v1}, Las0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Las0;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Las0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Las0;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Las0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Las0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Las0;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Las0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Las0;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Las0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Las0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lzn7;

    .line 13
    .line 14
    const-string v0, "Read/Write check failed for storage \'"

    .line 15
    .line 16
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lih6;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v3, Llh6;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    :try_start_0
    sget-object v5, Lorg/swiftapps/swiftbackup/common/Const;->a:Lorg/swiftapps/swiftbackup/common/Const;

    .line 31
    .line 32
    sget-object v6, Lmp6;->a:Lmp6;

    .line 33
    .line 34
    const/4 v7, 0x3

    .line 35
    invoke-static {v6, v4, v4, v7}, Lmp6;->d(Lmp6;ZZI)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/4 v7, 0x1

    .line 40
    invoke-virtual {v5, p0, v6, v7}, Lorg/swiftapps/swiftbackup/common/Const;->checkFileReadWriteAccess(Lzn7;ZZ)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v7, "\'."

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    iput-object v6, v3, Llh6;->a:Ljava/lang/Object;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v5

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    iput-boolean v5, p1, Lih6;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_1
    invoke-static {v5}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, "\'. \n\n"

    .line 84
    .line 85
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, v3, Llh6;->a:Ljava/lang/Object;

    .line 96
    .line 97
    iput-boolean v4, p1, Lih6;->a:Z

    .line 98
    .line 99
    :goto_2
    sget-object v0, Lzn4;->a:Lzn4;

    .line 100
    .line 101
    check-cast v2, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 102
    .line 103
    new-instance v0, Lko7;

    .line 104
    .line 105
    invoke-direct {v0, p1, v2, p0, v3}, Lko7;-><init>(Lih6;Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;Lzn7;Llh6;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    check-cast p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 116
    .line 117
    check-cast v2, Lbs0;

    .line 118
    .line 119
    iget-object p1, v2, Lgm7;->e:Lfm7;

    .line 120
    .line 121
    iget-object p1, p1, Lfm7;->a:Ljava/util/List;

    .line 122
    .line 123
    invoke-static {p1}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p0, p1}, Lns0;->j(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/util/ArrayList;)V

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
