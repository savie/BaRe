.class public final Lv16;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final u(Lwj8;)Z
    .locals 2

    .line 1
    const/4 p0, 0x2

    .line 2
    const/4 v0, 0x6

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v1, p0, v0}, Lwj8;->b(III)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-gez p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x3

    .line 12
    const/4 v0, 0x5

    .line 13
    invoke-virtual {p1, v1, p0, v0}, Lwj8;->b(III)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-ltz p0, :cond_1

    .line 18
    .line 19
    :goto_0
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method
