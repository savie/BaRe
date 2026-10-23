.class public abstract Le73;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le73;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    sget v0, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 2
    .line 3
    invoke-static {}, Lk55;->k()Lzd7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lk55;->j()Lzd7;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    :goto_0
    sget-object v0, Lo93;->ROOT:Lo93;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    sget-object v0, Lqe7;->a:Lgv7;

    .line 33
    .line 34
    invoke-static {}, Lle7;->f()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lqe7;->b()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    sget-object v0, Lo93;->SHIZUKU:Lo93;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    sget-object v0, Lo93;->NORMAL:Lo93;

    .line 50
    .line 51
    :goto_1
    invoke-static {p0, v0}, Le73;->c(Ljava/lang/String;Lo93;)Ld73;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object p0, Ld73;->FOUND:Ld73;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    if-ne v0, p0, :cond_3

    .line 58
    .line 59
    return v1

    .line 60
    :goto_2
    const-string v1, "Failed to select a shell backend for \'"

    .line 61
    .line 62
    const-string v2, "\'"

    .line 63
    .line 64
    invoke-static {v1, p0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :try_start_1
    sget-boolean v1, Lq63;->d:Z

    .line 69
    .line 70
    const-string v1, "FileContentProbe"

    .line 71
    .line 72
    sget-object v2, Lcy0;->b:Lrt3;

    .line 73
    .line 74
    invoke-interface {v2, v1, p0, v0}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    :catch_1
    :cond_3
    const/4 p0, 0x0

    .line 78
    return p0
.end method

.method public static b(Lub;)Ld73;
    .locals 4

    .line 1
    iget-object v0, p0, Lub;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {p0}, Lub;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_6

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0}, Lel1;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const-string v2, "__SWIFTBACKUP_FIND_STATUS__:"

    .line 26
    .line 27
    invoke-static {p0, v2, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v3, 0x1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-ne p0, v3, :cond_1

    .line 39
    .line 40
    sget-object p0, Ld73;->FOUND:Ld73;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    sget-object p0, Ld73;->UNKNOWN:Ld73;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    invoke-static {p0, v2}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/16 v1, 0xa

    .line 51
    .line 52
    invoke-static {v1, p0}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-eqz p0, :cond_5

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    sget-object p0, Ld73;->UNKNOWN:Ld73;

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-le p0, v3, :cond_4

    .line 72
    .line 73
    sget-object p0, Ld73;->FOUND:Ld73;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_4
    sget-object p0, Ld73;->EMPTY:Ld73;

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_5
    sget-object p0, Ld73;->UNKNOWN:Ld73;

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_6
    :goto_0
    sget-object p0, Ld73;->UNKNOWN:Ld73;

    .line 83
    .line 84
    return-object p0
.end method

.method public static c(Ljava/lang/String;Lo93;)Ld73;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Le73;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    const-string v1, "toybox find /dev/null -quit >/dev/null 2>&1"

    .line 13
    .line 14
    invoke-static {v1, p1}, Liz1;->z(Ljava/lang/String;Lo93;)Lub;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lub;->a()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v1, v0

    .line 34
    :cond_1
    :goto_0
    check-cast v1, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v1, "toybox find "

    .line 41
    .line 42
    invoke-static {p0}, Ljr7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-string v3, " ! -type d ! -type s -print -quit 2>/dev/null"

    .line 49
    .line 50
    :goto_1
    invoke-static {v1, v2, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const-string v3, " ! -type d ! -type s -print 2>/dev/null"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :goto_2
    const-string v2, "{ "

    .line 59
    .line 60
    const-string v3, "; status=$?; printf \'__SWIFTBACKUP_FIND_STATUS__:%s\\n\' \"$status\"; }"

    .line 61
    .line 62
    invoke-static {v2, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const-string v0, " | toybox head -n 1"

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_3
    invoke-static {v1, p1}, Liz1;->z(Ljava/lang/String;Lo93;)Lub;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Le73;->b(Lub;)Ld73;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object p0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "Content probe failed for \'"

    .line 88
    .line 89
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p0, "\' using "

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    :try_start_1
    sget-boolean p1, Lq63;->d:Z

    .line 108
    .line 109
    const-string p1, "FileContentProbe"

    .line 110
    .line 111
    sget-object v1, Lcy0;->b:Lrt3;

    .line 112
    .line 113
    invoke-interface {v1, p1, p0, v0}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    .line 115
    .line 116
    :catch_1
    sget-object p0, Ld73;->UNKNOWN:Ld73;

    .line 117
    .line 118
    return-object p0
.end method
