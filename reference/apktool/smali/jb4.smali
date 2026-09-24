.class public final Ljb4;
.super Lh3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lun2;Lke;)Lgt0;
    .locals 2

    .line 1
    iget p0, p1, Lun2;->g:I

    .line 2
    .line 3
    const/4 p2, 0x4

    .line 4
    if-lt p0, p2, :cond_0

    .line 5
    .line 6
    iget-boolean p0, p1, Lun2;->h:Z

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lun2;->h()Lg3;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lg3;->e()Lws0;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of p0, p0, Lrw5;

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    new-instance p0, Lkb4;

    .line 23
    .line 24
    invoke-direct {p0}, Lkb4;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    new-array v0, v0, [Lg3;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    aput-object p0, v0, v1

    .line 32
    .line 33
    new-instance p0, Lgt0;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lgt0;-><init>([Lg3;)V

    .line 36
    .line 37
    .line 38
    iget p1, p1, Lun2;->c:I

    .line 39
    .line 40
    add-int/2addr p1, p2

    .line 41
    iput p1, p0, Lgt0;->c:I

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method
