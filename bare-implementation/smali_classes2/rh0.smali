.class public final Lrh0;
.super Lno2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lkh0;

.field public final p:Lfo2;

.field public final q:Ljava/lang/String;

.field public r:Loi5;


# direct methods
.method public constructor <init>(Lkh0;Lfo2;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Lfo2;->a:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p2, Lfo2;->d:Lq63;

    .line 7
    .line 8
    iget-wide v2, p2, Lfo2;->c:J

    .line 9
    .line 10
    invoke-direct {p0, v2, v3, v1, v0}, Lno2;-><init>(JLq63;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lrh0;->n:Lkh0;

    .line 14
    .line 15
    iput-object p2, p0, Lrh0;->p:Lfo2;

    .line 16
    .line 17
    invoke-virtual {p2}, Lfo2;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "BDownloadSession: "

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lrh0;->q:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    const-string v2, "Closing connection with "

    .line 14
    .line 15
    const-string v3, ", may result in unknown errors"

    .line 16
    .line 17
    invoke-static {v2, v0, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    iget-object v2, p0, Lrh0;->q:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lrh0;->close()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lrh0;->r:Loi5;

    .line 2
    .line 3
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrh0;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lno2;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v1, Lrh0;->p:Lfo2;

    .line 6
    .line 7
    const-string v3, "box:"

    .line 8
    .line 9
    iget-object v4, v1, Lrh0;->q:Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, ": executeDownload"

    .line 12
    .line 13
    invoke-static {v4, v5}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    new-instance v4, Lkh6;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v5, Lkh6;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v6, Lph0;

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    invoke-direct {v6, v1, v4, v5, v8}, Lph0;-><init>(Lno2;Lkh6;Lkh6;I)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    new-instance v9, Loi5;

    .line 34
    .line 35
    new-instance v10, Lqh0;

    .line 36
    .line 37
    invoke-direct {v10, v1, v8}, Lqh0;-><init>(Lno2;I)V

    .line 38
    .line 39
    .line 40
    iget-object v11, v1, Lno2;->b:Lq63;

    .line 41
    .line 42
    iget-wide v12, v0, Lfo2;->c:J

    .line 43
    .line 44
    invoke-virtual {v0}, Lfo2;->a()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v15

    .line 48
    iget-wide v4, v0, Lfo2;->c:J

    .line 49
    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, ":"

    .line 59
    .line 60
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v16

    .line 70
    iget-boolean v3, v0, Lfo2;->e:Z

    .line 71
    .line 72
    iget-boolean v0, v0, Lfo2;->f:Z

    .line 73
    .line 74
    const/4 v14, 0x1

    .line 75
    move/from16 v18, v0

    .line 76
    .line 77
    move/from16 v17, v3

    .line 78
    .line 79
    invoke-direct/range {v9 .. v18}, Loi5;-><init>(Lst3;Lq63;JZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 80
    .line 81
    .line 82
    iput-object v9, v1, Lrh0;->r:Loi5;

    .line 83
    .line 84
    invoke-virtual {v9, v6}, Loi5;->b(Lmt3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    move-object v9, v0

    .line 90
    iget-object v0, v1, Lno2;->d:Lgz7;

    .line 91
    .line 92
    invoke-virtual {v0}, Lgz7;->isCancelled()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    return-void

    .line 99
    :cond_0
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 100
    .line 101
    const-string v0, "Error while downloading file id \'"

    .line 102
    .line 103
    const-string v3, "\'"

    .line 104
    .line 105
    invoke-static {v0, v2, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    const/16 v11, 0x8

    .line 110
    .line 111
    const/4 v12, 0x0

    .line 112
    const/4 v10, 0x0

    .line 113
    invoke-static/range {v6 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    move-object v0, v9

    .line 117
    invoke-static {v0}, Ldv0;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const-string v3, "Box specific error: "

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    const/4 v10, 0x4

    .line 128
    const/4 v11, 0x0

    .line 129
    const/4 v9, 0x0

    .line 130
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    sget-object v2, Lnf1;->a:Lai6;

    .line 134
    .line 135
    invoke-static {v0}, Lx13;->J(Ljava/lang/Throwable;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_2

    .line 140
    .line 141
    invoke-static {v0}, Lx13;->G(Ljava/lang/Exception;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_2

    .line 146
    .line 147
    invoke-static {v0}, Lx13;->I(Ljava/lang/Throwable;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_2

    .line 152
    .line 153
    invoke-static {v0}, Lx13;->C(Ljava/lang/Throwable;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_2

    .line 158
    .line 159
    invoke-static {v0}, Lx13;->K(Ljava/lang/Throwable;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, v1, Lno2;->e:Lke;

    .line 167
    .line 168
    iput-object v0, v1, Lke;->b:Ljava/lang/Object;

    .line 169
    .line 170
    return-void

    .line 171
    :cond_2
    :goto_0
    const-string v0, "Retrying download"

    .line 172
    .line 173
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->R()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Lrh0;->j()V

    .line 180
    .line 181
    .line 182
    return-void
.end method
