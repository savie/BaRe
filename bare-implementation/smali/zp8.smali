.class public final Lzp8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ltp7;

.field public b:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lzp8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lzp8;

    .line 6
    .line 7
    iget-object p1, p1, Lzp8;->a:Ltp7;

    .line 8
    .line 9
    iget-object p0, p0, Lzp8;->a:Ltp7;

    .line 10
    .line 11
    if-ne p1, p0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    check-cast p1, Lp5;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lzp8;->a:Ltp7;

    .line 21
    .line 22
    if-ne p1, p0, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lzp8;->b:I

    .line 2
    .line 3
    return p0
.end method
