.class public final Lcg3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Laj8;


# virtual methods
.method public final onCancelled(Lwc2;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 5
    .line 6
    invoke-virtual {p1}, Lwc2;->c()Lxc2;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, "Listener cancelled: "

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "FCW"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onDataChange(Leb2;)V
    .locals 4

    .line 1
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    sget-object p1, Lgg3;->a:Lgg3;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    sget-wide v0, Lgg3;->g:J

    .line 21
    .line 22
    const-wide/16 v2, 0x1

    .line 23
    .line 24
    add-long/2addr v0, v2

    .line 25
    sput-wide v0, Lgg3;->g:J

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    sget-object p0, Lgg3;->h:Lbl7;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_1
    sput-object v2, Lgg3;->h:Lbl7;

    .line 41
    .line 42
    sget-object p0, Lxf3;->CONNECTED:Lxf3;

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lgg3;->j(Lxf3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p1

    .line 48
    return-void

    .line 49
    :cond_2
    :try_start_1
    sget-object p0, Lgg3;->h:Lbl7;

    .line 50
    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    sget-object p0, Lgg3;->b:Lxf3;

    .line 57
    .line 58
    sget-object v3, Lxf3;->DISCONNECTED:Lxf3;

    .line 59
    .line 60
    if-eq p0, v3, :cond_4

    .line 61
    .line 62
    sget-object p0, Lxf3;->CONNECTING:Lxf3;

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lgg3;->j(Lxf3;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    sget-object p0, Lzn4;->a:Lzn4;

    .line 68
    .line 69
    new-instance p0, Ldg3;

    .line 70
    .line 71
    invoke-direct {p0, v0, v1, v2}, Ldg3;-><init>(JLjv1;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v2, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sput-object p0, Lgg3;->h:Lbl7;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    monitor-exit p1

    .line 81
    return-void

    .line 82
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    throw p0
.end method
