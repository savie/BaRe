.class public final Lse8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyy8;


# instance fields
.field public a:Lnz8;

.field public b:[B

.field public c:[B


# virtual methods
.method public final a()Lnz8;
    .locals 0

    .line 1
    iget-object p0, p0, Lse8;->a:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lnz8;
    .locals 0

    .line 1
    iget-object p0, p0, Lse8;->b:[B

    .line 2
    .line 3
    invoke-static {p0}, Lnz8;->b([B)Lnz8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final c([BII)V
    .locals 0

    .line 1
    add-int/2addr p3, p2

    .line 2
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lpz8;->a([B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lse8;->b:[B

    .line 11
    .line 12
    return-void
.end method

.method public final d()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lse8;->b:[B

    .line 2
    .line 3
    invoke-static {p0}, Lpz8;->a([B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lse8;->c:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lpz8;->a([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lse8;->b:[B

    .line 11
    .line 12
    invoke-static {p0}, Lpz8;->a([B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final f()Lnz8;
    .locals 1

    .line 1
    iget-object v0, p0, Lse8;->c:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lnz8;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    invoke-direct {p0, v0}, Lnz8;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lse8;->b:[B

    .line 13
    .line 14
    invoke-static {p0}, Lnz8;->b([B)Lnz8;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final h([BII)V
    .locals 0

    .line 1
    add-int/2addr p3, p2

    .line 2
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lpz8;->a([B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lse8;->c:[B

    .line 11
    .line 12
    iget-object p2, p0, Lse8;->b:[B

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lpz8;->a([B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lse8;->b:[B

    .line 21
    .line 22
    :cond_0
    return-void
.end method
