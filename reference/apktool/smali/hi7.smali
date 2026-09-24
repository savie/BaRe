.class public final synthetic Lhi7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lji7;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lc62;

.field public final synthetic e:J

.field public final synthetic f:Lmt3;


# direct methods
.method public synthetic constructor <init>(Lji7;Ljava/lang/String;Ljava/lang/String;Lc62;JLmt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhi7;->a:Lji7;

    .line 5
    .line 6
    iput-object p2, p0, Lhi7;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lhi7;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lhi7;->d:Lc62;

    .line 11
    .line 12
    iput-wide p5, p0, Lhi7;->e:J

    .line 13
    .line 14
    iput-object p7, p0, Lhi7;->f:Lmt3;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v1, p0, Lhi7;->a:Lji7;

    .line 2
    .line 3
    iget-object v6, p0, Lhi7;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lhi7;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lhi7;->d:Lc62;

    .line 8
    .line 9
    iget-wide v3, p0, Lhi7;->e:J

    .line 10
    .line 11
    iget-object p0, p0, Lhi7;->f:Lmt3;

    .line 12
    .line 13
    move-object v7, p1

    .line 14
    check-cast v7, Lwm2;

    .line 15
    .line 16
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v1, v6}, Lji7;->w(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v6}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    sget-object p1, Ls5;->q:Ls5;

    .line 27
    .line 28
    sget-object v5, Ls5;->p:Ls5;

    .line 29
    .line 30
    filled-new-array {p1, v5}, [Ls5;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    sget-object p1, Lw63;->c:Lw63;

    .line 39
    .line 40
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    sget-object v11, Lju6;->e:Ljava/util/Set;

    .line 45
    .line 46
    const/4 v12, 0x6

    .line 47
    const/4 v13, 0x0

    .line 48
    invoke-virtual/range {v7 .. v13}, Lwm2;->u(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;)Lr63;

    .line 49
    .line 50
    .line 51
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-virtual {v0}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    new-instance v7, Lf86;

    .line 57
    .line 58
    invoke-virtual {p1}, Lr63;->t0()Lb93;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v8, Lzq6;

    .line 63
    .line 64
    const/4 v9, 0x1

    .line 65
    invoke-direct {v8, v9, p0}, Lzq6;-><init>(ILmt3;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v7, v0, v3, v4, v8}, Lf86;-><init>(Ljava/io/OutputStream;JLqt3;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    .line 70
    .line 71
    const/high16 p0, 0x40000

    .line 72
    .line 73
    :try_start_3
    invoke-static {v5, v7, p0}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 74
    .line 75
    .line 76
    :try_start_4
    invoke-virtual {v7}, Lf86;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 77
    .line 78
    .line 79
    :try_start_5
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 80
    .line 81
    .line 82
    :try_start_6
    invoke-virtual {v7}, Lf86;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 83
    .line 84
    .line 85
    :try_start_7
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 86
    .line 87
    .line 88
    :try_start_8
    invoke-virtual {p1}, Lmm2;->close()V

    .line 89
    .line 90
    .line 91
    invoke-static {v6}, Lji7;->B(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Lji7;->B(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v6}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1, v2}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    new-instance v0, Lyy;

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    invoke-direct/range {v0 .. v5}, Lyy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lji7;->E(Lmt3;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 112
    .line 113
    .line 114
    sget-object p0, Lbe8;->a:Lbe8;

    .line 115
    .line 116
    return-object p0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    move-object p0, v0

    .line 119
    goto :goto_4

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    move-object p0, v0

    .line 122
    goto :goto_3

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    move-object p0, v0

    .line 125
    goto :goto_2

    .line 126
    :catchall_2
    move-exception v0

    .line 127
    move-object p0, v0

    .line 128
    goto :goto_1

    .line 129
    :catchall_3
    move-exception v0

    .line 130
    move-object p0, v0

    .line 131
    goto :goto_0

    .line 132
    :catchall_4
    move-exception v0

    .line 133
    move-object p0, v0

    .line 134
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 135
    :catchall_5
    move-exception v0

    .line 136
    :try_start_a
    invoke-static {v7, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 140
    :goto_0
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 141
    :catchall_6
    move-exception v0

    .line 142
    :try_start_c
    invoke-static {v5, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 146
    :goto_1
    :try_start_d
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 147
    :catchall_7
    move-exception v0

    .line 148
    :try_start_e
    invoke-static {v7, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 152
    :goto_2
    :try_start_f
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 153
    :catchall_8
    move-exception v0

    .line 154
    :try_start_10
    invoke-static {v5, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 158
    :goto_3
    :try_start_11
    throw p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 159
    :catchall_9
    move-exception v0

    .line 160
    :try_start_12
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 164
    :goto_4
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 165
    .line 166
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string v0, "put: "

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    const/4 v11, 0x4

    .line 177
    const/4 v12, 0x0

    .line 178
    const-string v8, "SmbService"

    .line 179
    .line 180
    const/4 v10, 0x0

    .line 181
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v6}, Lji7;->j(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0
.end method
