.class public final Lz9;
.super Lda;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final d(Ldn4;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lda;->f:[Lqi4;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x2

    .line 5
    add-int/2addr v1, v2

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p1, v1, v3

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    aput-object p2, v1, p1

    .line 13
    .line 14
    array-length p1, v0

    .line 15
    invoke-static {v0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object p1, p0, Lda;->d:Ljava/lang/reflect/Method;

    .line 19
    .line 20
    iget-object p0, p0, Lda;->c:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    invoke-static {}, Ld6;->n()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
