.class public final synthetic Lme2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lme2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lme2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p0, p0, Lme2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lne2;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lne2;->a:Lps4;

    .line 7
    .line 8
    invoke-virtual {v0}, Lps4;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Lu34;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object v3, p0, Lne2;->c:Lga6;

    .line 20
    .line 21
    invoke-interface {v3}, Lga6;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lfg2;

    .line 26
    .line 27
    iget-object v4, v3, Lfg2;->b:Lty3;

    .line 28
    .line 29
    iget-object v5, v4, Lty3;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v5, Ljava/util/HashSet;

    .line 32
    .line 33
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    iget-object v6, v4, Lty3;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v6, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 43
    :try_start_2
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    iget-object v3, v3, Lfg2;->a:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    :goto_0
    move-object v4, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 v3, 0x20

    .line 62
    .line 63
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v3, v4, Lty3;->a:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v3, Ljava/util/HashSet;

    .line 69
    .line 70
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    iget-object v4, v4, Lty3;->a:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v4, Ljava/util/HashSet;

    .line 74
    .line 75
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 80
    :try_start_4
    invoke-static {v4}, Lfg2;->a(Ljava/util/Set;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_0

    .line 92
    :goto_1
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    :try_start_5
    invoke-virtual {v2, v0, v1}, Lu34;->b(J)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    new-instance v5, Ll46;

    .line 101
    .line 102
    invoke-direct {v5, v4}, Ll46;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v2, Lu34;->a:Lih4;

    .line 106
    .line 107
    new-instance v1, Lrp3;

    .line 108
    .line 109
    const/4 v6, 0x1

    .line 110
    invoke-direct/range {v1 .. v6}, Lrp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    new-instance v3, Lhh4;

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    invoke-direct {v3, v0, v1, v4}, Lhh4;-><init>(Lih4;Lmt3;Ljv1;)V

    .line 120
    .line 121
    .line 122
    sget-object v0, Llv2;->a:Llv2;

    .line 123
    .line 124
    invoke-static {v0, v3}, Ll73;->B(Lox1;Lqt3;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lij5;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    .line 130
    :try_start_6
    monitor-exit v2

    .line 131
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 132
    return-object v4

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    goto :goto_2

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 137
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 138
    :catchall_2
    move-exception v0

    .line 139
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 140
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 141
    :catchall_3
    move-exception v0

    .line 142
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 143
    :try_start_c
    throw v0

    .line 144
    :goto_2
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 145
    throw v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lme2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lme2;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lzd7;

    .line 9
    .line 10
    iget-object v0, p0, Lzd7;->f:Lxd7;

    .line 11
    .line 12
    iget-object v1, p0, Lzd7;->e:Lyd7;

    .line 13
    .line 14
    const-string v2, "cd "

    .line 15
    .line 16
    :try_start_0
    iget-object v3, p0, Lzd7;->d:Ljava/lang/Process;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/io/IOException;

    .line 22
    .line 23
    const-string v4, "Created process has terminated"

    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->a(Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lzd7;->k:Lxd7;

    .line 33
    .line 34
    invoke-static {p0}, Lcom/topjohnwu/superuser/ShellUtils;->a(Ljava/io/InputStream;)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Ljava/io/BufferedReader;

    .line 38
    .line 39
    new-instance v3, Ljava/io/InputStreamReader;

    .line 40
    .line 41
    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 45
    .line 46
    .line 47
    :try_start_1
    const-string v0, "echo SHELL_TEST\n"

    .line 48
    .line 49
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_2

    .line 70
    .line 71
    const-string v4, "SHELL_TEST"

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    const-string v0, "id\n"

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/4 v5, 0x2

    .line 100
    const/4 v6, 0x1

    .line 101
    if-nez v4, :cond_0

    .line 102
    .line 103
    const-string v4, "uid=0"

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    .line 111
    const-class v0, Lji8;

    .line 112
    .line 113
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    sput v5, Lji8;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    .line 116
    :try_start_3
    monitor-exit v0

    .line 117
    const-string v0, "user.dir"

    .line 118
    .line 119
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, "\n"

    .line 136
    .line 137
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .line 153
    .line 154
    move v0, v6

    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto :goto_2

    .line 158
    :catchall_1
    move-exception v1

    .line 159
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 160
    :try_start_5
    throw v1

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    if-ne v0, v6, :cond_1

    .line 163
    .line 164
    const-string v2, "readlink /proc/self/ns/mnt\n"

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const-string v4, "readlink /proc/1/ns/mnt\n"

    .line 181
    .line 182
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_1

    .line 201
    .line 202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-nez v3, :cond_1

    .line 207
    .line 208
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    if-eqz v1, :cond_1

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_1
    move v5, v0

    .line 216
    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 217
    .line 218
    .line 219
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    return-object p0

    .line 224
    :cond_2
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    .line 225
    .line 226
    const-string v1, "Created process is not a shell"

    .line 227
    .line 228
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 232
    :goto_2
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :catchall_2
    move-exception p0

    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    :goto_3
    throw v0

    .line 241
    :pswitch_0
    invoke-direct {p0}, Lme2;->a()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
