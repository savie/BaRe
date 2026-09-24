.class public abstract Lqe7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfl;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfl;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lgv7;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lqe7;->a:Lgv7;

    .line 14
    .line 15
    return-void
.end method

.method public static a()I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lle7;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    const-string v1, "ShizukuHelper"

    .line 8
    .line 9
    const-string v2, "getVersionSafe"

    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    return v0
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-boolean v0, Lle7;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Lqe7;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0xb

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-boolean v0, Lle7;->e:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :try_start_0
    invoke-static {}, Lle7;->h()Lh94;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lf94;

    .line 24
    .line 25
    invoke-virtual {v0}, Lf94;->f()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sput-boolean v0, Lle7;->e:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    return v0

    .line 40
    :cond_2
    :goto_0
    invoke-static {}, Lf13;->d()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "moe.shizuku.manager.permission.API_V23"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    :goto_1
    const/4 v0, 0x1

    .line 53
    return v0

    .line 54
    :cond_3
    const/4 v0, 0x0

    .line 55
    return v0
.end method

.method public static c([Ljava/lang/String;)Lne7;
    .locals 13

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, [Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    const-string v2, "sh"

    .line 15
    .line 16
    filled-new-array {v2}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 20
    :try_start_1
    sget-object v3, Lqe7;->a:Lgv7;

    .line 21
    .line 22
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/reflect/Method;

    .line 27
    .line 28
    filled-new-array {v2, v1, v1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast v2, Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 40
    .line 41
    :try_start_2
    new-instance v5, Lpx;

    .line 42
    .line 43
    const/16 v10, 0x10

    .line 44
    .line 45
    invoke-direct {v5, v0, v10}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v3, Loe7;

    .line 56
    .line 57
    const-class v6, Lmt3;

    .line 58
    .line 59
    const-string v7, "invoke"

    .line 60
    .line 61
    const-string v8, "invoke(Ljava/lang/Object;)Ljava/lang/Object;"

    .line 62
    .line 63
    const/16 v9, 0x8

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-direct/range {v3 .. v9}, Lv9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    new-instance v4, Ly2;

    .line 70
    .line 71
    invoke-direct {v4, v10, v11, v3}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance v11, Lw28;

    .line 75
    .line 76
    invoke-direct {v11, v4}, Lw28;-><init>(Ly2;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 80
    .line 81
    .line 82
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v3, Lpe7;

    .line 90
    .line 91
    const-class v6, Lmt3;

    .line 92
    .line 93
    const-string v7, "invoke"

    .line 94
    .line 95
    const-string v8, "invoke(Ljava/lang/Object;)Ljava/lang/Object;"

    .line 96
    .line 97
    const/16 v9, 0x8

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    invoke-direct/range {v3 .. v9}, Lv9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    new-instance v4, Ly2;

    .line 104
    .line 105
    invoke-direct {v4, v10, v12, v3}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance v3, Lw28;

    .line 109
    .line 110
    invoke-direct {v3, v4}, Lw28;-><init>(Ly2;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 114
    .line 115
    .line 116
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 117
    .line 118
    .line 119
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :try_start_5
    const-string v4, " ; "

    .line 121
    .line 122
    const/16 v5, 0x3e

    .line 123
    .line 124
    invoke-static {v5, v4, p0}, Lx50;->s0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    sget-object v4, Lf51;->a:Ljava/nio/charset/Charset;

    .line 129
    .line 130
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    .line 142
    .line 143
    :try_start_6
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    invoke-virtual {v11}, Ljava/lang/Thread;->join()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 154
    .line 155
    .line 156
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 163
    .line 164
    .line 165
    :catch_0
    new-instance v1, Lne7;

    .line 166
    .line 167
    invoke-direct {v1, v0, p0}, Lne7;-><init>(Ljava/util/ArrayList;I)V

    .line 168
    .line 169
    .line 170
    return-object v1

    .line 171
    :catchall_0
    move-exception v0

    .line 172
    move-object p0, v0

    .line 173
    :goto_0
    move-object v1, v11

    .line 174
    goto :goto_4

    .line 175
    :catchall_1
    move-exception v0

    .line 176
    move-object p0, v0

    .line 177
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 178
    :catchall_2
    move-exception v0

    .line 179
    :try_start_9
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 183
    :goto_1
    move-object v3, v1

    .line 184
    goto :goto_0

    .line 185
    :catchall_3
    move-exception v0

    .line 186
    move-object p0, v0

    .line 187
    goto :goto_1

    .line 188
    :goto_2
    move-object v3, v1

    .line 189
    goto :goto_4

    .line 190
    :catchall_4
    move-exception v0

    .line 191
    move-object p0, v0

    .line 192
    goto :goto_2

    .line 193
    :catch_1
    move-exception v0

    .line 194
    move-object p0, v0

    .line 195
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 196
    .line 197
    const-string v2, "Failed to start Shizuku process"

    .line 198
    .line 199
    invoke-direct {v0, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 203
    :goto_3
    move-object v2, v1

    .line 204
    move-object v3, v2

    .line 205
    goto :goto_4

    .line 206
    :catchall_5
    move-exception v0

    .line 207
    move-object p0, v0

    .line 208
    goto :goto_3

    .line 209
    :goto_4
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 210
    :catchall_6
    move-exception v0

    .line 211
    move-object p0, v0

    .line 212
    if-eqz v1, :cond_0

    .line 213
    .line 214
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 215
    .line 216
    .line 217
    :cond_0
    if-eqz v3, :cond_1

    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 220
    .line 221
    .line 222
    :cond_1
    if-eqz v2, :cond_2

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 225
    .line 226
    .line 227
    :catch_2
    :cond_2
    throw p0
.end method
