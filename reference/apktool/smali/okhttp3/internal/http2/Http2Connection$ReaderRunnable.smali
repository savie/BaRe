.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$Handler;
.implements Lbt3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReaderRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "Lbt3;"
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/internal/http2/Http2Reader;

.field public final synthetic b:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->a:Lokhttp3/internal/http2/Http2Reader;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(ZILzw0;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 13
    .line 14
    sget-object v5, Lokhttp3/internal/http2/Http2Connection;->S:Lokhttp3/internal/http2/Settings;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    and-int/lit8 v7, v2, 0x1

    .line 21
    .line 22
    if-nez v7, :cond_0

    .line 23
    .line 24
    move v7, v6

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v7, v5

    .line 27
    :goto_0
    if-eqz v7, :cond_1

    .line 28
    .line 29
    new-instance v0, Lnw0;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    int-to-long v5, v4

    .line 35
    invoke-interface {v1, v5, v6}, Lzw0;->j0(J)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0, v5, v6}, Lij7;->H(Lnw0;J)J

    .line 39
    .line 40
    .line 41
    iget-object v6, v3, Lokhttp3/internal/http2/Http2Connection;->p:Lokhttp3/internal/concurrent/TaskQueue;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v5, v3, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v5, 0x5b

    .line 54
    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, "] onData"

    .line 62
    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    move-object v1, v3

    .line 71
    move-object v3, v0

    .line 72
    new-instance v0, Lokhttp3/internal/http2/a;

    .line 73
    .line 74
    move/from16 v5, p1

    .line 75
    .line 76
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/a;-><init>(Lokhttp3/internal/http2/Http2Connection;ILnw0;IZ)V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x6

    .line 80
    invoke-static {v6, v7, v0, v1}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    invoke-virtual {v3, v2}, Lokhttp3/internal/http2/Http2Connection;->b(I)Lokhttp3/internal/http2/Http2Stream;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 91
    .line 92
    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    .line 93
    .line 94
    invoke-virtual {v3, v2, v5}, Lokhttp3/internal/http2/Http2Connection;->n(ILokhttp3/internal/http2/ErrorCode;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 98
    .line 99
    int-to-long v2, v4

    .line 100
    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->j(J)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v2, v3}, Lzw0;->skip(J)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 108
    .line 109
    iget-object v0, v3, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 110
    .line 111
    int-to-long v7, v4

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-wide v9, v7

    .line 116
    :goto_1
    const-wide/16 v11, 0x0

    .line 117
    .line 118
    cmp-long v2, v9, v11

    .line 119
    .line 120
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->f:Lokhttp3/internal/http2/Http2Stream;

    .line 121
    .line 122
    if-lez v2, :cond_a

    .line 123
    .line 124
    monitor-enter v4

    .line 125
    :try_start_0
    iget-boolean v2, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->b:Z

    .line 126
    .line 127
    iget-object v13, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->d:Lnw0;

    .line 128
    .line 129
    iget-wide v13, v13, Lnw0;->b:J

    .line 130
    .line 131
    add-long/2addr v13, v9

    .line 132
    move-wide v15, v11

    .line 133
    iget-wide v11, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    .line 135
    cmp-long v11, v13, v11

    .line 136
    .line 137
    if-lez v11, :cond_3

    .line 138
    .line 139
    move v11, v6

    .line 140
    goto :goto_2

    .line 141
    :cond_3
    move v11, v5

    .line 142
    :goto_2
    monitor-exit v4

    .line 143
    if-eqz v11, :cond_4

    .line 144
    .line 145
    invoke-interface {v1, v9, v10}, Lzw0;->skip(J)V

    .line 146
    .line 147
    .line 148
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->f:Lokhttp3/internal/http2/Http2Stream;

    .line 149
    .line 150
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->f:Lokhttp3/internal/http2/ErrorCode;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Stream;->f(Lokhttp3/internal/http2/ErrorCode;)V

    .line 153
    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_4
    if-eqz v2, :cond_5

    .line 157
    .line 158
    invoke-interface {v1, v9, v10}, Lzw0;->skip(J)V

    .line 159
    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_5
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->c:Lnw0;

    .line 163
    .line 164
    invoke-interface {v1, v2, v9, v10}, Lij7;->H(Lnw0;J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v11

    .line 168
    const-wide/16 v13, -0x1

    .line 169
    .line 170
    cmp-long v2, v11, v13

    .line 171
    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    sub-long/2addr v9, v11

    .line 175
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->f:Lokhttp3/internal/http2/Http2Stream;

    .line 176
    .line 177
    monitor-enter v2

    .line 178
    :try_start_1
    iget-boolean v4, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->e:Z

    .line 179
    .line 180
    if-eqz v4, :cond_6

    .line 181
    .line 182
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->c:Lnw0;

    .line 183
    .line 184
    invoke-virtual {v4}, Lnw0;->a()V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    goto :goto_5

    .line 190
    :cond_6
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->d:Lnw0;

    .line 191
    .line 192
    iget-wide v11, v4, Lnw0;->b:J

    .line 193
    .line 194
    cmp-long v11, v11, v15

    .line 195
    .line 196
    if-nez v11, :cond_7

    .line 197
    .line 198
    move v11, v6

    .line 199
    goto :goto_3

    .line 200
    :cond_7
    move v11, v5

    .line 201
    :goto_3
    iget-object v12, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->c:Lnw0;

    .line 202
    .line 203
    invoke-virtual {v4, v12}, Lnw0;->B(Lij7;)J

    .line 204
    .line 205
    .line 206
    if-eqz v11, :cond_8

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .line 210
    .line 211
    :cond_8
    :goto_4
    monitor-exit v2

    .line 212
    goto :goto_1

    .line 213
    :goto_5
    monitor-exit v2

    .line 214
    throw v0

    .line 215
    :cond_9
    invoke-static {}, Ld6;->d()V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :catchall_1
    move-exception v0

    .line 220
    monitor-exit v4

    .line 221
    throw v0

    .line 222
    :cond_a
    sget-object v1, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 223
    .line 224
    iget-object v1, v4, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 225
    .line 226
    invoke-virtual {v1, v7, v8}, Lokhttp3/internal/http2/Http2Connection;->j(J)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->f:Lokhttp3/internal/http2/Http2Stream;

    .line 230
    .line 231
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 232
    .line 233
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->I:Lokhttp3/internal/http2/FlowControlListener;

    .line 234
    .line 235
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->c:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 236
    .line 237
    invoke-interface {v1, v0}, Lokhttp3/internal/http2/FlowControlListener;->a(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V

    .line 238
    .line 239
    .line 240
    :goto_6
    if-eqz p1, :cond_b

    .line 241
    .line 242
    sget-object v0, Lokhttp3/Headers;->b:Lokhttp3/Headers;

    .line 243
    .line 244
    invoke-virtual {v3, v0, v6}, Lokhttp3/internal/http2/Http2Stream;->j(Lokhttp3/Headers;Z)V

    .line 245
    .line 246
    .line 247
    :cond_b
    return-void
.end method

.method public final c(ILjava/util/List;Z)V
    .locals 8

    .line 1
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    sget-object p0, Lokhttp3/internal/http2/Http2Connection;->S:Lokhttp3/internal/http2/Settings;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    and-int/lit8 p0, p1, 0x1

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    const/4 v6, 0x6

    .line 15
    const/16 v7, 0x5b

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object p0, v2, Lokhttp3/internal/http2/Http2Connection;->p:Lokhttp3/internal/concurrent/TaskQueue;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, v2, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "] onHeaders"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lokhttp3/internal/http2/d;

    .line 47
    .line 48
    invoke-direct {v1, v2, p1, p2, p3}, Lokhttp3/internal/http2/d;-><init>(Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0, v1, v6}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    monitor-enter v2

    .line 56
    :try_start_0
    invoke-virtual {v2, p1}, Lokhttp3/internal/http2/Http2Connection;->b(I)Lokhttp3/internal/http2/Http2Stream;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-nez p0, :cond_5

    .line 61
    .line 62
    iget-boolean p0, v2, Lokhttp3/internal/http2/Http2Connection;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    monitor-exit v2

    .line 67
    return-void

    .line 68
    :cond_2
    :try_start_1
    iget p0, v2, Lokhttp3/internal/http2/Http2Connection;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    if-gt p1, p0, :cond_3

    .line 71
    .line 72
    monitor-exit v2

    .line 73
    return-void

    .line 74
    :cond_3
    :try_start_2
    rem-int/lit8 p0, p1, 0x2

    .line 75
    .line 76
    iget v0, v2, Lokhttp3/internal/http2/Http2Connection;->e:I

    .line 77
    .line 78
    rem-int/lit8 v0, v0, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    if-ne p0, v0, :cond_4

    .line 81
    .line 82
    monitor-exit v2

    .line 83
    return-void

    .line 84
    :cond_4
    :try_start_3
    invoke-static {p2}, Lokhttp3/internal/_UtilJvmKt;->h(Ljava/util/List;)Lokhttp3/Headers;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    new-instance v0, Lokhttp3/internal/http2/Http2Stream;

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    move v1, p1

    .line 92
    move v4, p3

    .line 93
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    .line 94
    .line 95
    .line 96
    iput v1, v2, Lokhttp3/internal/http2/Http2Connection;->d:I

    .line 97
    .line 98
    iget-object p0, v2, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iget-object p0, v2, Lokhttp3/internal/http2/Http2Connection;->k:Lokhttp3/internal/concurrent/TaskRunner;

    .line 108
    .line 109
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskRunner;->d()Lokhttp3/internal/concurrent/TaskQueue;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object p2, v2, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p2, "] onStream"

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance p2, Lyq;

    .line 139
    .line 140
    invoke-direct {p2, v6, v2, v0}, Lyq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p0, p1, p2, v6}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    .line 145
    .line 146
    monitor-exit v2

    .line 147
    return-void

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    move-object p0, v0

    .line 150
    goto :goto_1

    .line 151
    :cond_5
    move v4, p3

    .line 152
    monitor-exit v2

    .line 153
    invoke-static {p2}, Lokhttp3/internal/_UtilJvmKt;->h(Ljava/util/List;)Lokhttp3/Headers;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, p1, v4}, Lokhttp3/internal/http2/Http2Stream;->j(Lokhttp3/Headers;Z)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :goto_1
    monitor-exit v2

    .line 162
    throw p0
