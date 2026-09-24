.class public interface abstract Ljh1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public a()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lo23;

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public abstract b()V
.end method

.method public abstract c(Ljava/lang/String;Lt15;)Ltc4;
.end method

.method public abstract d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
.end method

.method public abstract e(Lc62;Ljava/lang/String;JLcz;)V
.end method

.method public abstract f(Ljava/lang/String;)Lpg1;
.end method

.method public abstract g()Ldd1;
.end method

.method public abstract h(Ljava/lang/String;)V
.end method

.method public abstract i()Z
.end method

.method public abstract j(Ljava/lang/String;)V
.end method

.method public abstract k()Z
.end method

.method public abstract l()Lni1;
.end method

.method public abstract m()Z
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public o(Ljava/lang/String;)Lih1;
    .locals 8

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Ljh1;->r(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lih1;->Exists:Lih1;

    .line 8
    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    move-object v4, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p0, Lih1;->Missing:Lih1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :goto_0
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    invoke-interface {p0}, Ljh1;->n()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string p0, "getMetadataPathExistence: Exists check failed for path: "

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/16 v6, 0x8

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static/range {v1 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lih1;->Unknown:Lih1;

    .line 36
    .line 37
    return-object p0
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public q(Ljava/lang/String;)Lhh1;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lgh1;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljh1;->s(Ljava/lang/String;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lgh1;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    move-object v4, v0

    .line 16
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    invoke-interface {p0}, Ljh1;->n()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string p0, "listMetadataDirectory: List failed for path: "

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/16 v6, 0x8

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static/range {v1 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lfh1;->a:Lfh1;

    .line 36
    .line 37
    return-object p0
.end method

.method public abstract r(Ljava/lang/String;)Z
.end method

.method public abstract s(Ljava/lang/String;)Ljava/util/List;
.end method
