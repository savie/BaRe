.class public final Lt44;
.super Landroidx/fragment/app/b0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final c()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public final g(I)Landroidx/fragment/app/o;
    .locals 0

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_2

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p1, p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    if-ne p1, p0, :cond_0

    .line 11
    .line 12
    new-instance p0, Lo7;

    .line 13
    .line 14
    invoke-direct {p0}, Lo7;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "MFragmentPagerAdapter.getItem(): No fragment for index = "

    .line 19
    .line 20
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    new-instance p0, Lm37;

    .line 30
    .line 31
    invoke-direct {p0}, Lm37;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    new-instance p0, Lgg1;

    .line 36
    .line 37
    invoke-direct {p0}, Lgg1;-><init>()V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    new-instance p0, Lx92;

    .line 42
    .line 43
    invoke-direct {p0}, Lx92;-><init>()V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method
