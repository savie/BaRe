.class public final Ljm2;
.super Lkm2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final c(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final d(IIZ)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    const/4 p3, 0x3

    .line 5
    if-eq p1, p3, :cond_1

    .line 6
    .line 7
    :cond_0
    if-ne p1, p0, :cond_2

    .line 8
    .line 9
    :cond_1
    const/4 p1, 0x2

    .line 10
    if-ne p2, p1, :cond_2

    .line 11
    .line 12
    return p0

    .line 13
    :cond_2
    const/4 p0, 0x0

    .line 14
    return p0
.end method
