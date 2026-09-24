.class public abstract Loo8;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final U(Lao8;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lao8;->a:Lyn8;

    .line 5
    .line 6
    iget-object v1, v0, Lyn8;->a:Lq63;

    .line 7
    .line 8
    invoke-virtual {v1}, Lq63;->j()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sput-object p1, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 15
    .line 16
    const-class p1, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 17
    .line 18
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, v0, Lyn8;->e:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Lqf;

    .line 31
    .line 32
    const/16 v1, 0x11

    .line 33
    .line 34
    invoke-direct {v0, v1, p0, p1}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {p0, v1, v0, p1}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public abstract V()Lpo8;
.end method

.method public W()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Loo8;->V()Lpo8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lpo8;->e:Lix6;

    .line 6
    .line 7
    new-instance v1, Lcz;

    .line 8
    .line 9
    const/16 v2, 0x14

    .line 10
    .line 11
    invoke-direct {v1, p0, v2}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lur0;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-direct {v2, v3, v1}, Lur0;-><init>(ILmt3;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0, v2}, Lix6;->e(Lfu4;Les5;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Loo8;->V()Lpo8;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lpo8;->f:Lix6;

    .line 28
    .line 29
    new-instance v1, Lu10;

    .line 30
    .line 31
    const/16 v2, 0x13

    .line 32
    .line 33
    invoke-direct {v1, p0, v2}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lur0;

    .line 37
    .line 38
    invoke-direct {v2, v3, v1}, Lur0;-><init>(ILmt3;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0, v2}, Lix6;->e(Lfu4;Les5;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
