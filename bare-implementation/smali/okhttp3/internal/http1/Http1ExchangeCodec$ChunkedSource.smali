.class final Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;
.super Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChunkedSource"
.end annotation


# instance fields
.field public e:J

.field public f:Z

.field public final synthetic k:Lokhttp3/internal/http1/Http1ExchangeCodec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->k:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 p1, -0x1

    .line 10
    .line 11
    iput-wide p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->e:J

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->f:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final H(Lnw0;J)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    iget-object v3, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->k:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 6
    .line 7
    iget-object v4, v3, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokhttp3/internal/connection/BufferedSocket;

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long v7, v1, v5

    .line 15
    .line 16
    if-ltz v7, :cond_c

    .line 17
    .line 18
    iget-boolean v7, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->c:Z

    .line 19
    .line 20
    if-nez v7, :cond_b

    .line 21
    .line 22
    iget-boolean v7, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->f:Z

    .line 23
    .line 24
    const-wide/16 v8, -0x1

    .line 25
    .line 26
    if-nez v7, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    iget-wide v10, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->e:J

    .line 31
    .line 32
    cmp-long v7, v10, v5

    .line 33
    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    cmp-long v7, v10, v8

    .line 37
    .line 38
    if-nez v7, :cond_8

    .line 39
    .line 40
    :cond_1
    const-string v7, "expected chunk size and optional extensions but was \""

    .line 41
    .line 42
    cmp-long v10, v10, v8

    .line 43
    .line 44
    if-eqz v10, :cond_2

    .line 45
    .line 46
    invoke-interface {v4}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lzw0;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-interface {v10}, Lzw0;->X()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    :cond_2
    :try_start_0
    invoke-interface {v4}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lzw0;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-interface {v10}, Lzw0;->o0()J

    .line 58
    .line 59
    .line 60
    move-result-wide v10

    .line 61
    iput-wide v10, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->e:J

    .line 62
    .line 63
    invoke-interface {v4}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lzw0;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v4}, Lzw0;->X()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v4}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    iget-wide v10, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->e:J

    .line 80
    .line 81
    cmp-long v10, v10, v5

    .line 82
    .line 83
    if-ltz v10, :cond_a

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    const/4 v11, 0x0

    .line 90
    if-lez v10, :cond_3

    .line 91
    .line 92
    const-string v10, ";"

    .line 93
    .line 94
    invoke-static {v4, v10, v11}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    if-eqz v10, :cond_a

    .line 99
    .line 100
    :cond_3
    iget-wide v12, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->e:J

    .line 101
    .line 102
    cmp-long v4, v12, v5

    .line 103
    .line 104
    if-nez v4, :cond_7

    .line 105
    .line 106
    iput-boolean v11, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->f:Z

    .line 107
    .line 108
    iget-object v4, v3, Lokhttp3/internal/http1/Http1ExchangeCodec;->e:Lokhttp3/internal/http1/HeadersReader;

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance v5, Lokhttp3/Headers$Builder;

    .line 114
    .line 115
    invoke-direct {v5}, Lokhttp3/Headers$Builder;-><init>()V

    .line 116
    .line 117
    .line 118
    :goto_0
    iget-object v6, v4, Lokhttp3/internal/http1/HeadersReader;->a:Lzw0;

    .line 119
    .line 120
    iget-wide v12, v4, Lokhttp3/internal/http1/HeadersReader;->b:J

    .line 121
    .line 122
    invoke-interface {v6, v12, v13}, Lzw0;->E(J)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    iget-wide v12, v4, Lokhttp3/internal/http1/HeadersReader;->b:J

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    int-to-long v14, v7

    .line 133
    sub-long/2addr v12, v14

    .line 134
    iput-wide v12, v4, Lokhttp3/internal/http1/HeadersReader;->b:J

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-nez v7, :cond_4

    .line 141
    .line 142
    invoke-virtual {v5}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v0, v4}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a(Lokhttp3/Headers;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    const/4 v7, 0x4

    .line 151
    const/16 v10, 0x3a

    .line 152
    .line 153
    const/4 v12, 0x1

    .line 154
    invoke-static {v10, v12, v7, v6}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    const/4 v13, -0x1

    .line 159
    if-eq v7, v13, :cond_5

    .line 160
    .line 161
    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    add-int/lit8 v7, v7, 0x1

    .line 166
    .line 167
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-static {v5, v10, v6}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_5
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    const-string v13, ""

    .line 180
    .line 181
    if-ne v7, v10, :cond_6

    .line 182
    .line 183
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v5, v13, v6}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_6
    invoke-static {v5, v13, v6}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_7
    :goto_1
    iget-boolean v4, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->f:Z

    .line 196
    .line 197
    if-nez v4, :cond_8

    .line 198
    .line 199
    :goto_2
    return-wide v8

    .line 200
    :cond_8
    iget-wide v4, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->e:J

    .line 201
    .line 202
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 203
    .line 204
    .line 205
    move-result-wide v1

    .line 206
    move-object/from16 v4, p1

    .line 207
    .line 208
    invoke-super {v0, v4, v1, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->H(Lnw0;J)J

    .line 209
    .line 210
    .line 211
    move-result-wide v1

    .line 212
    cmp-long v4, v1, v8

    .line 213
    .line 214
    if-eqz v4, :cond_9

    .line 215
    .line 216
    iget-wide v3, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->e:J

    .line 217
    .line 218
    sub-long/2addr v3, v1

    .line 219
    iput-wide v3, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->e:J

    .line 220
    .line 221
    return-wide v1

    .line 222
    :cond_9
    iget-object v1, v3, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 223
    .line 224
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->f()V

    .line 225
    .line 226
    .line 227
    new-instance v1, Ljava/net/ProtocolException;

    .line 228
    .line 229
    const-string v2, "unexpected end of stream"

    .line 230
    .line 231
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    sget-object v2, Lokhttp3/internal/http1/Http1ExchangeCodec;->f:Lokhttp3/Headers;

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a(Lokhttp3/Headers;)V

    .line 237
    .line 238
    .line 239
    throw v1

    .line 240
    :cond_a
    :try_start_1
    new-instance v1, Ljava/net/ProtocolException;

    .line 241
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-wide v5, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->e:J

    .line 248
    .line 249
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const/16 v0, 0x22

    .line 256
    .line 257
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    new-instance v1, Ljava/net/ProtocolException;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw v1

    .line 279
    :cond_b
    const-string v0, "closed"

    .line 280
    .line 281
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-wide v5

    .line 285
    :cond_c
    const-string v0, "byteCount < 0: "

    .line 286
    .line 287
    invoke-static {v1, v2, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    return-wide v5
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->f:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 11
    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x64

    .line 18
    .line 19
    :try_start_0
    invoke-static {p0, v0}, Lokhttp3/internal/_UtilJvmKt;->g(Lij7;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->k:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 28
    .line 29
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 30
    .line 31
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->f()V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->f:Lokhttp3/Headers;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a(Lokhttp3/Headers;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->c:Z

    .line 41
    .line 42
    return-void
.end method
