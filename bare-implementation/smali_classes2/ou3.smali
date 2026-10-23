.class public final Lou3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Ljh6;

.field public final synthetic b:Lpu3;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lzz3;

.field public final synthetic e:J

.field public final synthetic f:Lrm;

.field public final synthetic g:Lgj;


# direct methods
.method public constructor <init>(Ljh6;Lpu3;Ljava/lang/String;Lzz3;JLrm;Lgj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lou3;->a:Ljh6;

    .line 5
    .line 6
    iput-object p2, p0, Lou3;->b:Lpu3;

    .line 7
    .line 8
    iput-object p3, p0, Lou3;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lou3;->d:Lzz3;

    .line 11
    .line 12
    iput-wide p5, p0, Lou3;->e:J

    .line 13
    .line 14
    iput-object p7, p0, Lou3;->f:Lrm;

    .line 15
    .line 16
    iput-object p8, p0, Lou3;->g:Lgj;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;JJJLe04;)Lh04;
    .locals 11

    .line 1
    iget-object p0, p0, Lou3;->b:Lpu3;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v10, 0x0

    .line 7
    :try_start_0
    iget-object v0, p0, Lpu3;->j:Ld04;

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-wide v3, p3

    .line 12
    move-wide/from16 v5, p5

    .line 13
    .line 14
    move-wide/from16 v7, p7

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v9}, Ld04;->o(Ljava/lang/String;Ljava/io/InputStream;JJJLe04;)Lm04;

    .line 19
    .line 20
    .line 21
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    iget-wide v2, p2, Lm04;->c:J

    .line 23
    .line 24
    iget-object v0, p2, Lm04;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    sget-object p1, Lvr6;->INSTANCE:Lvr6;

    .line 33
    .line 34
    iget-object p0, p0, Lpu3;->k:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "Google Drive rotated the resumable upload URL after byte "

    .line 37
    .line 38
    invoke-static {v2, v3, v1}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v4, 0x4

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    move-object p4, p0

    .line 46
    move-object p3, p1

    .line 47
    move-object/from16 p5, v1

    .line 48
    .line 49
    move/from16 p7, v4

    .line 50
    .line 51
    move-object/from16 p8, v5

    .line 52
    .line 53
    move-object/from16 p6, v6

    .line 54
    .line 55
    invoke-static/range {p3 .. p8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-boolean p0, p2, Lm04;->a:Z

    .line 59
    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    iget-object p0, p2, Lm04;->b:Lyz3;

    .line 63
    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    new-instance p1, Lf04;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lf04;-><init>(Lyz3;)V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_1
    const-string p0, "Google Drive upload completed without file metadata"

    .line 73
    .line 74
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v10

    .line 78
    :cond_2
    new-instance p0, Lg04;

    .line 79
    .line 80
    invoke-direct {p0, v2, v3, v0}, Lg04;-><init>(JLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    move-object p1, v0

    .line 86
    instance-of p2, p1, Lvz3;

    .line 87
    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    move-object p2, p1

    .line 91
    check-cast p2, Lvz3;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move-object p2, v10

    .line 95
    :goto_0
    if-eqz p2, :cond_4

    .line 96
    .line 97
    iget p2, p2, Lvz3;->b:I

    .line 98
    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    :cond_4
    const-wide/16 v0, 0x0

    .line 104
    .line 105
    cmp-long p2, p5, v0

    .line 106
    .line 107
    if-nez p2, :cond_5

    .line 108
    .line 109
    move-wide v0, p3

    .line 110
    goto :goto_1

    .line 111
    :cond_5
    add-long v0, p3, p5

    .line 112
    .line 113
    const-wide/16 v5, 0x1

    .line 114
    .line 115
    sub-long/2addr v0, v5

    .line 116
    :goto_1
    sget-object p2, Lvr6;->INSTANCE:Lvr6;

    .line 117
    .line 118
    iget-object p0, p0, Lpu3;->k:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v10, :cond_6

    .line 121
    .line 122
    const-string v10, "transport"

    .line 123
    .line 124
    :cond_6
    const-string v2, "Google Drive chunk failed: range="

    .line 125
    .line 126
    const-string v5, "-"

    .line 127
    .line 128
    invoke-static {v2, v5, p3, p4}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, "/"

    .line 136
    .line 137
    const-string v1, ", status="

    .line 138
    .line 139
    move-wide/from16 v7, p7

    .line 140
    .line 141
    invoke-static {v2, v0, v7, v8, v1}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/16 v1, 0x8

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    const/4 v3, 0x0

    .line 155
    move-object p3, p0

    .line 156
    move-object/from16 p5, p1

    .line 157
    .line 158
    move-object p4, v0

    .line 159
    move/from16 p7, v1

    .line 160
    .line 161
    move-object/from16 p8, v2

    .line 162
    .line 163
    move-object/from16 p6, v3

    .line 164
    .line 165
    invoke-static/range {p2 .. p8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    throw p1
.end method

.method public final b(JLjava/lang/String;)Lh04;
    .locals 9

    .line 1
    iget-object p0, p0, Lou3;->b:Lpu3;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object v0, p0, Lpu3;->j:Ld04;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ld04;->j(JLjava/lang/String;)Lo04;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p2, p1, Lo04;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p2, p3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 22
    .line 23
    iget-object v3, p0, Lpu3;->k:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    const/4 v7, 0x0

    .line 27
    const-string v4, "Google Drive rotated the resumable upload URL during a status query"

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-boolean p0, p1, Lo04;->a:Z

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    iget-object p0, p1, Lo04;->b:Lyz3;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    new-instance p1, Lf04;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lf04;-><init>(Lyz3;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    const-string p0, "Google Drive upload status completed without file metadata"

    .line 48
    .line 49
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_2
    new-instance p0, Lg04;

    .line 54
    .line 55
    iget-wide v0, p1, Lo04;->c:J

    .line 56
    .line 57
    invoke-direct {p0, v0, v1, p2}, Lg04;-><init>(JLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    move-object p3, v0

    .line 63
    move-object v5, p3

    .line 64
    nop

    .line 65
    instance-of p3, v5, Lvz3;

    .line 66
    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    move-object p3, v5

    .line 70
    check-cast p3, Lvz3;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move-object p3, v1

    .line 74
    :goto_0
    if-eqz p3, :cond_4

    .line 75
    .line 76
    iget p3, p3, Lvz3;->b:I

    .line 77
    .line 78
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_4
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 83
    .line 84
    iget-object v3, p0, Lpu3;->k:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    const-string v1, "transport"

    .line 89
    .line 90
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p3, "Google Drive upload status query failed: total="

    .line 93
    .line 94
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, ", status="

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const/16 v7, 0x8

    .line 113
    .line 114
    const/4 v8, 0x0

    .line 115
    const/4 v6, 0x0

    .line 116
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    throw v5
.end method

.method public final c()Lk04;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-wide v2, v1, Lou3;->e:J

    .line 4
    .line 5
    iget-object v4, v1, Lou3;->d:Lzz3;

    .line 6
    .line 7
    iget-object v5, v1, Lou3;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v1, Lou3;->a:Ljh6;

    .line 10
    .line 11
    iget v6, v0, Ljh6;->a:I

    .line 12
    .line 13
    add-int/lit8 v6, v6, 0x1

    .line 14
    .line 15
    iput v6, v0, Ljh6;->a:I

    .line 16
    .line 17
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 18
    .line 19
    iget-object v13, v1, Lou3;->b:Lpu3;

    .line 20
    .line 21
    iget-object v14, v13, Lpu3;->j:Ld04;

    .line 22
    .line 23
    iget-object v8, v13, Lpu3;->k:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "Starting Google Drive upload session "

    .line 26
    .line 27
    invoke-static {v6, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    const/4 v11, 0x4

    .line 32
    const/4 v12, 0x0

    .line 33
    const/4 v10, 0x0

    .line 34
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v14, v5, v4, v2, v3}, Ld04;->d(Ljava/lang/String;Lzz3;J)Ln04;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v6, v1, Lou3;->f:Lrm;

    .line 42
    .line 43
    invoke-virtual {v6}, Lrm;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance v6, Lj04;

    .line 47
    .line 48
    iget-object v0, v0, Ln04;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v6, v0}, Lj04;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    return-object v6

    .line 54
    :catch_0
    move-exception v0

    .line 55
    move-object v6, v0

    .line 56
    iget-object v0, v1, Lou3;->g:Lgj;

    .line 57
    .line 58
    invoke-virtual {v0}, Lgj;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    instance-of v0, v6, Lvz3;

    .line 62
    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    move-object v1, v6

    .line 66
    check-cast v1, Lvz3;

    .line 67
    .line 68
    iget-object v7, v4, Lzz3;->a:Ljava/lang/String;

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    invoke-static {v5}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    :cond_0
    iget v0, v1, Lvz3;->b:I

    .line 80
    .line 81
    const/16 v5, 0x199

    .line 82
    .line 83
    if-ne v0, v5, :cond_8

    .line 84
    .line 85
    if-eqz v7, :cond_8

    .line 86
    .line 87
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_1
    iget v5, v13, Lag8;->e:I

    .line 96
    .line 97
    :goto_0
    :try_start_1
    const-string v0, "id, name, size, parents, trashed"

    .line 98
    .line 99
    invoke-virtual {v14, v7, v0}, Ld04;->i(Ljava/lang/String;Ljava/lang/String;)Lyz3;

    .line 100
    .line 101
    .line 102
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    iget-object v0, v4, Lzz3;->c:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v5, v8, Lyz3;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v5, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_4

    .line 112
    .line 113
    iget-object v5, v8, Lyz3;->b:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v4, v4, Lzz3;->b:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_4

    .line 122
    .line 123
    iget-wide v4, v8, Lyz3;->c:J

    .line 124
    .line 125
    cmp-long v2, v4, v2

    .line 126
    .line 127
    if-nez v2, :cond_4

    .line 128
    .line 129
    iget-boolean v2, v8, Lyz3;->h:Z

    .line 130
    .line 131
    if-nez v2, :cond_4

    .line 132
    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_2

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    iget-object v2, v8, Lyz3;->g:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    :cond_3
    :goto_1
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 151
    .line 152
    iget-object v15, v13, Lpu3;->k:Ljava/lang/String;

    .line 153
    .line 154
    const/16 v18, 0x4

    .line 155
    .line 156
    const/16 v19, 0x0

    .line 157
    .line 158
    const-string v16, "Reconciled a completed Google Drive upload after a create conflict"

    .line 159
    .line 160
    const/16 v17, 0x0

    .line 161
    .line 162
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 167
    .line 168
    const-string v2, "Generated Google Drive file id resolved to unexpected metadata"

    .line 169
    .line 170
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    throw v1

    .line 177
    :catch_1
    move-exception v0

    .line 178
    invoke-static {v0, v1}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    iget v9, v13, Lag8;->f:I

    .line 182
    .line 183
    if-ge v9, v5, :cond_7

    .line 184
    .line 185
    invoke-virtual {v13, v0}, Lpu3;->k(Ljava/lang/Exception;)Z

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-eqz v9, :cond_7

    .line 190
    .line 191
    instance-of v9, v0, Lvz3;

    .line 192
    .line 193
    if-eqz v9, :cond_5

    .line 194
    .line 195
    move-object v9, v0

    .line 196
    check-cast v9, Lvz3;

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_5
    move-object v9, v8

    .line 200
    :goto_2
    if-eqz v9, :cond_6

    .line 201
    .line 202
    iget-object v9, v9, Lvz3;->d:Ljava/lang/Long;

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_6
    move-object v9, v8

    .line 206
    :goto_3
    invoke-virtual {v13, v9}, Lag8;->h(Ljava/lang/Long;)Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-eqz v9, :cond_7

    .line 211
    .line 212
    iget v0, v13, Lag8;->f:I

    .line 213
    .line 214
    add-int/lit8 v0, v0, 0x1

    .line 215
    .line 216
    iput v0, v13, Lag8;->f:I

    .line 217
    .line 218
    sget-object v15, Lvr6;->INSTANCE:Lvr6;

    .line 219
    .line 220
    iget-object v9, v13, Lpu3;->k:Ljava/lang/String;

    .line 221
    .line 222
    const-string v10, "/"

    .line 223
    .line 224
    const-string v11, ")"

    .line 225
    .line 226
    const-string v12, "Retrying Google Drive completed-upload verification ("

    .line 227
    .line 228
    invoke-static {v12, v0, v10, v11, v5}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v17

    .line 232
    const/16 v19, 0x4

    .line 233
    .line 234
    const/16 v20, 0x0

    .line 235
    .line 236
    const/16 v18, 0x0

    .line 237
    .line 238
    move-object/from16 v16, v9

    .line 239
    .line 240
    invoke-static/range {v15 .. v20}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_7
    throw v0

    .line 246
    :cond_8
    :goto_4
    if-eqz v8, :cond_9

    .line 247
    .line 248
    new-instance v0, Li04;

    .line 249
    .line 250
    invoke-direct {v0, v8}, Li04;-><init>(Lyz3;)V

    .line 251
    .line 252
    .line 253
    return-object v0

    .line 254
    :cond_9
    throw v6
.end method
