.class public final Lx33;
.super Lf43;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final c(Ll43;I)I
    .locals 1

    .line 1
    const/16 p0, 0x64

    .line 2
    .line 3
    if-ge p2, p0, :cond_1

    .line 4
    .line 5
    iget v0, p1, Ll43;->d:I

    .line 6
    .line 7
    add-int/2addr v0, p2

    .line 8
    iget p1, p1, Ll43;->e:I

    .line 9
    .line 10
    if-lt p2, p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    add-int/2addr v0, p0

    .line 14
    return v0

    .line 15
    :cond_1
    return p2
.end method