.end method

.method public final e(IIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    if-eqz p3, :cond_3

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 p0, 0x1

    .line 7
    const-wide/16 p2, 0x1

    .line 8
    .line 9
    if-eq p1, p0, :cond_2

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    if-eq p1, p0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x3

    .line 15
    if-eq p1, p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-wide p0, v0, Lokhttp3/internal/http2/Http2Connection;->G:J

    .line 25
    .line 26
    add-long/2addr p0, p2

    .line 27
    iput-wide p0, v0, Lokhttp3/internal/http2/Http2Connection;->G:J

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-wide p0, v0, Lokhttp3/internal/http2/Http2Connection;->x:J

    .line 31
    .line 32
    add-long/2addr p0, p2

    .line 33
    iput-wide p0, v0, Lokhttp3/internal/http2/Http2Connection;->x:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    throw p0

    .line 39
    :cond_3
    iget-object p3, v0, Lokhttp3/internal/http2/Http2Connection;->n:Lokhttp3/internal/concurrent/TaskQueue;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 47
    .line 48
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, " ping"

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 57
    .line 58
    new-instance v1, Lc74;

    .line 59
    .line 60
    invoke-direct {v1, p0, p1, p2}, Lc74;-><init>(Lokhttp3/internal/http2/Http2Connection;II)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x6

    .line 64
    invoke-static {p3, v0, v1, p0}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final f(ILjava/util/List;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->R:Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->n(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->R:Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->p:Lokhttp3/internal/concurrent/TaskQueue;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v2, 0x5b

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, "] onRequest"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Lokhttp3/internal/http2/b;

    .line 65
    .line 66
    invoke-direct {v2, p0, p1, p2}, Lokhttp3/internal/http2/b;-><init>(Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x6

    .line 70
    invoke-static {v0, v1, v2, p0}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_0
    monitor-exit p0

    .line 75
    throw p1
.end method

.method public final g(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->S:Lokhttp3/internal/http2/Settings;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->p:Lokhttp3/internal/concurrent/TaskQueue;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x5b

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "] onReset"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lokhttp3/internal/http2/c;

    .line 41
    .line 42
    invoke-direct {v2, p0, p1, p2}, Lokhttp3/internal/http2/c;-><init>(Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x6

    .line 46
    invoke-static {v0, v1, v2, p0}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->g(I)Lokhttp3/internal/http2/Http2Stream;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->g()Lokhttp3/internal/http2/ErrorCode;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->t:Lokhttp3/internal/http2/ErrorCode;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit p0

    .line 74
    throw p1

    .line 75
    :cond_2
    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->a:Lokhttp3/internal/http2/Http2Reader;

    .line 4
    .line 5
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->e:Lokhttp3/internal/http2/ErrorCode;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v1, v3, p0}, Lokhttp3/internal/http2/Http2Reader;->a(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z

    .line 10
    .line 11
    .line 12
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :try_start_1
    invoke-virtual {v1, v3, p0}, Lokhttp3/internal/http2/Http2Reader;->a(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->c:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    :try_start_2
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    invoke-virtual {v0, p0, v2, v4}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {v1}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    .line 30
    .line 31
    .line 32
    goto :goto_4

    .line 33
    :catchall_0
    move-exception v3

    .line 34
    goto :goto_5

    .line 35
    :catch_0
    move-exception v3

    .line 36
    move-object v4, v3

    .line 37
    goto :goto_3

    .line 38
    :catchall_1
    move-exception v3

    .line 39
    :goto_1
    move-object p0, v2

    .line 40
    goto :goto_5

    .line 41
    :catch_1
    move-exception p0

    .line 42
    move-object v4, p0

    .line 43
    move-object p0, v2

    .line 44
    goto :goto_3

    .line 45
    :cond_1
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    .line 46
    .line 47
    const-string v3, "Required SETTINGS preface not received"

    .line 48
    .line 49
    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 53
    :goto_2
    move-object v3, p0

    .line 54
    goto :goto_1

    .line 55
    :catchall_2
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :goto_3
    :try_start_4
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 58
    .line 59
    invoke-virtual {v0, p0, p0, v4}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 64
    .line 65
    return-object p0

    .line 66
    :goto_5
    invoke-virtual {v0, p0, v2, v4}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    .line 70
    .line 71
    .line 72
    throw v3
.end method
