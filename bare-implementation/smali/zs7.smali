.class public final Lzs7;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p0, Lzs7;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lzs7;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lzs7;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lzs7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p0, Lrs9;->m:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x1

    .line 10
    sput-boolean p0, Lrs9;->m:Z

    .line 11
    .line 12
    new-instance p0, Lr80;

    .line 13
    .line 14
    new-instance p1, Lrx;

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    invoke-direct {p1, v0}, Lrx;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lr80;-><init>(Lrx;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/content/IntentFilter;

    .line 24
    .line 25
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->C(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 34
    .line 35
    return-object p0
.end method
