.class public final Lmf0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ly61;


# instance fields
.field public a:Lsw0;


# virtual methods
.method public final a(I[B[B)I
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    iget-object v0, p0, Lmf0;->a:Lsw0;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, p1

    .line 6
    move-object v1, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lsw0;->f([BII[BI)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final doFinal([BI)I
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lmf0;->a:Lsw0;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lsw0;->a([BI)I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Lyf4; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lh67;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public final init([B)V
    .locals 4

    .line 1
    iget-object p0, p0, Lmf0;->a:Lsw0;

    .line 2
    .line 3
    new-instance v0, Lb92;

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    invoke-direct {v0, p1, v1}, Loo4;-><init>([BI)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1}, Lb92;->a([BI)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    array-length v2, p1

    .line 17
    :goto_0
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    invoke-static {p1, v1}, Lb92;->a([BI)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x8

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "attempt to create weak DESede key"

    .line 29
    .line 30
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1, v0}, Lsw0;->d(ZLz61;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    const-string p0, "attempt to create weak DES key"

    .line 40
    .line 41
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
