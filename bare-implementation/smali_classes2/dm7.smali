.class public final Ldm7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Ldm7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ldm7;->a:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v2, 0x9

    .line 11
    .line 12
    if-gt v0, v2, :cond_1

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    iput v0, p0, Ldm7;->a:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    add-int/lit8 v0, v0, -0x6

    .line 19
    .line 20
    iput v0, p0, Ldm7;->a:I

    .line 21
    .line 22
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Ldm7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v0, 0xb

    .line 10
    .line 11
    :goto_0
    iput v0, p0, Ldm7;->a:I

    .line 12
    .line 13
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget v0, p0, Ldm7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v1, 0xa

    .line 8
    .line 9
    :goto_0
    iput v1, p0, Ldm7;->a:I

    .line 10
    .line 11
    return-void
.end method
