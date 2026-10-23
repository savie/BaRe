.class public final Lfk;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    const-string v1, "-"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-static {p0, v1, v2}, Lnq7;->A0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    return-object v0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Error when retrieving backupTag: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v1, "AppBackup"

    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_7

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p0, v0}, Lfk;->c(Ljava/lang/String;Z)Lq63;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lq63;->j()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    invoke-virtual {v2}, Lq63;->B()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_6

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lq63;

    .line 64
    .line 65
    invoke-virtual {v4}, Lq63;->p()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    new-instance v5, Lhk;

    .line 70
    .line 71
    invoke-direct {v5, v4, p0, v0}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Lhk;->E()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_3

    .line 79
    .line 80
    move-object v5, v1

    .line 81
    :cond_3
    if-eqz v5, :cond_2

    .line 82
    .line 83
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_5

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    move-object v3, v1

    .line 95
    :goto_1
    if-eqz v3, :cond_6

    .line 96
    .line 97
    new-instance p0, Lcl7;

    .line 98
    .line 99
    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, v0}, Lcl7;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v3, p0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_6
    :goto_2
    return-object v1

    .line 109
    :cond_7
    invoke-static {}, Ld6;->o()V

    .line 110
    .line 111
    .line 112
    return-object v1
.end method

.method public static c(Ljava/lang/String;Z)Lq63;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lry5;->u:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p1, p1, Lry5;->h:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lry5;->u:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Lry5;->g:Ljava/lang/String;

    .line 24
    .line 25
    :goto_0
    new-instance v0, Lq63;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-direct {v0, p1, p0, v1}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static d(JLjava/util/List;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lhk;->I:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 p1, 0x0

    .line 21
    move-object v0, p1

    .line 22
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    :cond_1
    invoke-static {p2, v0}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    sget-object v1, Lxe6;->b:Lxe6;

    .line 37
    .line 38
    iget-object v1, v1, Lxe6;->a:Ljava/util/function/Supplier;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/Random;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    const/4 v3, 0x1

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static {v2, v3, v4, p1, v1}, Lnh4;->k(IZZ[CLjava/util/Random;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eq v2, v3, :cond_0

    .line 74
    .line 75
    move-object v0, v1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-string p1, "-"

    .line 78
    .line 79
    invoke-static {p0, p1, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/Long;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v0, "-"

    .line 6
    .line 7
    invoke-static {p0, v0, p0}, Lnq7;->F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v2, Lhk;->I:Lgv7;

    .line 12
    .line 13
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object v5, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move-object v0, v1

    .line 38
    :goto_0
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .line 46
    cmp-long p0, v2, v4

    .line 47
    .line 48
    if-lez p0, :cond_2

    .line 49
    .line 50
    return-object v0

    .line 51
    :goto_1
    const-string v0, "main"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string v0, "archived"

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 69
    .line 70
    const-string v0, "Error when parsing date from id \'"

    .line 71
    .line 72
    const-string v3, "\'"

    .line 73
    .line 74
    invoke-static {v0, p0, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/16 v7, 0x8

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    const-string v3, "AppBackup"

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_2
    return-object v1
.end method
