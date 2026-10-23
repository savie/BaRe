.class public final synthetic Lpf2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lpf2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lpf2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lpf2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lpf2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lpf2;->e:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lpf2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lpf2;->e:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lpf2;->d:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lpf2;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lpf2;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Li75;

    .line 16
    .line 17
    check-cast v4, Ljava/lang/String;

    .line 18
    .line 19
    check-cast v3, Ljava/util/Map;

    .line 20
    .line 21
    check-cast v2, Ljava/util/List;

    .line 22
    .line 23
    iget-object v0, p0, Li75;->a:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Llf5;

    .line 26
    .line 27
    iget-object p0, p0, Li75;->k:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v4, p0}, Llf5;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_1

    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    invoke-virtual {v0, v4, v3, p0}, Llf5;->h(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_3

    .line 63
    .line 64
    const-string p0, "Failed to close rollouts state file."

    .line 65
    .line 66
    iget-object v0, v0, Llf5;->a:Lca3;

    .line 67
    .line 68
    const-string v3, "rollouts-state"

    .line 69
    .line 70
    invoke-virtual {v0, v4, v3}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "Rollout state is empty for session: "

    .line 83
    .line 84
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v0, p0}, Llf5;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_2
    :try_start_0
    invoke-static {v2}, Llf5;->e(Ljava/util/List;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v3, Ljava/io/BufferedWriter;

    .line 103
    .line 104
    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 105
    .line 106
    new-instance v5, Ljava/io/FileOutputStream;

    .line 107
    .line 108
    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 109
    .line 110
    .line 111
    sget-object v6, Llf5;->b:Ljava/nio/charset/Charset;

    .line 112
    .line 113
    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    .line 118
    .line 119
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    .line 125
    :goto_0
    invoke-static {v3, p0}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    move-object v1, v3

    .line 131
    goto :goto_2

    .line 132
    :catch_0
    move-exception v1

    .line 133
    goto :goto_1

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    goto :goto_2

    .line 136
    :catch_1
    move-exception v2

    .line 137
    move-object v3, v1

    .line 138
    move-object v1, v2

    .line 139
    :goto_1
    :try_start_2
    const-string v2, "Error serializing rollouts state."

    .line 140
    .line 141
    const-string v4, "FirebaseCrashlytics"

    .line 142
    .line 143
    invoke-static {v4, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Llf5;->f(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :goto_2
    invoke-static {v1, p0}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_3
    :goto_3
    return-void

    .line 155
    :pswitch_0
    check-cast p0, Lsf2;

    .line 156
    .line 157
    check-cast v4, Loe0;

    .line 158
    .line 159
    iget-object v0, v4, Loe0;->a:Ljava/lang/String;

    .line 160
    .line 161
    check-cast v3, Lza8;

    .line 162
    .line 163
    check-cast v2, Lkd0;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    sget-object v5, Lsf2;->f:Ljava/util/logging/Logger;

    .line 169
    .line 170
    const-string v6, "Transport backend \'"

    .line 171
    .line 172
    :try_start_3
    iget-object v7, p0, Lsf2;->c:Lmf5;

    .line 173
    .line 174
    invoke-virtual {v7, v0}, Lmf5;->a(Ljava/lang/String;)Lua8;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    if-nez v7, :cond_4

    .line 179
    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v0, "\' is not registered"

    .line 189
    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {v5, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 201
    .line 202
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v3, v0}, Lza8;->b(Ljava/lang/Exception;)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :catch_2
    move-exception p0

    .line 210
    goto :goto_4

    .line 211
    :cond_4
    check-cast v7, Ld31;

    .line 212
    .line 213
    invoke-virtual {v7, v2}, Ld31;->a(Lkd0;)Lkd0;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v2, p0, Lsf2;->e:Lmw6;

    .line 218
    .line 219
    new-instance v6, Lqf2;

    .line 220
    .line 221
    invoke-direct {v6, p0, v4, v0}, Lqf2;-><init>(Lsf2;Loe0;Lkd0;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v6}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-interface {v3, v1}, Lza8;->b(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v1, "Error scheduling event "

    .line 234
    .line 235
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {v3, p0}, Lza8;->b(Ljava/lang/Exception;)V

    .line 253
    .line 254
    .line 255
    :goto_5
    return-void

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
