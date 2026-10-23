.class public final Laf9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxe9;


# instance fields
.field public volatile a:Lxe9;

.field public b:Ljava/lang/Object;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Laf9;->a:Lxe9;

    .line 2
    .line 3
    sget-object v1, Lsl4;->f:Lsl4;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Laf9;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "<supplier that returned "

    .line 14
    .line 15
    const-string v1, ">"

    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "Suppliers.memoize("

    .line 26
    .line 27
    const-string v1, ")"

    .line 28
    .line 29
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Laf9;->a:Lxe9;

    .line 2
    .line 3
    sget-object v1, Lsl4;->f:Lsl4;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Laf9;->a:Lxe9;

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Laf9;->a:Lxe9;

    .line 13
    .line 14
    invoke-interface {v0}, Lxe9;->zza()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Laf9;->b:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v1, p0, Laf9;->a:Lxe9;

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    monitor-exit p0

    .line 27
    goto :goto_1

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_1
    iget-object p0, p0, Laf9;->b:Ljava/lang/Object;

    .line 31
    .line 32
    return-object p0
.end method
