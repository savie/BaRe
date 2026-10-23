.class public abstract Lqi4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract a(Lbn4;)Ljava/lang/Object;
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lnw0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lnw0;->Z(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lbn4;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lbn4;-><init>(Lnw0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lqi4;->a(Lbn4;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1}, Lbn4;->W()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance p0, Llj4;

    .line 28
    .line 29
    const-string p1, "JSON document was not fully consumed."

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final c()Lpp5;
    .locals 1

    .line 1
    instance-of v0, p0, Lpp5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lpp5;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lpp5;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lpp5;-><init>(Lqi4;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lnw0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ldn4;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ldn4;-><init>(Lnw0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1, p1}, Lqi4;->e(Ldn4;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lnw0;->v()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public abstract e(Ldn4;Ljava/lang/Object;)V
.end method
