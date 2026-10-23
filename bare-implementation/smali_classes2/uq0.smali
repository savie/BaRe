.class public final Luq0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Leq0;


# virtual methods
.method public final a(Lyq0;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p0, p1, Lyq0;->a:I

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    sget-object v0, Lwq0;->a:Lwq0;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lwq0;->b:Lex6;

    .line 17
    .line 18
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "Setup finished: result="

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v6, 0x4

    .line 59
    const/4 v7, 0x0

    .line 60
    const-string v3, "BillingManager"

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-static/range {v2 .. v7}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 9

    .line 1
    sget-object p0, Lwq0;->a:Lwq0;

    .line 2
    .line 3
    sget-object v0, Lwq0;->b:Lex6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 18
    .line 19
    const/4 v7, 0x4

    .line 20
    const/4 v8, 0x0

    .line 21
    const-string v4, "BillingManager"

    .line 22
    .line 23
    const-string v5, "Service disconnected"

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lwq0;->f()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
