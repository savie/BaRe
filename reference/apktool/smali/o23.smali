.class public final Lo23;
.super Lmj1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Ldd1;

.field public d:Ld23;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lys3;

.field public k:Z

.field public final l:Ln23;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmj1;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldd1;->FTP:Ldd1;

    .line 5
    .line 6
    iput-object v0, p0, Lo23;->c:Ldd1;

    .line 7
    .line 8
    new-instance v0, Ln23;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lo23;->l:Ln23;

    .line 14
    .line 15
    return-void
.end method

.method public static F(Ljava/lang/String;)V
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


# virtual methods
.method public final A(Ljava/lang/String;)Lg23;
    .locals 2

    .line 1
    new-instance v0, Ll30;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1, p0, p1}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 v1, 0x5

    .line 10
    if-ge p1, v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Ll30;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    check-cast p0, Lg23;

    .line 17
    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    const-string p1, "Failed action with tag=getFile after retries=5"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    throw p0
.end method

.method public final B(Ld23;Ljava/lang/String;)[Lg23;
    .locals 10

    .line 1
    const-string v1, "listFilesCompat: Discarding FTP client after failed listing at path="

    .line 2
    .line 3
    iget-boolean v2, p1, Ld23;->D:Z

    .line 4
    .line 5
    iget-boolean v0, p0, Lo23;->i:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iput-boolean v3, p1, Ld23;->D:Z

    .line 13
    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lo23;->C(Ld23;Ljava/lang/String;)[Lg23;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-boolean v4, p0, Lo23;->i:Z

    .line 19
    .line 20
    if-nez v4, :cond_3

    .line 21
    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    iget v4, p1, Lz13;->k:I

    .line 25
    .line 26
    const/16 v5, 0x226

    .line 27
    .line 28
    if-eq v4, v5, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iput-boolean v3, p1, Ld23;->D:Z

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lo23;->C(Ld23;Ljava/lang/String;)[Lg23;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v3, p1, Lz13;->k:I

    .line 38
    .line 39
    invoke-static {v3}, Lk55;->x(I)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 46
    .line 47
    const-string v5, "FTPService"

    .line 48
    .line 49
    const-string v6, "LIST -a is unsupported by this FTP server; using LIST for subsequent listings"

    .line 50
    .line 51
    const/4 v8, 0x4

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    iput-boolean v3, p0, Lo23;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    move-object p0, v0

    .line 63
    goto :goto_3

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    :goto_0
    iput-boolean v2, p1, Ld23;->D:Z

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    :goto_1
    iput-boolean v2, p1, Ld23;->D:Z

    .line 70
    .line 71
    return-object v0

    .line 72
    :goto_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p0, p1, p2}, Lo23;->x(Ld23;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_3
    iput-boolean v2, p1, Ld23;->D:Z

    .line 89
    .line 90
    throw p0
.end method

.method public final C(Ld23;Ljava/lang/String;)[Lg23;
    .locals 5

    .line 1
    const-string v0, "listFilesInternal: Discarding FTP client after failed PWD restore to "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_8

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, v1

    .line 14
    :goto_0
    if-nez p2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_7

    .line 24
    .line 25
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Lly8;->C(C)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_6

    .line 34
    .line 35
    invoke-virtual {p1}, Ld23;->v()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "CWD"

    .line 40
    .line 41
    invoke-virtual {p1, v3, p2}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v4}, Lk55;->x(I)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_5

    .line 50
    .line 51
    :try_start_0
    invoke-virtual {p1, v1}, Ld23;->t(Ljava/lang/String;)[Lg23;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p1, v3, v2}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1}, Lk55;->x(I)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, p1, v0}, Lo23;->x(Ld23;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_2
    return-object p2

    .line 85
    :catchall_0
    move-exception p2

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1, v3, v2}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {v1}, Lk55;->x(I)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, p1, v0}, Lo23;->x(Ld23;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    throw p2

    .line 112
    :cond_5
    invoke-virtual {p1}, Lz13;->i()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string p1, "CWD failed for listing path="

    .line 117
    .line 118
    const-string v0, ". Reply="

    .line 119
    .line 120
    invoke-static {p1, p2, v0, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    return-object v1

    .line 128
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {p1, p2}, Ld23;->t(Ljava/lang/String;)[Lg23;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_8
    :goto_3
    invoke-virtual {p1, v1}, Ld23;->t(Ljava/lang/String;)[Lg23;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    return-object p0
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v1, "move"

    .line 2
    .line 3
    new-instance v2, Ld32;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {v2, v0, p0, p1, p2}, Ld32;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    const/4 p1, 0x0

    .line 11
    :goto_0
    const/4 p2, 0x5

    .line 12
    if-ge p1, p2, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v2}, Ld32;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    move-object p0, v0

    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "Failed action with tag="

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " after retries="

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :catch_1
    move-exception v0

    .line 55
    move-object p0, v0

    .line 56
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 57
    .line 58
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string p2, "move: "

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v4, 0x4

    .line 69
    const/4 v5, 0x0

    .line 70
    const-string v1, "FTPService"

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final E(Lc62;Ljava/lang/String;Lmt3;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "put: Failed deleting partial upload at "

    .line 6
    .line 7
    const-string v3, "put: Discarding FTP client after failed upload to "

    .line 8
    .line 9
    const-string v4, "put: Failed uploading file to "

    .line 10
    .line 11
    const-string v5, ".tmp"

    .line 12
    .line 13
    invoke-static {v0}, Lo23;->F(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v1, v6}, Lo23;->w(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-virtual {v1, v7}, Lo23;->z(Z)Ld23;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-virtual/range {p1 .. p1}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    :try_start_0
    new-instance v9, Lq23;

    .line 33
    .line 34
    move-object/from16 v10, p3

    .line 35
    .line 36
    invoke-direct {v9, v10}, Lq23;-><init>(Lmt3;)V

    .line 37
    .line 38
    .line 39
    iput-object v9, v7, Ld23;->H:Lq23;

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 v9, 0x0

    .line 46
    :try_start_1
    invoke-virtual {v1, v5}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v7, v0, v8}, Ld23;->x(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    .line 51
    .line 52
    .line 53
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    :try_start_2
    iput-object v9, v7, Ld23;->H:Lq23;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1, v5, v6}, Lo23;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object v1, v0

    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/io/Closeable;->close()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    :try_start_3
    new-instance v0, Lzs3;

    .line 73
    .line 74
    iget v10, v7, Lz13;->k:I

    .line 75
    .line 76
    invoke-virtual {v7}, Lz13;->i()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v10, v11}, Lzs3;-><init>(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    goto :goto_3

    .line 89
    :catch_0
    move-exception v0

    .line 90
    move-object v10, v0

    .line 91
    :try_start_4
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 92
    .line 93
    const-string v12, "FTPService"

    .line 94
    .line 95
    invoke-virtual {v7}, Lz13;->i()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v13, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v4, ". Reply="

    .line 108
    .line 109
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    const/4 v15, 0x4

    .line 120
    const/16 v16, 0x0

    .line 121
    .line 122
    const/4 v14, 0x0

    .line 123
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v1, v7, v0}, Lo23;->x(Ld23;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    move-object/from16 v3, p1

    .line 134
    .line 135
    iget-boolean v0, v3, Lc62;->b:Z

    .line 136
    .line 137
    if-nez v0, :cond_3

    .line 138
    .line 139
    instance-of v0, v10, Lb62;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 140
    .line 141
    if-eqz v0, :cond_2

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    :try_start_5
    invoke-virtual {v1, v5}, Lo23;->j(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catch_1
    move-exception v0

    .line 149
    :try_start_6
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 150
    .line 151
    const-string v12, "FTPService"

    .line 152
    .line 153
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v2, ": "

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    const/4 v15, 0x4

    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    const/4 v14, 0x0

    .line 181
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    throw v10

    .line 185
    :cond_3
    :goto_2
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 186
    :goto_3
    :try_start_7
    iput-object v9, v7, Ld23;->H:Lq23;

    .line 187
    .line 188
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 189
    :goto_4
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 190
    :catchall_2
    move-exception v0

    .line 191
    invoke-static {v8, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    throw v0
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    new-array p0, p0, [C

    .line 6
    .line 7
    const/16 v0, 0x2f

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-char v0, p0, v1

    .line 11
    .line 12
    invoke-static {p1, p0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final H(Lzs3;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lo23;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lo23;->h:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p1, Lzs3;->a:I

    .line 11
    .line 12
    iget-object p1, p1, Lzs3;->b:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v1, 0x1aa

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v0, "Failure reading network stream"

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p1, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 30
    .line 31
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "put: Retrying FTPS upload with TLSv1.2 after reply="

    .line 40
    .line 41
    invoke-static {v0, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v6, 0x4

    .line 46
    const/4 v7, 0x0

    .line 47
    const-string v3, "FTPService"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-boolean v1, p0, Lo23;->h:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Lo23;->b()V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 60
    return p0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lo23;->d:Ld23;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lo23;->d:Ld23;

    .line 6
    .line 7
    iput-object v1, p0, Lo23;->j:Lys3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lo23;->l:Ln23;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lyi7;->e(Lz96;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x1a

    .line 19
    .line 20
    :try_start_2
    invoke-virtual {v0, v1}, Lz13;->l(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_2

    .line 26
    :catch_1
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 27
    .line 28
    :try_start_3
    iget-object v1, v0, Lyi7;->b:Ljava/net/Socket;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :goto_1
    const/4 v2, 0x1

    .line 39
    if-ne v1, v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Ld23;->q()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    .line 43
    .line 44
    :catch_2
    :cond_3
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;Lt15;)Ltc4;
    .locals 6

    .line 1
    const-string p2, "get: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v1, "get"

    .line 8
    .line 9
    new-instance v2, Ld11;

    .line 10
    .line 11
    const/16 v0, 0x9

    .line 12
    .line 13
    invoke-direct {v2, v0, p0, p1}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 v0, 0x0

    .line 18
    move v3, v0

    .line 19
    :goto_0
    const/16 v0, 0xa

    .line 20
    .line 21
    if-ge v3, v0, :cond_1

    .line 22
    .line 23
    if-lez v3, :cond_0

    .line 24
    .line 25
    const-wide/16 v4, 0x3e8

    .line 26
    .line 27
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ld11;->invoke()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :try_start_3
    check-cast p1, Ltc4;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p1, v0

    .line 40
    goto :goto_3

    .line 41
    :catch_0
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    goto :goto_2

    .line 44
    :catch_1
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    if-eqz p1, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "Failed action with tag="

    .line 57
    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " after retries="

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    :goto_2
    :try_start_5
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 81
    .line 82
    const-string v1, "FTPService"

    .line 83
    .line 84
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const/4 v4, 0x4

    .line 93
    const/4 v5, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    throw p1
.end method

.method public final d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lo23;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lo23;->g:Z

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iput-boolean p1, p0, Lo23;->g:Z

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0, v0}, Lo23;->z(Z)Ld23;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 18
    .line 19
    invoke-direct {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    move-object p1, v0

    .line 25
    const-string v0, "FTPService"

    .line 26
    .line 27
    const-string v1, "FTPService.login():"

    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 37
    .line 38
    const-string v2, "FTPService.login(): "

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v5, 0x4

    .line 45
    const/4 v6, 0x0

    .line 46
    const-string v2, "FTPService"

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    instance-of v0, p1, Lmf8;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UntrustedCertificate;

    .line 57
    .line 58
    check-cast p1, Lmf8;

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UntrustedCertificate;-><init>(Lmf8;)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_1
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-boolean p0, p0, Lo23;->e:Z

    .line 69
    .line 70
    if-eqz p0, :cond_2

    .line 71
    .line 72
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UntrustedCertificate;

    .line 73
    .line 74
    new-instance v0, Lmf8;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {v0, p1, v1}, Lmf8;-><init>(Ljava/lang/Exception;Ljava/security/cert/X509Certificate;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UntrustedCertificate;-><init>(Lmf8;)V

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_2
    instance-of p0, p1, Ljava/net/ConnectException;

    .line 85
    .line 86
    if-nez p0, :cond_4

    .line 87
    .line 88
    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    .line 89
    .line 90
    if-nez p0, :cond_4

    .line 91
    .line 92
    instance-of p0, p1, Ljava/net/SocketException;

    .line 93
    .line 94
    if-nez p0, :cond_4

    .line 95
    .line 96
    instance-of p0, p1, Ljava/net/UnknownHostException;

    .line 97
    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 102
    .line 103
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_4
    :goto_1
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 108
    .line 109
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 110
    .line 111
    .line 112
    return-object p0
.end method

.method public final e(Lc62;Ljava/lang/String;JLcz;)V
    .locals 8

    .line 1
    const/4 p3, 0x0

    .line 2
    const/4 p4, 0x0

    .line 3
    :goto_0
    const-string v1, "put"

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-ge p4, v0, :cond_4

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p2, p5}, Lo23;->E(Lc62;Ljava/lang/String;Lmt3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception v0

    .line 14
    move-object p3, v0

    .line 15
    :try_start_1
    iget-boolean v0, p1, Lc62;->b:Z

    .line 16
    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    instance-of v0, p3, Lb62;

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    instance-of v0, p3, Lzs3;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move-object v0, p3

    .line 28
    check-cast v0, Lzs3;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lo23;->H(Lzs3;)Z

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    if-eqz p4, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2, p5}, Lo23;->E(Lc62;Ljava/lang/String;Lmt3;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :cond_0
    throw p3

    .line 41
    :cond_1
    const/16 v0, 0x9

    .line 42
    .line 43
    if-ge p4, v0, :cond_2

    .line 44
    .line 45
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 46
    .line 47
    const-string v3, "FTPService"

    .line 48
    .line 49
    add-int/lit8 v0, p4, 0x1

    .line 50
    .line 51
    invoke-static {p3}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ": retrying after upload failure ("

    .line 64
    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, "/10): "

    .line 72
    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const/4 v6, 0x4

    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    add-int/lit8 p4, p4, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    throw p3

    .line 93
    :cond_4
    if-eqz p3, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    new-instance p3, Ljava/lang/RuntimeException;

    .line 97
    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string p1, "Failed action with tag="

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " after retries=10"

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-direct {p3, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    throw p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :catch_1
    move-exception v0

    .line 125
    move-object p0, v0

    .line 126
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 127
    .line 128
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string p2, "put: "

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const/4 v4, 0x4

    .line 139
    const/4 v5, 0x0

    .line 140
    const-string v1, "FTPService"

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    throw p0
.end method

.method public final f(Ljava/lang/String;)Lpg1;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lo23;->A(Ljava/lang/String;)Lg23;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    move-object p0, v0

    .line 12
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 13
    .line 14
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "getFile: "

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v6, 0x4

    .line 25
    const/4 v7, 0x0

    .line 26
    const-string v3, "FTPService"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    move-object p0, v1

    .line 33
    :goto_0
    if-eqz p0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [C

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    const/16 v2, 0x2f

    .line 40
    .line 41
    aput-char v2, v0, v1

    .line 42
    .line 43
    invoke-static {p1, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v2, p1, p1}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0, p1}, Log1;->a(Lg23;Ljava/lang/String;)Lpg1;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_0
    return-object v1
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lo23;->c:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized h(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v1, "createDirectory: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v2, "createDirectory"

    .line 8
    .line 9
    new-instance v3, Lg52;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-direct {v3, v0, p0, p1}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    move v4, v0

    .line 18
    :goto_0
    const/4 v0, 0x5

    .line 19
    if-ge v4, v0, :cond_0

    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v3}, Lg52;->invoke()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    move-object p1, v0

    .line 28
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "Failed action with tag="

    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, " after retries="

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    move-object p1, v0

    .line 64
    :try_start_3
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 65
    .line 66
    const-string v3, "FTPService"

    .line 67
    .line 68
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const/4 v6, 0x4

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    move-object p1, v0

    .line 85
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    throw p1
.end method

.method public final j(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v1, "delete"

    .line 5
    .line 6
    new-instance v2, Lkg;

    .line 7
    .line 8
    const/4 v0, 0x7

    .line 9
    invoke-direct {v2, v0, p0, p1}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    const/4 p1, 0x0

    .line 14
    :goto_0
    const/4 v0, 0x5

    .line 15
    if-ge p1, v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v2}, Lkg;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    move-object p0, v0

    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz p0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Failed action with tag="

    .line 34
    .line 35
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " after retries="

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :catch_1
    move-exception v0

    .line 58
    move-object p0, v0

    .line 59
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 60
    .line 61
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "delete: "

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v4, 0x4

    .line 72
    const/4 v5, 0x0

    .line 73
    const-string v1, "FTPService"

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final l()Lni1;
    .locals 9

    .line 1
    const-string v1, "getQuota"

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    move v3, v0

    .line 6
    move-object v0, v2

    .line 7
    :goto_0
    const/4 v4, 0x5

    .line 8
    if-ge v3, v4, :cond_0

    .line 9
    .line 10
    :try_start_0
    sget-object v0, Ltb1;->a:Ltb1;

    .line 11
    .line 12
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ltb1;->i()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lo23;->y(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    new-instance v0, Lni1;

    .line 25
    .line 26
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-direct {v0, v4, v2}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v3, "Failed action with tag="

    .line 46
    .line 47
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " after retries="

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :catch_1
    move-exception v0

    .line 70
    move-object p0, v0

    .line 71
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 72
    .line 73
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v0, "getQuota: "

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const/4 v7, 0x4

    .line 84
    const/4 v8, 0x0

    .line 85
    const-string v4, "FTPService"

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance p0, Lni1;

    .line 92
    .line 93
    invoke-direct {p0, v2, v2}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 94
    .line 95
    .line 96
    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "FTPService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lih1;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lo23;->A(Ljava/lang/String;)Lg23;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lih1;->Exists:Lih1;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lih1;->Missing:Lih1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    move-object p0, v0

    .line 15
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 16
    .line 17
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "getMetadataPathExistence: "

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v4, 0x4

    .line 28
    const/4 v5, 0x0

    .line 29
    const-string v1, "FTPService"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lih1;->Unknown:Lih1;

    .line 36
    .line 37
    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lhh1;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v1, "listMetadataDirectory"

    .line 5
    .line 6
    new-instance v2, Lqf;

    .line 7
    .line 8
    const/16 v0, 0xc

    .line 9
    .line 10
    invoke-direct {v2, v0, p0, p1}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    const/4 p1, 0x0

    .line 15
    :goto_0
    const/4 v0, 0x5

    .line 16
    if-ge p1, v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v2}, Lqf;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    check-cast p0, Lhh1;

    .line 23
    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    move-object p0, v0

    .line 27
    goto :goto_2

    .line 28
    :catch_1
    move-exception v0

    .line 29
    move-object p0, v0

    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-eqz p0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Failed action with tag="

    .line 41
    .line 42
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " after retries="

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :goto_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 65
    .line 66
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, "listMetadataDirectory: "

    .line 71
    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/4 v4, 0x4

    .line 77
    const/4 v5, 0x0

    .line 78
    const-string v1, "FTPService"

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object p0, Lfh1;->a:Lfh1;

    .line 85
    .line 86
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v1, "exists"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v0, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    const/4 v4, 0x5

    .line 10
    if-ge v3, v4, :cond_1

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lo23;->f(Ljava/lang/String;)Lpg1;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    :cond_0
    return v2

    .line 20
    :catch_0
    move-exception v0

    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p1, "Failed action with tag="

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " after retries="

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :catch_1
    move-exception v0

    .line 56
    move-object p0, v0

    .line 57
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 58
    .line 59
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string p1, "exists: "

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v4, "FTPService"

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return v2
.end method

.method public final s(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v1, "list"

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    const/4 v4, 0x5

    .line 10
    if-ge v3, v4, :cond_1

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0, v2}, Lo23;->z(Z)Ld23;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p1}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p0, v0, v4}, Lo23;->B(Ld23;Ljava/lang/String;)[Lg23;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lxh8;->G([Lg23;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lg23;

    .line 48
    .line 49
    invoke-static {v6, v4}, Log1;->a(Lg23;Ljava/lang/String;)Lpg1;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    return-object v5

    .line 58
    :catch_0
    move-exception v0

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-eqz v0, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string p1, "Failed action with tag="

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, " after retries="

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    move-object p0, v0

    .line 95
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 96
    .line 97
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "list: "

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const/4 v4, 0x4

    .line 108
    const/4 v5, 0x0

    .line 109
    const-string v1, "FTPService"

    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object p0, Lov2;->a:Lov2;

    .line 116
    .line 117
    return-object p0
.end method

.method public final declared-synchronized u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lmj1;->m()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lxh8;->b(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Lys3;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-super {p0, p1}, Lmj1;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lxh8;->b(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Lys3;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lo23;->b()V

    .line 38
    .line 39
    .line 40
    iput-boolean v1, p0, Lo23;->h:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Lo23;->i:Z

    .line 43
    .line 44
    iput-boolean v1, p0, Lo23;->k:Z

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProtocol()Lfd1;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lfd1;->getScheme()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v2, "ftps"

    .line 55
    .line 56
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput-boolean v0, p0, Lo23;->e:Z

    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProtocol()Lfd1;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v0, Lfd1;->FTPS_IMPLICIT:Lfd1;

    .line 67
    .line 68
    if-ne p1, v0, :cond_2

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    :cond_2
    iput-boolean v1, p0, Lo23;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p1
.end method

.method public final declared-synchronized v()Ld23;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lo23;->e:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Low6;

    .line 7
    .line 8
    iget-boolean v1, p0, Lo23;->f:Z

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lk23;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ld23;

    .line 18
    .line 19
    invoke-direct {v0}, Ld23;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    instance-of v1, v0, Lk23;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-boolean v1, p0, Lo23;->g:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Lk23;

    .line 32
    .line 33
    sget-object v2, Lz85;->d:Lpb8;

    .line 34
    .line 35
    iput-object v2, v1, Lk23;->V:Lpb8;

    .line 36
    .line 37
    :cond_1
    instance-of v1, v0, Lk23;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-boolean v1, p0, Lo23;->h:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    check-cast v1, Lk23;

    .line 47
    .line 48
    const-string v2, "TLSv1.2"

    .line 49
    .line 50
    filled-new-array {v2}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, [Ljava/lang/String;

    .line 59
    .line 60
    iput-object v2, v1, Lk23;->U:[Ljava/lang/String;

    .line 61
    .line 62
    :cond_2
    const/16 v1, 0x7530

    .line 63
    .line 64
    iput v1, v0, Lyi7;->a:I

    .line 65
    .line 66
    iput v1, v0, Lyi7;->h:I

    .line 67
    .line 68
    const-wide/32 v1, 0x1d4c0

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 78
    .line 79
    :cond_3
    iput-object v1, v0, Ld23;->v:Ljava/time/Duration;

    .line 80
    .line 81
    const/high16 v1, 0x40000

    .line 82
    .line 83
    iput v1, v0, Ld23;->C:I

    .line 84
    .line 85
    const-wide/16 v1, 0x1e

    .line 86
    .line 87
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 94
    .line 95
    :cond_4
    iput-object v1, v0, Ld23;->I:Ljava/time/Duration;

    .line 96
    .line 97
    const-wide/16 v1, 0x2710

    .line 98
    .line 99
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 106
    .line 107
    :cond_5
    iput-object v1, v0, Ld23;->J:Ljava/time/Duration;

    .line 108
    .line 109
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, v0, Lz13;->o:Ljava/lang/String;

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    iput-boolean v1, v0, Ld23;->L:Z

    .line 119
    .line 120
    iput-boolean v1, v0, Ld23;->D:Z

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    iput-boolean v1, v0, Ld23;->N:Z

    .line 124
    .line 125
    iget-object v1, p0, Lo23;->l:Ln23;

    .line 126
    .line 127
    iget-object v2, v0, Lz13;->p:Lba6;

    .line 128
    .line 129
    iget-object v2, v2, Lba6;->b:Lvy4;

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    iget-object v2, v2, Lvy4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    :goto_1
    monitor-exit p0

    .line 143
    return-object v0

    .line 144
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    throw v0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x2f

    .line 6
    .line 7
    aput-char v2, v0, v1

    .line 8
    .line 9
    invoke-static {p1, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move v3, v1

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v1, v4, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ne v4, v2, :cond_0

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-lez v3, :cond_2

    .line 32
    .line 33
    const-string v0, "/"

    .line 34
    .line 35
    invoke-static {p1, v0, p1}, Lnq7;->F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lo23;->h(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final declared-synchronized x(Ld23;Ljava/lang/String;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 3
    .line 4
    const-string v1, "FTPService"

    .line 5
    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    move-object v2, p2

    .line 10
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lo23;->d:Ld23;

    .line 14
    .line 15
    if-ne p2, p1, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    iput-object p2, p0, Lo23;->d:Ld23;

    .line 19
    .line 20
    iput-object p2, p0, Lo23;->j:Lys3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    move-object p1, v0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    :goto_0
    :try_start_1
    iget-object p2, p0, Lo23;->l:Ln23;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lyi7;->e(Lz96;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :catch_0
    :try_start_2
    iget-object p2, p1, Lyi7;->b:Ljava/net/Socket;

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p2}, Ljava/net/Socket;->isConnected()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    :goto_1
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Ld23;->q()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    .line 46
    :catch_1
    :cond_2
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    throw p1
.end method

.method public final y(Ljava/lang/String;)J
    .locals 6

    .line 1
    const-string v1, "getDirectorySize"

    .line 2
    .line 3
    new-instance v2, Lcv;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-direct {v2, v0, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    const/4 p1, 0x0

    .line 12
    :goto_0
    const/4 v0, 0x5

    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v2}, Lcv;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :try_start_1
    check-cast p0, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    return-wide p0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    move-object p0, v0

    .line 28
    goto :goto_2

    .line 29
    :catch_1
    move-exception v0

    .line 30
    move-object p0, v0

    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Failed action with tag="

    .line 42
    .line 43
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " after retries="

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :goto_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 66
    .line 67
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v1, "getDirectorySize: "

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 v4, 0x4

    .line 78
    const/4 v5, 0x0

    .line 79
    const-string v1, "FTPService"

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final declared-synchronized z(Z)Ld23;
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "/"

    .line 4
    .line 5
    const-string v2, "Invalid pwd = "

    .line 6
    .line 7
    const-string v3, "getFtpClientInternal: PWD error="

    .line 8
    .line 9
    const-string v4, "TYPE failed: "

    .line 10
    .line 11
    const-string v5, "CWD failed: "

    .line 12
    .line 13
    const-string v6, "Login failed: "

    .line 14
    .line 15
    const-string v7, "URI="

    .line 16
    .line 17
    const-string v8, "getFtpClientInternal: Connecting client (creds="

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    :try_start_0
    iget-object v9, v1, Lo23;->d:Ld23;

    .line 23
    .line 24
    if-eqz v9, :cond_0

    .line 25
    .line 26
    iget-boolean v10, v1, Lo23;->e:Z

    .line 27
    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    instance-of v9, v9, Lk23;

    .line 31
    .line 32
    if-nez v9, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_c

    .line 37
    .line 38
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lo23;->b()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lo23;->v()Ld23;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    iput-object v9, v1, Lo23;->d:Ld23;

    .line 46
    .line 47
    :cond_1
    iget-object v9, v1, Lo23;->d:Ld23;

    .line 48
    .line 49
    if-eqz v9, :cond_14

    .line 50
    .line 51
    iget-object v10, v1, Lmj1;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v10}, Lo23;->F(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v10, v1, Lmj1;->b:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v10}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    const/4 v13, 0x1

    .line 70
    const/16 v14, 0x2f

    .line 71
    .line 72
    if-eqz v11, :cond_2

    .line 73
    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    new-array v12, v13, [C

    .line 77
    .line 78
    aput-char v14, v12, v16

    .line 79
    .line 80
    invoke-static {v11, v12}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/16 v16, 0x0

    .line 86
    .line 87
    const/4 v11, 0x0

    .line 88
    :goto_1
    invoke-virtual {v1}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    invoke-static {v12}, Lxh8;->b(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Lys3;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    move/from16 v17, v14

    .line 97
    .line 98
    iget-object v14, v1, Lo23;->j:Lys3;

    .line 99
    .line 100
    if-eqz v14, :cond_3

    .line 101
    .line 102
    invoke-virtual {v14, v12}, Lys3;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    if-nez v14, :cond_3

    .line 107
    .line 108
    invoke-virtual {v1, v13}, Lo23;->z(Z)Ld23;

    .line 109
    .line 110
    .line 111
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    .line 113
    return-object v0

    .line 114
    :cond_3
    :try_start_1
    iget-object v14, v9, Lyi7;->b:Ljava/net/Socket;

    .line 115
    .line 116
    if-nez v14, :cond_4

    .line 117
    .line 118
    move/from16 v14, v16

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    invoke-virtual {v14}, Ljava/net/Socket;->isConnected()Z

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    :goto_2
    if-eqz v14, :cond_6

    .line 126
    .line 127
    invoke-virtual {v9}, Lyi7;->d()Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-nez v14, :cond_5

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    const/4 v4, 0x0

    .line 135
    goto/16 :goto_7

    .line 136
    .line 137
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 138
    .line 139
    .line 140
    move-result-object v18

    .line 141
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 142
    .line 143
    const-string v35, "FTPService"

    .line 144
    .line 145
    const-string v26, "*"

    .line 146
    .line 147
    const/16 v33, 0x3f7f

    .line 148
    .line 149
    const/16 v34, 0x0

    .line 150
    .line 151
    const/16 v19, 0x0

    .line 152
    .line 153
    const/16 v20, 0x0

    .line 154
    .line 155
    const/16 v21, 0x0

    .line 156
    .line 157
    const/16 v22, 0x0

    .line 158
    .line 159
    const/16 v23, 0x0

    .line 160
    .line 161
    const/16 v24, 0x0

    .line 162
    .line 163
    const/16 v25, 0x0

    .line 164
    .line 165
    const/16 v27, 0x0

    .line 166
    .line 167
    const/16 v28, 0x0

    .line 168
    .line 169
    const/16 v29, 0x0

    .line 170
    .line 171
    const/16 v30, 0x0

    .line 172
    .line 173
    const/16 v31, 0x0

    .line 174
    .line 175
    const/16 v32, 0x0

    .line 176
    .line 177
    invoke-static/range {v18 .. v34}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    new-instance v15, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v21

    .line 193
    const/16 v23, 0x4

    .line 194
    .line 195
    const/16 v24, 0x0

    .line 196
    .line 197
    const/16 v22, 0x0

    .line 198
    .line 199
    move-object/from16 v19, v14

    .line 200
    .line 201
    move-object/from16 v20, v35

    .line 202
    .line 203
    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    const-string v20, "FTPService"

    .line 207
    .line 208
    new-instance v8, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v21

    .line 220
    const/16 v23, 0x4

    .line 221
    .line 222
    const/16 v24, 0x0

    .line 223
    .line 224
    const/16 v22, 0x0

    .line 225
    .line 226
    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .line 228
    .line 229
    :try_start_2
    invoke-virtual {v10}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v10}, Ljava/net/URI;->getPort()I

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    invoke-virtual {v9, v8, v7}, Lyi7;->c(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v7, v9, Lyi7;->b:Ljava/net/Socket;

    .line 241
    .line 242
    const/16 v8, 0x7530

    .line 243
    .line 244
    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {v18 .. v18}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getValidUsername()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-virtual/range {v18 .. v18}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPassword()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-virtual {v9, v7, v8}, Ld23;->u(Ljava/lang/String;Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-eqz v7, :cond_13

    .line 260
    .line 261
    instance-of v6, v9, Lk23;

    .line 262
    .line 263
    if-eqz v6, :cond_8

    .line 264
    .line 265
    move-object v6, v9

    .line 266
    check-cast v6, Lk23;

    .line 267
    .line 268
    const-string v7, "PBSZ"

    .line 269
    .line 270
    const-wide/16 v13, 0x0

    .line 271
    .line 272
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-virtual {v6, v7, v8}, Lk23;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    const/16 v8, 0xc8

    .line 281
    .line 282
    if-ne v8, v7, :cond_7

    .line 283
    .line 284
    move-object v6, v9

    .line 285
    check-cast v6, Lk23;

    .line 286
    .line 287
    invoke-virtual {v6}, Lk23;->z()V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :catch_0
    move-exception v0

    .line 292
    goto/16 :goto_b

    .line 293
    .line 294
    :cond_7
    new-instance v0, Ljavax/net/ssl/SSLException;

    .line 295
    .line 296
    invoke-virtual {v6}, Lz13;->i()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_8
    :goto_4
    if-eqz v11, :cond_b

    .line 305
    .line 306
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-nez v6, :cond_9

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_9
    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    const-string v6, "CWD"

    .line 318
    .line 319
    invoke-virtual {v9, v6, v0}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    invoke-static {v0}, Lk55;->x(I)Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eqz v0, :cond_a

    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_a
    invoke-virtual {v9}, Lz13;->i()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v2

    .line 356
    :cond_b
    :goto_5
    const-string v0, "I"

    .line 357
    .line 358
    const-string v5, "TYPE"

    .line 359
    .line 360
    invoke-virtual {v9, v5, v0}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    invoke-static {v0}, Lk55;->x(I)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    const/4 v5, 0x2

    .line 369
    if-eqz v0, :cond_c

    .line 370
    .line 371
    iput v5, v9, Ld23;->y:I

    .line 372
    .line 373
    const/4 v0, 0x1

    .line 374
    goto :goto_6

    .line 375
    :cond_c
    move/from16 v0, v16

    .line 376
    .line 377
    :goto_6
    if-eqz v0, :cond_12

    .line 378
    .line 379
    iput v5, v9, Ld23;->u:I

    .line 380
    .line 381
    const/4 v4, 0x0

    .line 382
    iput-object v4, v9, Ld23;->x:Ljava/lang/String;

    .line 383
    .line 384
    const/4 v0, -0x1

    .line 385
    iput v0, v9, Ld23;->w:I

    .line 386
    .line 387
    iput-object v12, v1, Lo23;->j:Lys3;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    .line 389
    :goto_7
    if-nez p1, :cond_10

    .line 390
    .line 391
    :try_start_3
    invoke-virtual {v9}, Ld23;->v()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    goto :goto_8

    .line 396
    :catch_1
    move-exception v0

    .line 397
    :try_start_4
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 398
    .line 399
    const-string v19, "FTPService"

    .line 400
    .line 401
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v20

    .line 409
    const/16 v22, 0x4

    .line 410
    .line 411
    const/16 v23, 0x0

    .line 412
    .line 413
    const/16 v21, 0x0

    .line 414
    .line 415
    invoke-static/range {v18 .. v23}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    move-object v15, v4

    .line 419
    :goto_8
    if-eqz v15, :cond_f

    .line 420
    .line 421
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-nez v0, :cond_d

    .line 426
    .line 427
    goto :goto_9

    .line 428
    :cond_d
    if-eqz v11, :cond_10

    .line 429
    .line 430
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_e

    .line 435
    .line 436
    goto :goto_a

    .line 437
    :cond_e
    const/4 v3, 0x1

    .line 438
    new-array v0, v3, [C

    .line 439
    .line 440
    aput-char v17, v0, v16

    .line 441
    .line 442
    invoke-static {v15, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v0, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-nez v0, :cond_10

    .line 451
    .line 452
    :cond_f
    :goto_9
    const-string v0, "FTPService"

    .line 453
    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v2, ", recreating FTPClient"

    .line 463
    .line 464
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    const/4 v3, 0x1

    .line 475
    invoke-virtual {v1, v3}, Lo23;->z(Z)Ld23;

    .line 476
    .line 477
    .line 478
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 479
    monitor-exit p0

    .line 480
    return-object v0

    .line 481
    :cond_10
    :goto_a
    :try_start_5
    iget-boolean v0, v1, Lo23;->k:Z

    .line 482
    .line 483
    if-nez v0, :cond_11

    .line 484
    .line 485
    const-string v0, "FTPService"

    .line 486
    .line 487
    const-string v2, "PrintCapabilities"

    .line 488
    .line 489
    new-instance v3, Lrm;

    .line 490
    .line 491
    const/4 v4, 0x5

    .line 492
    invoke-direct {v3, v4, v1, v9}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    const/16 v4, 0x8

    .line 496
    .line 497
    const/4 v5, 0x1

    .line 498
    invoke-static {v0, v2, v5, v3, v4}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 499
    .line 500
    .line 501
    :cond_11
    monitor-exit p0

    .line 502
    return-object v9

    .line 503
    :cond_12
    :try_start_6
    invoke-virtual {v9}, Lz13;->i()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 520
    .line 521
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    throw v2

    .line 529
    :cond_13
    invoke-virtual {v9}, Lz13;->i()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 546
    .line 547
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 555
    :goto_b
    :try_start_7
    const-string v2, "getFtpClientInternal: Discarding FTP client after failed setup"

    .line 556
    .line 557
    invoke-virtual {v1, v9, v2}, Lo23;->x(Ld23;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw v0

    .line 561
    :cond_14
    const-string v0, "Required value was null."

    .line 562
    .line 563
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 564
    .line 565
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    throw v2

    .line 569
    :goto_c
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 570
    throw v0
.end method
