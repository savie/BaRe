.class public abstract Lm5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyy8;


# instance fields
.field public a:J

.field public b:[B

.field public c:[B


# virtual methods
.method public final b()Lnz8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm5;->f()Lnz8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final c([BII)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    if-lt p3, v0, :cond_1

    .line 3
    .line 4
    aget-byte v1, p1, p2

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, p2, 0x1

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-static {p1, v1, v2}, Lwx3;->j([BII)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, p0, Lm5;->a:J

    .line 17
    .line 18
    sub-int/2addr p3, v0

    .line 19
    new-array v1, p3, [B

    .line 20
    .line 21
    iput-object v1, p0, Lm5;->b:[B

    .line 22
    .line 23
    add-int/2addr p2, v0

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lm5;->c:[B

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    .line 33
    .line 34
    const-string p1, "Unsupported version ["

    .line 35
    .line 36
    const-string p2, "] for UniCode path extra data."

    .line 37
    .line 38
    invoke-static {v1, p1, p2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    new-instance p0, Ljava/util/zip/ZipException;

    .line 47
    .line 48
    const-string p1, "UniCode path extra data must have at least 5 bytes."

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final d()[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm5;->e()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lm5;->c:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lm5;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lm5;->c:[B

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    array-length v0, p0

    .line 13
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final f()Lnz8;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5;->c:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lm5;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lm5;->c:[B

    .line 9
    .line 10
    invoke-static {p0}, Lnz8;->b([B)Lnz8;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lm5;->b:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    array-length v0, v0

    .line 7
    const/4 v1, 0x5

    .line 8
    add-int/2addr v0, v1

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    iput-object v0, p0, Lm5;->c:[B

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    aput-byte v3, v0, v2

    .line 16
    .line 17
    iget-wide v4, p0, Lm5;->a:J

    .line 18
    .line 19
    invoke-static {v4, v5}, Llz8;->a(J)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v4, p0, Lm5;->c:[B

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lm5;->b:[B

    .line 30
    .line 31
    iget-object p0, p0, Lm5;->c:[B

    .line 32
    .line 33
    array-length v3, v0

    .line 34
    invoke-static {v0, v2, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final h([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lm5;->c([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
