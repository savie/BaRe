.class public final synthetic Lfa5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Dns;


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lga5;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    new-instance v0, Lz63;

    .line 7
    .line 8
    sget-object v2, Lokhttp3/Dns;->a:Lokhttp3/Dns;

    .line 9
    .line 10
    const-class v3, Lokhttp3/Dns;

    .line 11
    .line 12
    const-string v4, "lookup"

    .line 13
    .line 14
    const-string v5, "lookup(Ljava/lang/String;)Ljava/util/List;"

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct/range {v0 .. v7}, Lz63;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lua5;->a:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    sget-object v1, Lua5;->b:Lta5;

    .line 26
    .line 27
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lta5;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/List;

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    sget-object v1, Lov2;->a:Lov2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    move-object p1, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit p0

    .line 54
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    sget-object p0, Lov2;->a:Lov2;

    .line 61
    .line 62
    sget-object v0, Lga5;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {p1, p0, v1, v0}, Lga5;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_1
    invoke-virtual {v0, p1}, Lz63;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Ljava/util/List;

    .line 78
    .line 79
    sget-object v0, Lov2;->a:Lov2;

    .line 80
    .line 81
    sget-object v1, Lga5;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {p1, p0, v0, v1}, Lga5;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :goto_1
    monitor-exit p0

    .line 93
    throw p1
.end method
