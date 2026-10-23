.class public final Lji7;
.super Lmj1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Ldd1;

.field public d:Lh80;

.field public e:Lru3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmj1;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldd1;->SMB:Ldd1;

    .line 5
    .line 6
    iput-object v0, p0, Lji7;->c:Ldd1;

    .line 7
    .line 8
    return-void
.end method

.method public static A(Lwm2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Ls5;->k:Ls5;

    .line 2
    .line 3
    invoke-static {v0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Ls5;->e:Ls5;

    .line 8
    .line 9
    filled-new-array {v0, v2}, [Ls5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v2, Ls5;->p:Ls5;

    .line 18
    .line 19
    invoke-static {v2}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Ls5;->n:Ls5;

    .line 24
    .line 25
    invoke-static {v3}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x4

    .line 30
    new-array v4, v4, [Ljava/util/Set;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    aput-object v1, v4, v5

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    aput-object v0, v4, v1

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    aput-object v2, v4, v0

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    aput-object v3, v4, v0

    .line 43
    .line 44
    invoke-static {v4}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x0

    .line 53
    move-object v3, v2

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v6, v0

    .line 65
    check-cast v6, Ljava/util/Set;

    .line 66
    .line 67
    :try_start_0
    sget-object v8, Lju6;->e:Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .line 69
    const/4 v9, 0x2

    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    move-object v4, p0

    .line 73
    move-object v5, p1

    .line 74
    :try_start_1
    invoke-virtual/range {v4 .. v10}, Lwm2;->u(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lr63;

    .line 75
    .line 76
    .line 77
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    :try_start_2
    new-instance p1, Lj93;

    .line 79
    .line 80
    invoke-direct {p1, p2}, Lj93;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lmm2;->b:Lwm2;

    .line 84
    .line 85
    iget-object v6, p0, Lmm2;->c:Lnr6;

    .line 86
    .line 87
    invoke-virtual {v0, v6, p1}, Lwm2;->A(Lnr6;Lm93;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    :try_start_3
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :catch_0
    move-exception v0

    .line 95
    :goto_1
    move-object p0, v0

    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    move-object p1, v0

    .line 99
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    :try_start_5
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 105
    :catch_1
    move-exception v0

    .line 106
    move-object v4, p0

    .line 107
    move-object v5, p1

    .line 108
    goto :goto_1

    .line 109
    :goto_2
    if-nez v3, :cond_0

    .line 110
    .line 111
    move-object v3, p0

    .line 112
    :goto_3
    move-object p0, v4

    .line 113
    move-object p1, v5

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    invoke-static {v3, p0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_1
    move-object v4, p0

    .line 120
    move-object v5, p1

    .line 121
    move-object v2, v3

    .line 122
    :goto_4
    if-nez v2, :cond_2

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_2
    :try_start_6
    invoke-static {v4, v5, p2}, Lji7;->v(Lwm2;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v5}, Lwm2;->v(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 129
    .line 130
    .line 131
    :goto_5
    return-void

    .line 132
    :catch_2
    move-exception v0

    .line 133
    move-object p0, v0

    .line 134
    invoke-static {v2, p0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    throw v2
.end method

.method public static B(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "Invalid path: "

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static v(Lwm2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Ls5;->q:Ls5;

    .line 2
    .line 3
    invoke-static {v0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    sget-object v5, Lju6;->e:Ljava/util/Set;

    .line 8
    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    invoke-virtual/range {v1 .. v7}, Lwm2;->u(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lr63;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :try_start_0
    sget-object p1, Ls5;->p:Ls5;

    .line 19
    .line 20
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    sget-object p1, Lw63;->c:Lw63;

    .line 25
    .line 26
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const/4 v9, 0x6

    .line 31
    const/4 v10, 0x0

    .line 32
    move-object v4, v1

    .line 33
    move-object v8, v5

    .line 34
    move-object v5, p2

    .line 35
    invoke-virtual/range {v4 .. v10}, Lwm2;->u(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lr63;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    new-instance p2, Lo83;

    .line 40
    .line 41
    iget-object v0, p0, Lmm2;->b:Lwm2;

    .line 42
    .line 43
    iget v1, v0, Lvc7;->f:I

    .line 44
    .line 45
    iget-wide v2, v0, Lvc7;->k:J

    .line 46
    .line 47
    invoke-direct {p2, p0, v1, v2, v3}, Lo83;-><init>(Lr63;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    :try_start_2
    invoke-virtual {p1}, Lr63;->t0()Lb93;

    .line 51
    .line 52
    .line 53
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 54
    const/high16 v0, 0x40000

    .line 55
    .line 56
    :try_start_3
    invoke-static {p2, v1, v0}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 57
    .line 58
    .line 59
    :try_start_4
    invoke-virtual {v1}, Lb93;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 60
    .line 61
    .line 62
    :try_start_5
    invoke-virtual {p2}, Lo83;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 63
    .line 64
    .line 65
    :try_start_6
    invoke-virtual {v1}, Lb93;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 66
    .line 67
    .line 68
    :try_start_7
    invoke-virtual {p2}, Lo83;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 69
    .line 70
    .line 71
    :try_start_8
    invoke-virtual {p1}, Lmm2;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lmm2;->close()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    move-object p1, v0

    .line 80
    goto :goto_4

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    move-object p2, v0

    .line 83
    goto :goto_3

    .line 84
    :catchall_2
    move-exception v0

    .line 85
    move-object v1, v0

    .line 86
    goto :goto_2

    .line 87
    :catchall_3
    move-exception v0

    .line 88
    move-object v2, v0

    .line 89
    goto :goto_1

    .line 90
    :catchall_4
    move-exception v0

    .line 91
    move-object v2, v0

    .line 92
    goto :goto_0

    .line 93
    :catchall_5
    move-exception v0

    .line 94
    move-object v2, v0

    .line 95
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 96
    :catchall_6
    move-exception v0

    .line 97
    :try_start_a
    invoke-static {v1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 101
    :goto_0
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 102
    :catchall_7
    move-exception v0

    .line 103
    :try_start_c
    invoke-static {p2, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 107
    :goto_1
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 108
    :catchall_8
    move-exception v0

    .line 109
    :try_start_e
    invoke-static {v1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 113
    :goto_2
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 114
    :catchall_9
    move-exception v0

    .line 115
    :try_start_10
    invoke-static {p2, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 119
    :goto_3
    :try_start_11
    throw p2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 120
    :catchall_a
    move-exception v0

    .line 121
    :try_start_12
    invoke-static {p1, p2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 125
    :goto_4
    :try_start_13
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 126
    :catchall_b
    move-exception v0

    .line 127
    move-object p2, v0

    .line 128
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw p2
.end method


# virtual methods
.method public final C(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Lcy0;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v1, v0, [C

    .line 26
    .line 27
    const/16 v2, 0x5c

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aput-char v2, v1, v3

    .line 31
    .line 32
    const/4 v2, 0x6

    .line 33
    invoke-static {p0, v1, v2}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v0, p0}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v5, 0x0

    .line 42
    const/16 v6, 0x3e

    .line 43
    .line 44
    const-string v2, "\\"

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p1}, Lcy0;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_0
    const-string v0, "\\"

    .line 64
    .line 65
    invoke-static {p0, v0, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_1
    const-string p1, "Invalid path in getCredentials().path="

    .line 71
    .line 72
    const-string v0, ". The path must at least have a share name!"

    .line 73
    .line 74
    invoke-static {p1, p0, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method

.method public final D(Z)V
    .locals 11

    .line 1
    const-string v0, "Negotiated protocol: "

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lji7;->z(Z)Lur1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :try_start_0
    iget-object v1, p1, Lur1;->c:Lxr1;

    .line 8
    .line 9
    iget-object v1, v1, Lxr1;->b:Lru3;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lru3;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lji7;->e:Lru3;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Lru3;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    move-object p0, v0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    move-object v3, v4

    .line 32
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iput-object v1, p0, Lji7;->e:Lru3;

    .line 39
    .line 40
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 41
    .line 42
    const-string v6, "SmbService"

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const/4 v9, 0x4

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lji7;->d:Lh80;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lur1;->a(Lh80;)Lj87;

    .line 65
    .line 66
    .line 67
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    invoke-virtual {p0}, Lji7;->y()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Lj87;->a(Ljava/lang/String;)Lvc7;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lwm2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    :try_start_2
    invoke-virtual {p0}, Lwm2;->m()Lwc7;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 79
    .line 80
    .line 81
    :try_start_3
    invoke-static {p0, v4}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    .line 83
    .line 84
    :try_start_4
    invoke-static {v1, v4}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    move-object p0, v0

    .line 93
    goto :goto_1

    .line 94
    :catchall_2
    move-exception v0

    .line 95
    move-object v2, v0

    .line 96
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 97
    :catchall_3
    move-exception v0

    .line 98
    :try_start_6
    invoke-static {p0, v2}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 102
    :goto_1
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 103
    :catchall_4
    move-exception v0

    .line 104
    :try_start_8
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 108
    :goto_2
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 109
    :catchall_5
    move-exception v0

    .line 110
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw v0
.end method

.method public final declared-synchronized E(Lmt3;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v0, "Negotiated protocol: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getEncryption()Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v1}, Lji7;->z(Z)Lur1;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-object v2, v1, Lur1;->c:Lxr1;

    .line 23
    .line 24
    iget-object v2, v2, Lxr1;->b:Lru3;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lru3;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, p0, Lji7;->e:Lru3;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v4}, Lru3;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    move-object p1, v0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    move-object v4, v5

    .line 47
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    iput-object v2, p0, Lji7;->e:Lru3;

    .line 54
    .line 55
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 56
    .line 57
    const-string v7, "SmbService"

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    const/4 v10, 0x4

    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lji7;->d:Lh80;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lur1;->a(Lh80;)Lj87;

    .line 80
    .line 81
    .line 82
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    invoke-virtual {p0}, Lji7;->y()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v2, v0}, Lj87;->a(Ljava/lang/String;)Lvc7;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    move-object v3, v0

    .line 92
    check-cast v3, Lwm2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    .line 94
    :try_start_3
    invoke-interface {p1, v3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 98
    :try_start_4
    invoke-static {v3, v5}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 99
    .line 100
    .line 101
    :try_start_5
    invoke-static {v2, v5}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    :try_start_6
    invoke-virtual {v1, v0}, Lur1;->b(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 106
    .line 107
    .line 108
    monitor-exit p0

    .line 109
    return-object p1

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    move-object p1, v0

    .line 112
    goto :goto_3

    .line 113
    :catchall_2
    move-exception v0

    .line 114
    move-object p1, v0

    .line 115
    goto :goto_1

    .line 116
    :catchall_3
    move-exception v0

    .line 117
    move-object p1, v0

    .line 118
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 119
    :catchall_4
    move-exception v0

    .line 120
    :try_start_8
    invoke-static {v3, p1}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 124
    :goto_1
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 125
    :catchall_5
    move-exception v0

    .line 126
    :try_start_a
    invoke-static {v2, p1}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 130
    :goto_2
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 131
    :catchall_6
    move-exception v0

    .line 132
    :try_start_c
    invoke-static {v1, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :goto_3
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 137
    throw p1
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized c(Ljava/lang/String;Lt15;)Ltc4;
    .locals 9

    .line 1
    const-string v1, "get: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lji7;->B(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getEncryption()Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p1}, Lji7;->z(Z)Lur1;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lji7;->d:Lh80;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lur1;->a(Lh80;)Lj87;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lji7;->y()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Lj87;->a(Ljava/lang/String;)Lvc7;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lwm2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    :try_start_1
    sget-object v4, Ls5;->q:Ls5;

    .line 49
    .line 50
    invoke-static {v4}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    sget-object v6, Lju6;->e:Ljava/util/Set;

    .line 55
    .line 56
    const/4 v7, 0x2

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-virtual/range {v2 .. v8}, Lwm2;->u(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lr63;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz p2, :cond_0

    .line 64
    .line 65
    new-instance v4, Lo83;

    .line 66
    .line 67
    iget-object v5, v3, Lmm2;->b:Lwm2;

    .line 68
    .line 69
    iget v6, v5, Lvc7;->f:I

    .line 70
    .line 71
    iget-wide v7, v5, Lvc7;->k:J

    .line 72
    .line 73
    invoke-direct {v4, v3, v6, v7, v8}, Lo83;-><init>(Lr63;IJ)V

    .line 74
    .line 75
    .line 76
    iget-wide v5, p2, Lt15;->a:J

    .line 77
    .line 78
    invoke-virtual {v4, v5, v6}, Lo83;->skip(J)J

    .line 79
    .line 80
    .line 81
    iget-wide v5, p2, Lt15;->b:J

    .line 82
    .line 83
    iget-wide v7, p2, Lt15;->a:J

    .line 84
    .line 85
    sub-long/2addr v5, v7

    .line 86
    const-wide/16 v7, 0x1

    .line 87
    .line 88
    add-long/2addr v5, v7

    .line 89
    invoke-static {}, Lwu0;->b()Lvu0;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    new-instance v7, Ly4;

    .line 94
    .line 95
    invoke-direct {v7, v4}, Ly4;-><init>(Ljava/io/InputStream;)V

    .line 96
    .line 97
    .line 98
    iput-object v7, p2, Ll5;->k:Ly4;

    .line 99
    .line 100
    invoke-virtual {p2, v5, v6}, Lvu0;->K(J)V

    .line 101
    .line 102
    .line 103
    new-instance v4, Lwu0;

    .line 104
    .line 105
    invoke-direct {v4, p2}, Lwu0;-><init>(Lvu0;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    move-object p1, v0

    .line 111
    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    move-object p1, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_0
    new-instance v4, Lo83;

    .line 116
    .line 117
    iget-object p2, v3, Lmm2;->b:Lwm2;

    .line 118
    .line 119
    iget v5, p2, Lvc7;->f:I

    .line 120
    .line 121
    iget-wide v6, p2, Lvc7;->k:J

    .line 122
    .line 123
    invoke-direct {v4, v3, v5, v6, v7}, Lo83;-><init>(Lr63;IJ)V

    .line 124
    .line 125
    .line 126
    :goto_0
    new-instance p2, Ltc4;

    .line 127
    .line 128
    new-instance v5, Lii7;

    .line 129
    .line 130
    invoke-direct {v5, v3, v2, v0, p1}, Lii7;-><init>(Lr63;Lwm2;Lj87;Lur1;)V

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x4

    .line 134
    invoke-direct {p2, v4, v5, p1}, Ltc4;-><init>(Ljava/io/InputStream;Lbt3;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    monitor-exit p0

    .line 138
    return-object p2

    .line 139
    :goto_1
    :try_start_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 140
    .line 141
    const-string v3, "SmbService"

    .line 142
    .line 143
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const/4 v6, 0x4

    .line 152
    const/4 v7, 0x0

    .line 153
    const/4 v5, 0x0

    .line 154
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    throw p1
.end method

.method public final d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getEncryption()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lji7;->D(Z)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 19
    .line 20
    invoke-direct {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    move-object p1, v0

    .line 26
    const-string v0, "SmbService"

    .line 27
    .line 28
    const-string v1, "login"

    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 38
    .line 39
    const-string v0, "login "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v6, 0x4

    .line 46
    const/4 v7, 0x0

    .line 47
    const-string v3, "SmbService"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    instance-of v0, p1, Lmf8;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UntrustedCertificate;

    .line 58
    .line 59
    check-cast p1, Lmf8;

    .line 60
    .line 61
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UntrustedCertificate;-><init>(Lmf8;)V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getEncryption()Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v2, 0x1

    .line 80
    const/4 v3, 0x0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v4, "encrypt"

    .line 89
    .line 90
    invoke-static {v0, v4, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_2

    .line 95
    .line 96
    const-string v4, "STATUS_ACCESS_DENIED"

    .line 97
    .line 98
    invoke-static {v0, v4, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    :cond_2
    :try_start_1
    invoke-virtual {p0, v2}, Lji7;->D(Z)V

    .line 105
    .line 106
    .line 107
    sget-object p0, Lbe8;->a:Lbe8;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    move-object p0, v0

    .line 112
    new-instance v0, Lbn6;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    move-object p0, v0

    .line 118
    :goto_0
    instance-of p0, p0, Lbn6;

    .line 119
    .line 120
    xor-int/lit8 v3, p0, 0x1

    .line 121
    .line 122
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 123
    .line 124
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 125
    .line 126
    new-instance v0, Lei7;

    .line 127
    .line 128
    const-string v1, "SMB server requires Data Encryption (SMB 3+). Enable Data Encryption and try again."

    .line 129
    .line 130
    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_4
    const-string p0, "Invalid URL host"

    .line 138
    .line 139
    const-string v0, "Authentication failed for"

    .line 140
    .line 141
    const-string v3, "401 Unauthorized"

    .line 142
    .line 143
    filled-new-array {v3, p0, v0}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v1, v0, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    :goto_2
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 184
    .line 185
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 186
    .line 187
    .line 188
    :goto_3
    return-object p0
.end method

.method public final e(Lc62;Ljava/lang/String;JLcz;)V
    .locals 9

    .line 1
    invoke-static {p2}, Lji7;->B(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, ".tmp"

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    new-instance v1, Lhi7;

    .line 11
    .line 12
    move-object v2, p0

    .line 13
    move-object v5, p1

    .line 14
    move-object v4, p2

    .line 15
    move-wide v6, p3

    .line 16
    move-object v8, p5

    .line 17
    invoke-direct/range {v1 .. v8}, Lhi7;-><init>(Lji7;Ljava/lang/String;Ljava/lang/String;Lc62;JLmt3;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final f(Ljava/lang/String;)Lpg1;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq24;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1, p0, p1}, Lq24;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lpg1;

    .line 15
    .line 16
    return-object p0
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lji7;->c:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized h(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lji7;->B(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lbz;

    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    invoke-direct {v0, v1, p0, p1}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lji7;->E(Lmt3;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lji7;->B(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lhq0;

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-direct {v0, v1, p0, p1}, Lhq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final l()Lni1;
    .locals 2

    .line 1
    new-instance v0, Lhw;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lhw;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lni1;

    .line 12
    .line 13
    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SmbService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lih1;
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lnj2;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lnj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lih1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    move-object p0, v0

    .line 16
    const-string p1, "SmbService"

    .line 17
    .line 18
    const-string v0, "getMetadataPathExistence"

    .line 19
    .line 20
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 24
    .line 25
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "getMetadataPathExistence: "

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v5, 0x4

    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v2, "SmbService"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lih1;->Unknown:Lih1;

    .line 44
    .line 45
    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lhh1;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lxs;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1, p0, p1}, Lxs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lhh1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    move-object p0, v0

    .line 19
    const-string p1, "SmbService"

    .line 20
    .line 21
    const-string v0, "listMetadataDirectory"

    .line 22
    .line 23
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 27
    .line 28
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "listMetadataDirectory: "

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v5, 0x4

    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v2, "SmbService"

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lfh1;->a:Lfh1;

    .line 47
    .line 48
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljj2;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1, p0, p1}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final s(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Leh2;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1, p0, p1}, Leh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/List;

    .line 15
    .line 16
    return-object p0
.end method

.method public final u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lmj1;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getValidUsername()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPassword()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    :cond_0
    new-instance v1, Lh80;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0, p1}, Lh80;-><init>(Ljava/lang/String;[C)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lji7;->d:Lh80;

    .line 32
    .line 33
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcy0;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v1, v0, [C

    .line 7
    .line 8
    const/16 v2, 0x5c

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-char v2, v1, v3

    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    invoke-static {p1, v1, v2}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lel1;->O0(ILjava/util/List;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v5, 0x0

    .line 23
    const/16 v6, 0x3e

    .line 24
    .line 25
    const-string v2, "\\"

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lji7;->h(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lji7;->r(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const-string p0, "Check failed."

    .line 44
    .line 45
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final x(Ljava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lgi7;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v3, v1, v2, v4}, Lgi7;-><init>(Ljava/lang/String;Ljava/util/LinkedHashMap;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p1}, Lji7;->r(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide/16 v5, 0x1f4

    .line 29
    .line 30
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    const-string v3, "Attempting delete with Method 2"

    .line 34
    .line 35
    const-string v7, "SmbService"

    .line 36
    .line 37
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    new-instance v3, Lgi7;

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    invoke-direct {v3, v1, v2, v8}, Lgi7;-><init>(Ljava/lang/String;Ljava/util/LinkedHashMap;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p1}, Lji7;->r(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .line 58
    .line 59
    :catch_1
    const-string v3, "Attempting delete with Method 3"

    .line 60
    .line 61
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    new-instance v3, Lhf;

    .line 65
    .line 66
    const/4 v5, 0x2

    .line 67
    invoke-direct {v3, v5, v1, v2}, Lhf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Lji7;->E(Lmt3;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p0 .. p1}, Lji7;->r(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    :goto_0
    return v4

    .line 80
    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    move-object v11, v2

    .line 105
    check-cast v11, Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    move-object v12, v1

    .line 112
    check-cast v12, Ljava/lang/Exception;

    .line 113
    .line 114
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 115
    .line 116
    const/16 v14, 0x8

    .line 117
    .line 118
    const/4 v15, 0x0

    .line 119
    const-string v10, "SmbService"

    .line 120
    .line 121
    const/4 v13, 0x0

    .line 122
    invoke-static/range {v9 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    return v8
.end method

.method public final y()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lcy0;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p0, v0

    .line 18
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [C

    .line 22
    .line 23
    const/16 v2, 0x5c

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-char v2, v1, v3

    .line 27
    .line 28
    const/4 v2, 0x6

    .line 29
    invoke-static {p0, v1, v2}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v1, v0

    .line 41
    :goto_1
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_2
    const-string v2, "\' from path \'"

    .line 51
    .line 52
    const-string v3, "\'"

    .line 53
    .line 54
    const-string v4, "Invalid share name \'"

    .line 55
    .line 56
    invoke-static {v4, v1, v2, p0, v3}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public final z(Z)Lur1;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lav6;

    .line 6
    .line 7
    new-instance v1, Ldi7;

    .line 8
    .line 9
    invoke-direct {v1}, Ldi7;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Ldi7;->d:Ljava/util/Random;

    .line 13
    .line 14
    new-instance v3, Lbw8;

    .line 15
    .line 16
    sget-object v4, Lzv8;->b:Lzv8;

    .line 17
    .line 18
    sget-object v5, Law8;->b:Law8;

    .line 19
    .line 20
    sget-object v6, Lyv8;->b:Lyv8;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v4, v3, Lbw8;->a:Lzv8;

    .line 26
    .line 27
    iput-object v5, v3, Lbw8;->b:Law8;

    .line 28
    .line 29
    const/16 v4, 0x1db0

    .line 30
    .line 31
    iput v4, v3, Lbw8;->c:I

    .line 32
    .line 33
    iput-object v6, v3, Lbw8;->d:Lyv8;

    .line 34
    .line 35
    const/16 v4, 0x20

    .line 36
    .line 37
    new-array v4, v4, [B

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v4, "Client GUID may not be null"

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v2, :cond_c

    .line 50
    .line 51
    iput-object v2, v1, Ldi7;->e:Ljava/util/UUID;

    .line 52
    .line 53
    new-instance v2, Llv1;

    .line 54
    .line 55
    const/4 v6, 0x7

    .line 56
    invoke-direct {v2, v6}, Llv1;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object v2, v1, Ldi7;->h:Llv1;

    .line 60
    .line 61
    new-instance v2, Lma6;

    .line 62
    .line 63
    invoke-direct {v2}, Lma6;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v2, v1, Ldi7;->c:Ljavax/net/SocketFactory;

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    iput-boolean v2, v1, Ldi7;->f:Z

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    iput-boolean v6, v1, Ldi7;->g:Z

    .line 73
    .line 74
    const/high16 v7, 0x100000

    .line 75
    .line 76
    iput v7, v1, Ldi7;->i:I

    .line 77
    .line 78
    iput v7, v1, Ldi7;->k:I

    .line 79
    .line 80
    iput v7, v1, Ldi7;->m:I

    .line 81
    .line 82
    sget-object v7, Ldi7;->t:Lcz4;

    .line 83
    .line 84
    iput-object v7, v1, Ldi7;->n:Lcz4;

    .line 85
    .line 86
    iput v6, v1, Ldi7;->s:I

    .line 87
    .line 88
    sget-object v7, Lus6;->d:Lus6;

    .line 89
    .line 90
    sget-object v8, Lus6;->c:Lus6;

    .line 91
    .line 92
    sget-object v9, Lus6;->n:Lus6;

    .line 93
    .line 94
    sget-object v10, Lus6;->k:Lus6;

    .line 95
    .line 96
    sget-object v11, Lus6;->f:Lus6;

    .line 97
    .line 98
    filled-new-array {v9, v10, v11, v7, v8}, [Lus6;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    if-eqz v7, :cond_b

    .line 107
    .line 108
    iget-object v8, v1, Ldi7;->a:Ljava/util/EnumSet;

    .line 109
    .line 110
    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 111
    .line 112
    .line 113
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-eqz v9, :cond_1

    .line 122
    .line 123
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    check-cast v9, Lus6;

    .line 128
    .line 129
    if-eqz v9, :cond_0

    .line 130
    .line 131
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    const-string p0, "Dialect may not be null"

    .line 136
    .line 137
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v5

    .line 141
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    sget-boolean v9, Ldi7;->u:Z

    .line 147
    .line 148
    if-nez v9, :cond_2

    .line 149
    .line 150
    :try_start_0
    const-class v9, Ldk7;

    .line 151
    .line 152
    invoke-virtual {v9, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    check-cast v9, Lv23;

    .line 161
    .line 162
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_0
    move-exception p0

    .line 167
    new-instance p1, Lgv6;

    .line 168
    .line 169
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_2
    :goto_1
    new-instance v9, Lep5;

    .line 174
    .line 175
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    iget-object v9, v1, Ldi7;->b:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    if-eqz v10, :cond_4

    .line 195
    .line 196
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    check-cast v10, Lv23;

    .line 201
    .line 202
    if-eqz v10, :cond_3

    .line 203
    .line 204
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_3
    const-string p0, "Authenticator may not be null"

    .line 209
    .line 210
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return-object v5

    .line 214
    :cond_4
    new-instance v7, Lus2;

    .line 215
    .line 216
    const/16 v10, 0xd

    .line 217
    .line 218
    invoke-direct {v7, v10}, Lus2;-><init>(I)V

    .line 219
    .line 220
    .line 221
    iput-object v7, v1, Ldi7;->p:Lus2;

    .line 222
    .line 223
    iput-boolean v6, v1, Ldi7;->q:Z

    .line 224
    .line 225
    const-wide/16 v6, 0x7530

    .line 226
    .line 227
    iput-wide v6, v1, Ldi7;->j:J

    .line 228
    .line 229
    iput-wide v6, v1, Ldi7;->l:J

    .line 230
    .line 231
    iput-wide v6, v1, Ldi7;->o:J

    .line 232
    .line 233
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    if-eqz v6, :cond_a

    .line 238
    .line 239
    iput-object v6, v1, Ldi7;->e:Ljava/util/UUID;

    .line 240
    .line 241
    iput-boolean v2, v1, Ldi7;->g:Z

    .line 242
    .line 243
    iput-boolean p1, v1, Ldi7;->q:Z

    .line 244
    .line 245
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_9

    .line 250
    .line 251
    iget-boolean p1, v1, Ldi7;->f:Z

    .line 252
    .line 253
    if-nez p1, :cond_6

    .line 254
    .line 255
    invoke-static {v8}, Lus6;->b(Ljava/util/Set;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-nez p1, :cond_5

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_5
    const-string p0, "Signing cannot be disabled when using SMB3.x dialects"

    .line 263
    .line 264
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return-object v5

    .line 268
    :cond_6
    :goto_3
    iget-boolean p1, v1, Ldi7;->q:Z

    .line 269
    .line 270
    if-eqz p1, :cond_8

    .line 271
    .line 272
    invoke-static {v8}, Lus6;->b(Ljava/util/Set;)Z

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    if-eqz p1, :cond_7

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_7
    const-string p0, "If encryption is enabled, at least one dialect should be SMB3.x compatible"

    .line 280
    .line 281
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-object v5

    .line 285
    :cond_8
    :goto_4
    new-instance p1, Lz28;

    .line 286
    .line 287
    const/16 v2, 0xc

    .line 288
    .line 289
    invoke-direct {p1, v2}, Lz28;-><init>(I)V

    .line 290
    .line 291
    .line 292
    iput-object v3, p1, Lz28;->b:Ljava/lang/Object;

    .line 293
    .line 294
    iput-object p1, v1, Ldi7;->r:Lz28;

    .line 295
    .line 296
    new-instance p1, Ldi7;

    .line 297
    .line 298
    invoke-direct {p1}, Ldi7;-><init>()V

    .line 299
    .line 300
    .line 301
    iget-object v2, p1, Ldi7;->a:Ljava/util/EnumSet;

    .line 302
    .line 303
    invoke-interface {v2, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 304
    .line 305
    .line 306
    iget-object v2, p1, Ldi7;->b:Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 309
    .line 310
    .line 311
    iget-object v2, v1, Ldi7;->c:Ljavax/net/SocketFactory;

    .line 312
    .line 313
    iput-object v2, p1, Ldi7;->c:Ljavax/net/SocketFactory;

    .line 314
    .line 315
    iget-object v2, v1, Ldi7;->d:Ljava/util/Random;

    .line 316
    .line 317
    iput-object v2, p1, Ldi7;->d:Ljava/util/Random;

    .line 318
    .line 319
    iget-object v2, v1, Ldi7;->e:Ljava/util/UUID;

    .line 320
    .line 321
    iput-object v2, p1, Ldi7;->e:Ljava/util/UUID;

    .line 322
    .line 323
    iget-boolean v2, v1, Ldi7;->f:Z

    .line 324
    .line 325
    iput-boolean v2, p1, Ldi7;->f:Z

    .line 326
    .line 327
    iget-object v2, v1, Ldi7;->h:Llv1;

    .line 328
    .line 329
    iput-object v2, p1, Ldi7;->h:Llv1;

    .line 330
    .line 331
    iget v2, v1, Ldi7;->i:I

    .line 332
    .line 333
    iput v2, p1, Ldi7;->i:I

    .line 334
    .line 335
    iget-wide v2, v1, Ldi7;->j:J

    .line 336
    .line 337
    iput-wide v2, p1, Ldi7;->j:J

    .line 338
    .line 339
    iget v2, v1, Ldi7;->k:I

    .line 340
    .line 341
    iput v2, p1, Ldi7;->k:I

    .line 342
    .line 343
    iget-wide v2, v1, Ldi7;->l:J

    .line 344
    .line 345
    iput-wide v2, p1, Ldi7;->l:J

    .line 346
    .line 347
    iget v2, v1, Ldi7;->m:I

    .line 348
    .line 349
    iput v2, p1, Ldi7;->m:I

    .line 350
    .line 351
    iget-wide v2, v1, Ldi7;->o:J

    .line 352
    .line 353
    iput-wide v2, p1, Ldi7;->o:J

    .line 354
    .line 355
    iget-object v2, v1, Ldi7;->n:Lcz4;

    .line 356
    .line 357
    iput-object v2, p1, Ldi7;->n:Lcz4;

    .line 358
    .line 359
    iget v2, v1, Ldi7;->s:I

    .line 360
    .line 361
    iput v2, p1, Ldi7;->s:I

    .line 362
    .line 363
    iget-boolean v2, v1, Ldi7;->g:Z

    .line 364
    .line 365
    iput-boolean v2, p1, Ldi7;->g:Z

    .line 366
    .line 367
    iget-object v2, v1, Ldi7;->p:Lus2;

    .line 368
    .line 369
    iput-object v2, p1, Ldi7;->p:Lus2;

    .line 370
    .line 371
    iget-boolean v2, v1, Ldi7;->q:Z

    .line 372
    .line 373
    iput-boolean v2, p1, Ldi7;->q:Z

    .line 374
    .line 375
    iget-object v1, v1, Ldi7;->r:Lz28;

    .line 376
    .line 377
    iput-object v1, p1, Ldi7;->r:Lz28;

    .line 378
    .line 379
    new-instance v1, Lcv6;

    .line 380
    .line 381
    new-instance v2, Lju7;

    .line 382
    .line 383
    new-instance v3, Lbv6;

    .line 384
    .line 385
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-direct {v2, v3}, Lju7;-><init>(Lbv6;)V

    .line 389
    .line 390
    .line 391
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 392
    .line 393
    .line 394
    iput-object v2, v1, Lcv6;->a:Lju7;

    .line 395
    .line 396
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 397
    .line 398
    .line 399
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 400
    .line 401
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 402
    .line 403
    .line 404
    iput-object v2, v0, Lav6;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 405
    .line 406
    new-instance v2, Lyf1;

    .line 407
    .line 408
    const/16 v3, 0x9

    .line 409
    .line 410
    invoke-direct {v2, v3}, Lyf1;-><init>(I)V

    .line 411
    .line 412
    .line 413
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 414
    .line 415
    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 416
    .line 417
    .line 418
    iput-object v3, v2, Lyf1;->b:Ljava/lang/Object;

    .line 419
    .line 420
    new-instance v3, Ljava/util/HashMap;

    .line 421
    .line 422
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 423
    .line 424
    .line 425
    iput-object v3, v2, Lyf1;->c:Ljava/lang/Object;

    .line 426
    .line 427
    iput-object v2, v0, Lav6;->b:Lyf1;

    .line 428
    .line 429
    iput-object p1, v0, Lav6;->c:Ldi7;

    .line 430
    .line 431
    iput-object v1, v0, Lav6;->d:Lcv6;

    .line 432
    .line 433
    invoke-virtual {v1, v0}, Lcv6;->a(Ljava/lang/AutoCloseable;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPort()I

    .line 441
    .line 442
    .line 443
    move-result p0

    .line 444
    invoke-virtual {v0, p0, p1}, Lav6;->b(ILjava/lang/String;)Lur1;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    return-object p0

    .line 449
    :cond_9
    const-string p0, "At least one SMB dialect should be specified"

    .line 450
    .line 451
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    return-object v5

    .line 455
    :cond_a
    invoke-static {v4}, Lc6;->f(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    return-object v5

    .line 459
    :cond_b
    const-string p0, "Dialects may not be null"

    .line 460
    .line 461
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    return-object v5

    .line 465
    :cond_c
    invoke-static {v4}, Lc6;->f(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    return-object v5
.end method
