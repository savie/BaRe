.class public final Lsf;
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
    iput p4, p0, Lsf;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lsf;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lsf;->c:Ljava/lang/Object;

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
    iget p1, p0, Lsf;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lsf;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lsf;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lsf;

    .line 11
    .line 12
    check-cast p0, Lpo8;

    .line 13
    .line 14
    check-cast v0, Lao8;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {p1, p0, v0, p2, v1}, Lsf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_0
    new-instance p1, Lsf;

    .line 22
    .line 23
    check-cast p0, Lme5;

    .line 24
    .line 25
    check-cast v0, Lvd5;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {p1, p0, v0, p2, v1}, Lsf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, Lsf;

    .line 33
    .line 34
    check-cast p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 35
    .line 36
    check-cast v0, Lzf;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {p1, p0, v0, p2, v1}, Lsf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lsf;->a:I

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
    invoke-virtual {p0, p1, p2}, Lsf;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lsf;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lsf;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lsf;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lsf;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lsf;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lsf;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lsf;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lsf;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lsf;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lsf;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lsf;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p0, Lpo8;

    .line 16
    .line 17
    check-cast v2, Lao8;

    .line 18
    .line 19
    iget-object p1, v2, Lao8;->a:Lyn8;

    .line 20
    .line 21
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lpo8;->j(Ljava/util/List;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lpo8;->e:Lix6;

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object v1

    .line 37
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    check-cast p0, Lme5;

    .line 41
    .line 42
    const p1, 0x7f130209

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lqo0;->h(I)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lud5;->a:Lgv7;

    .line 49
    .line 50
    check-cast v2, Lvd5;

    .line 51
    .line 52
    invoke-static {v2}, Lud5;->d(Lvd5;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0}, Lqo0;->f()V

    .line 57
    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->P()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p0, p0, Lme5;->e:Lix6;

    .line 66
    .line 67
    new-instance p1, Lke5;

    .line 68
    .line 69
    invoke-virtual {v2}, Lvd5;->getLocalFile()Lq63;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p1, v0}, Lke5;-><init>(Lq63;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-object v1

    .line 80
    :pswitch_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lmp6;->a:Lmp6;

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    const/4 v3, 0x2

    .line 87
    const/4 v4, 0x0

    .line 88
    invoke-static {p1, v0, v4, v3}, Lmp6;->d(Lmp6;ZZI)Z

    .line 89
    .line 90
    .line 91
    sget-object p1, Lzn4;->a:Lzn4;

    .line 92
    .line 93
    check-cast p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 94
    .line 95
    check-cast v2, Lzf;

    .line 96
    .line 97
    new-instance p1, Lqf;

    .line 98
    .line 99
    invoke-direct {p1, v4, p0, v2}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 103
    .line 104
    .line 105
    return-object v1

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
