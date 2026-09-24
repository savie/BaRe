.class public final Ljl2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lkz0;


# static fields
.field public static final l:[C


# instance fields
.field public final b:Ljava/security/SecureRandom;

.field public final c:Lot9;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/nio/charset/Charset;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Ljl2;->l:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Lot9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ljl2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    iput-object p1, p0, Ljl2;->c:Lot9;

    .line 12
    .line 13
    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    iput-object p1, p0, Ljl2;->e:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    new-instance p1, Ljava/security/SecureRandom;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Ljl2;->b:Ljava/security/SecureRandom;

    .line 23
    .line 24
    return-void
.end method

.method public static d([B)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v1, v0, 0x2

    .line 3
    .line 4
    new-array v1, v1, [C

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    aget-byte v3, p0, v2

    .line 10
    .line 11
    and-int/lit8 v4, v3, 0xf

    .line 12
    .line 13
    and-int/lit16 v3, v3, 0xf0

    .line 14
    .line 15
    shr-int/lit8 v3, v3, 0x4

    .line 16
    .line 17
    mul-int/lit8 v5, v2, 0x2

    .line 18
    .line 19
    sget-object v6, Ljl2;->l:[C

    .line 20
    .line 21
    aget-char v3, v6, v3

    .line 22
    .line 23
    aput-char v3, v1, v5

    .line 24
    .line 25
    add-int/lit8 v5, v5, 0x1

    .line 26
    .line 27
    aget-char v3, v6, v4

    .line 28
    .line 29
    aput-char v3, v1, v5

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method public static e(Ljava/lang/String;ILjava/util/concurrent/ConcurrentHashMap;)V
    .locals 8

    .line 1
    new-instance v0, Lex5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lex5;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lir0;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v1, v2}, Lir0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    if-ltz p1, :cond_d

    .line 17
    .line 18
    new-array p1, p1, [C

    .line 19
    .line 20
    iput-object p1, v1, Lir0;->c:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget v2, v1, Lir0;->b:I

    .line 27
    .line 28
    add-int/2addr v2, p1

    .line 29
    iget-object v3, v1, Lir0;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, [C

    .line 32
    .line 33
    array-length v4, v3

    .line 34
    const/4 v5, 0x0

    .line 35
    if-le v2, v4, :cond_0

    .line 36
    .line 37
    array-length v3, v3

    .line 38
    shl-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    new-array v3, v3, [C

    .line 45
    .line 46
    iget-object v4, v1, Lir0;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, [C

    .line 49
    .line 50
    iget v6, v1, Lir0;->b:I

    .line 51
    .line 52
    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iput-object v3, v1, Lir0;->c:Ljava/lang/Object;

    .line 56
    .line 57
    :cond_0
    iget-object v3, v1, Lir0;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, [C

    .line 60
    .line 61
    iget v4, v1, Lir0;->b:I

    .line 62
    .line 63
    invoke-virtual {p0, v5, p1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 64
    .line 65
    .line 66
    iput v2, v1, Lir0;->b:I

    .line 67
    .line 68
    new-instance p0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    iget p1, v0, Lex5;->b:I

    .line 74
    .line 75
    iget v2, v0, Lex5;->a:I

    .line 76
    .line 77
    if-lt p1, v2, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    new-array p1, p1, [Lyo0;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, [Lyo0;

    .line 90
    .line 91
    array-length p1, p0

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    array-length p1, p0

    .line 95
    :goto_1
    if-ge v5, p1, :cond_2

    .line 96
    .line 97
    aget-object v0, p0, v5

    .line 98
    .line 99
    iget-object v1, v0, Lyo0;->a:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v0, v0, Lyo0;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    return-void

    .line 110
    :cond_3
    const-string p0, "Authentication challenge is empty"

    .line 111
    .line 112
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    invoke-static {v1, v0}, Ly13;->v(Lir0;Lex5;)Ldp0;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget v3, v0, Lex5;->b:I

    .line 121
    .line 122
    if-lt v3, v2, :cond_5

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_5
    add-int/lit8 v4, v3, -0x1

    .line 126
    .line 127
    iget-object v6, v1, Lir0;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v6, [C

    .line 130
    .line 131
    aget-char v4, v6, v4

    .line 132
    .line 133
    const/16 v6, 0x2c

    .line 134
    .line 135
    if-eq v4, v6, :cond_b

    .line 136
    .line 137
    :goto_2
    if-ge v3, v2, :cond_7

    .line 138
    .line 139
    iget-object v4, v1, Lir0;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v4, [C

    .line 142
    .line 143
    aget-char v4, v4, v3

    .line 144
    .line 145
    invoke-static {v4}, Ltu0;->o(C)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_6

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Lex5;->a(I)V

    .line 156
    .line 157
    .line 158
    iget v3, v0, Lex5;->b:I

    .line 159
    .line 160
    if-lt v3, v2, :cond_8

    .line 161
    .line 162
    new-array v2, v5, [Ldp0;

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    :cond_9
    iget v4, v0, Lex5;->b:I

    .line 171
    .line 172
    if-lt v4, v2, :cond_a

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_a
    invoke-static {v1, v0}, Ly13;->v(Lir0;Lex5;)Ldp0;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    iget v4, v0, Lex5;->b:I

    .line 183
    .line 184
    add-int/lit8 v4, v4, -0x1

    .line 185
    .line 186
    iget-object v7, v1, Lir0;->c:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v7, [C

    .line 189
    .line 190
    aget-char v4, v7, v4

    .line 191
    .line 192
    if-ne v4, v6, :cond_9

    .line 193
    .line 194
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    new-array v2, v2, [Ldp0;

    .line 199
    .line 200
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, [Ldp0;

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_b
    :goto_5
    const/4 v2, 0x0

    .line 208
    :goto_6
    iget-object v3, p1, Ldp0;->a:Ljava/lang/String;

    .line 209
    .line 210
    iget-object p1, p1, Ldp0;->b:Ljava/lang/String;

    .line 211
    .line 212
    new-instance v4, Lyo0;

    .line 213
    .line 214
    invoke-direct {v4, v3, p1, v2}, Lyo0;-><init>(Ljava/lang/String;Ljava/lang/String;[Ldp0;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_c

    .line 222
    .line 223
    if-eqz p1, :cond_1

    .line 224
    .line 225
    :cond_c
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_d
    const-string p0, "Buffer capacity may not be negative"

    .line 231
    .line 232
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/Route;Lokhttp3/Request;)Lokhttp3/Request;
    .locals 1

    .line 1
    iget-object p1, p0, Ljl2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Map;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    move-object p1, v0

    .line 23
    :goto_0
    invoke-virtual {p0, p2, p1}, Ljl2;->c(Lokhttp3/Request;Ljava/util/concurrent/ConcurrentHashMap;)Lokhttp3/Request;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final declared-synchronized b(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p2, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 3
    .line 4
    iget v0, p2, Lokhttp3/Response;->d:I

    .line 5
    .line 6
    const/16 v1, 0x191

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iput-boolean v2, p0, Ljl2;->k:Z

    .line 12
    .line 13
    const-string v0, "WWW-Authenticate"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v1, 0x197

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Ljl2;->k:Z

    .line 22
    .line 23
    const-string v0, "Proxy-Authenticate"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v0, ""

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->i(Ljava/lang/String;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    const-string v4, "Digest"

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const-string v0, "OkHttp-Preemptive"

    .line 59
    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    :goto_1
    move-object v1, v3

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const-string v0, "unsupported auth scheme: "

    .line 69
    .line 70
    invoke-static {v0, p1}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Ly5;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :goto_2
    if-nez v1, :cond_5

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-object v3

    .line 82
    :cond_5
    :try_start_1
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/lit8 v0, v0, -0x7

    .line 92
    .line 93
    invoke-static {v1, v0, p1}, Ljl2;->e(Ljava/lang/String;ILjava/util/concurrent/ConcurrentHashMap;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p2, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 97
    .line 98
    :goto_3
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-ge v2, v3, :cond_6

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v0, v2}, Lokhttp3/Headers;->g(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    iget-object v0, p0, Ljl2;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 119
    .line 120
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const-string v0, "nonce"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    iget-object p2, p2, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 136
    .line 137
    invoke-virtual {p0, p2, p1}, Ljl2;->c(Lokhttp3/Request;Ljava/util/concurrent/ConcurrentHashMap;)Lokhttp3/Request;

    .line 138
    .line 139
    .line 140
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    monitor-exit p0

    .line 142
    return-object p1

    .line 143
    :catchall_0
    move-exception p1

    .line 144
    goto :goto_4

    .line 145
    :cond_7
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    .line 146
    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v0, "missing nonce in challenge header: "

    .line 153
    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    throw p1
.end method

.method public final c(Lokhttp3/Request;Ljava/util/concurrent/ConcurrentHashMap;)Lokhttp3/Request;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "realm"

    .line 8
    .line 9
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/String;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    return-object v4

    .line 19
    :cond_0
    const-string v3, "nonce"

    .line 20
    .line 21
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v3, :cond_21

    .line 28
    .line 29
    const-string v3, "stale"

    .line 30
    .line 31
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    const-string v5, "true"

    .line 38
    .line 39
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-boolean v5, v1, Ljl2;->k:Z

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    const-string v5, "Proxy-Authorization"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v5, "Authorization"

    .line 51
    .line 52
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v6, v0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 56
    .line 57
    invoke-virtual {v6, v5}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/4 v7, 0x1

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    const-string v8, "Digest"

    .line 65
    .line 66
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    xor-int/2addr v3, v7

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v3, 0x0

    .line 75
    :goto_1
    if-eqz v3, :cond_3

    .line 76
    .line 77
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 78
    .line 79
    const-string v1, "Previous digest authentication with same nonce failed, returning null"

    .line 80
    .line 81
    const/4 v2, 0x4

    .line 82
    invoke-virtual {v0, v2, v1, v4}, Lokhttp3/internal/platform/Platform;->j(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    return-object v4

    .line 86
    :cond_3
    const-string v3, "proxy-authenticate"

    .line 87
    .line 88
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const/16 v5, 0x3a

    .line 93
    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v8, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 102
    .line 103
    iget-object v8, v8, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v8, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 112
    .line 113
    iget v8, v8, Lokhttp3/HttpUrl;->e:I

    .line 114
    .line 115
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const-string v8, "methodname"

    .line 123
    .line 124
    const-string v9, "CONNECT"

    .line 125
    .line 126
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const-string v8, "uri"

    .line 130
    .line 131
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    iget-object v3, v0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v8, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 138
    .line 139
    invoke-virtual {v8}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-virtual {v8}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    if-eqz v8, :cond_5

    .line 148
    .line 149
    const-string v10, "?"

    .line 150
    .line 151
    invoke-static {v9, v10, v8}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    :cond_5
    const-string v8, "methodname"

    .line 156
    .line 157
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const-string v3, "uri"

    .line 161
    .line 162
    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :goto_2
    const-string v3, "charset"

    .line 166
    .line 167
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Ljava/lang/String;

    .line 172
    .line 173
    if-nez v3, :cond_7

    .line 174
    .line 175
    const-string v3, "http.auth.credential-charset"

    .line 176
    .line 177
    iget-object v8, v0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 178
    .line 179
    invoke-virtual {v8, v3}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    if-nez v3, :cond_6

    .line 184
    .line 185
    iget-object v3, v1, Ljl2;->e:Ljava/nio/charset/Charset;

    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    :cond_6
    const-string v8, "charset"

    .line 192
    .line 193
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    :cond_7
    iget-object v3, v1, Ljl2;->c:Lot9;

    .line 197
    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    const-string v8, "uri"

    .line 200
    .line 201
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    check-cast v8, Ljava/lang/String;

    .line 206
    .line 207
    const-string v9, "realm"

    .line 208
    .line 209
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    check-cast v9, Ljava/lang/String;

    .line 214
    .line 215
    const-string v10, "nonce"

    .line 216
    .line 217
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    check-cast v10, Ljava/lang/String;

    .line 222
    .line 223
    const-string v11, "opaque"

    .line 224
    .line 225
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    check-cast v11, Ljava/lang/String;

    .line 230
    .line 231
    const-string v12, "methodname"

    .line 232
    .line 233
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v12

    .line 237
    check-cast v12, Ljava/lang/String;

    .line 238
    .line 239
    const-string v13, "algorithm"

    .line 240
    .line 241
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    check-cast v13, Ljava/lang/String;

    .line 246
    .line 247
    if-nez v13, :cond_8

    .line 248
    .line 249
    const-string v13, "MD5"

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    goto/16 :goto_15

    .line 254
    .line 255
    :cond_8
    :goto_3
    new-instance v14, Ljava/util/HashSet;

    .line 256
    .line 257
    const/16 v15, 0x8

    .line 258
    .line 259
    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 260
    .line 261
    .line 262
    const-string v7, "qop"

    .line 263
    .line 264
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    check-cast v7, Ljava/lang/String;

    .line 269
    .line 270
    const/4 v5, -0x1

    .line 271
    if-eqz v7, :cond_c

    .line 272
    .line 273
    new-instance v6, Ljava/util/StringTokenizer;

    .line 274
    .line 275
    const-string v15, ","

    .line 276
    .line 277
    invoke-direct {v6, v7, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :goto_4
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 281
    .line 282
    .line 283
    move-result v15

    .line 284
    if-eqz v15, :cond_9

    .line 285
    .line 286
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v15

    .line 290
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v15

    .line 294
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 295
    .line 296
    invoke-virtual {v15, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v14, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    const/4 v4, 0x0

    .line 304
    goto :goto_4

    .line 305
    :cond_9
    iget-object v4, v0, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 306
    .line 307
    if-eqz v4, :cond_a

    .line 308
    .line 309
    const-string v4, "auth-int"

    .line 310
    .line 311
    invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-eqz v4, :cond_a

    .line 316
    .line 317
    const/4 v4, 0x1

    .line 318
    goto :goto_5

    .line 319
    :cond_a
    const-string v4, "auth"

    .line 320
    .line 321
    invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_b

    .line 326
    .line 327
    const/4 v4, 0x2

    .line 328
    goto :goto_5

    .line 329
    :cond_b
    move v4, v5

    .line 330
    goto :goto_5

    .line 331
    :cond_c
    const/4 v4, 0x0

    .line 332
    :goto_5
    if-eq v4, v5, :cond_20

    .line 333
    .line 334
    const-string v5, "charset"

    .line 335
    .line 336
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    check-cast v2, Ljava/lang/String;

    .line 341
    .line 342
    if-nez v2, :cond_d

    .line 343
    .line 344
    const-string v2, "ISO-8859-1"

    .line 345
    .line 346
    :cond_d
    const-string v5, "MD5-sess"

    .line 347
    .line 348
    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-eqz v5, :cond_e

    .line 353
    .line 354
    const-string v5, "MD5"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_e
    move-object v5, v13

    .line 358
    :goto_6
    :try_start_1
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 359
    .line 360
    .line 361
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :try_start_2
    iget-object v6, v3, Lot9;->a:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v6, Ljava/lang/String;

    .line 365
    .line 366
    iget-object v3, v3, Lot9;->b:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v3, Ljava/lang/String;

    .line 369
    .line 370
    iget-object v7, v1, Ljl2;->f:Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    move-object/from16 v18, v14

    .line 377
    .line 378
    if-eqz v7, :cond_f

    .line 379
    .line 380
    const-wide/16 v19, 0x1

    .line 381
    .line 382
    iget-wide v14, v1, Ljl2;->g:J

    .line 383
    .line 384
    add-long v14, v14, v19

    .line 385
    .line 386
    iput-wide v14, v1, Ljl2;->g:J

    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_f
    const-wide/16 v14, 0x1

    .line 390
    .line 391
    iput-wide v14, v1, Ljl2;->g:J

    .line 392
    .line 393
    const/4 v7, 0x0

    .line 394
    iput-object v7, v1, Ljl2;->h:Ljava/lang/String;

    .line 395
    .line 396
    iput-object v10, v1, Ljl2;->f:Ljava/lang/String;

    .line 397
    .line 398
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const/16 v14, 0x100

    .line 401
    .line 402
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 403
    .line 404
    .line 405
    new-instance v14, Ljava/util/Formatter;

    .line 406
    .line 407
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 408
    .line 409
    invoke-direct {v14, v7, v15}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 410
    .line 411
    .line 412
    const-string v15, "%08x"

    .line 413
    .line 414
    move-object/from16 v19, v11

    .line 415
    .line 416
    move-object/from16 v20, v12

    .line 417
    .line 418
    iget-wide v11, v1, Ljl2;->g:J

    .line 419
    .line 420
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 421
    .line 422
    .line 423
    move-result-object v11

    .line 424
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    invoke-virtual {v14, v15, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v14}, Ljava/util/Formatter;->close()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v11

    .line 438
    iget-object v12, v1, Ljl2;->h:Ljava/lang/String;

    .line 439
    .line 440
    if-nez v12, :cond_10

    .line 441
    .line 442
    const/16 v12, 0x8

    .line 443
    .line 444
    new-array v12, v12, [B

    .line 445
    .line 446
    iget-object v14, v1, Ljl2;->b:Ljava/security/SecureRandom;

    .line 447
    .line 448
    invoke-virtual {v14, v12}, Ljava/util/Random;->nextBytes([B)V

    .line 449
    .line 450
    .line 451
    invoke-static {v12}, Ljl2;->d([B)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v12

    .line 455
    iput-object v12, v1, Ljl2;->h:Ljava/lang/String;

    .line 456
    .line 457
    :cond_10
    const/4 v12, 0x0

    .line 458
    iput-object v12, v1, Ljl2;->i:Ljava/lang/String;

    .line 459
    .line 460
    iput-object v12, v1, Ljl2;->j:Ljava/lang/String;

    .line 461
    .line 462
    const-string v12, "MD5-sess"

    .line 463
    .line 464
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 465
    .line 466
    .line 467
    move-result v12

    .line 468
    if-eqz v12, :cond_11

    .line 469
    .line 470
    const/4 v12, 0x0

    .line 471
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const/16 v12, 0x3a

    .line 478
    .line 479
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 496
    .line 497
    .line 498
    move-result-object v3
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    goto :goto_8

    .line 500
    :catch_0
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    :goto_8
    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-static {v3}, Ljl2;->d([B)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    const/4 v12, 0x0

    .line 513
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const/16 v12, 0x3a

    .line 520
    .line 521
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    iget-object v3, v1, Ljl2;->h:Ljava/lang/String;

    .line 531
    .line 532
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    iput-object v3, v1, Ljl2;->i:Ljava/lang/String;

    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_11
    const/4 v12, 0x0

    .line 543
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    const/16 v12, 0x3a

    .line 550
    .line 551
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    iput-object v3, v1, Ljl2;->i:Ljava/lang/String;

    .line 568
    .line 569
    :goto_9
    iget-object v3, v1, Ljl2;->i:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 570
    .line 571
    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 572
    .line 573
    .line 574
    move-result-object v3
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 575
    goto :goto_a

    .line 576
    :catch_1
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    :goto_a
    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    invoke-static {v3}, Ljl2;->d([B)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    const/4 v12, 0x2

    .line 589
    if-ne v4, v12, :cond_12

    .line 590
    .line 591
    new-instance v12, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .line 595
    .line 596
    move-object/from16 v14, v20

    .line 597
    .line 598
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    const/16 v14, 0x3a

    .line 602
    .line 603
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v12

    .line 613
    iput-object v12, v1, Ljl2;->j:Ljava/lang/String;

    .line 614
    .line 615
    goto/16 :goto_b

    .line 616
    .line 617
    :cond_12
    move-object/from16 v14, v20

    .line 618
    .line 619
    const/4 v15, 0x1

    .line 620
    if-ne v4, v15, :cond_15

    .line 621
    .line 622
    iget-object v15, v0, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 623
    .line 624
    if-eqz v15, :cond_14

    .line 625
    .line 626
    const-string v4, "auth"

    .line 627
    .line 628
    move-object/from16 v15, v18

    .line 629
    .line 630
    invoke-virtual {v15, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    if-eqz v4, :cond_13

    .line 635
    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    const/16 v14, 0x3a

    .line 645
    .line 646
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    iput-object v4, v1, Ljl2;->j:Ljava/lang/String;

    .line 657
    .line 658
    move v4, v12

    .line 659
    goto :goto_b

    .line 660
    :cond_13
    new-instance v0, Lil2;

    .line 661
    .line 662
    const-string v2, "Qop auth-int cannot be used with a non-repeatable entity"

    .line 663
    .line 664
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    throw v0

    .line 668
    :cond_14
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 669
    .line 670
    .line 671
    :try_start_7
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    .line 672
    .line 673
    .line 674
    move-result-object v12
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 675
    :try_start_8
    new-instance v15, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    const/16 v14, 0x3a

    .line 684
    .line 685
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-static {v12}, Ljl2;->d([B)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v12

    .line 698
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v12

    .line 705
    iput-object v12, v1, Ljl2;->j:Ljava/lang/String;

    .line 706
    .line 707
    goto :goto_b

    .line 708
    :catch_2
    move-exception v0

    .line 709
    new-instance v2, Lil2;

    .line 710
    .line 711
    const-string v3, "I/O error reading entity content"

    .line 712
    .line 713
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    .line 715
    .line 716
    throw v2

    .line 717
    :cond_15
    new-instance v12, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    const/16 v14, 0x3a

    .line 726
    .line 727
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v12

    .line 737
    iput-object v12, v1, Ljl2;->j:Ljava/lang/String;

    .line 738
    .line 739
    :goto_b
    iget-object v12, v1, Ljl2;->j:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 740
    .line 741
    :try_start_9
    invoke-virtual {v12, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 742
    .line 743
    .line 744
    move-result-object v2
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 745
    goto :goto_c

    .line 746
    :catch_3
    :try_start_a
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    :goto_c
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-static {v2}, Ljl2;->d([B)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    if-nez v4, :cond_16

    .line 759
    .line 760
    const/4 v12, 0x0

    .line 761
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    const/16 v14, 0x3a

    .line 768
    .line 769
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    const/4 v12, 0x0

    .line 786
    goto :goto_e

    .line 787
    :cond_16
    const/4 v12, 0x0

    .line 788
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    const/16 v14, 0x3a

    .line 795
    .line 796
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    iget-object v3, v1, Ljl2;->h:Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    const/4 v15, 0x1

    .line 820
    if-ne v4, v15, :cond_17

    .line 821
    .line 822
    const-string v3, "auth-int"

    .line 823
    .line 824
    goto :goto_d

    .line 825
    :cond_17
    const-string v3, "auth"

    .line 826
    .line 827
    :goto_d
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    const/16 v14, 0x3a

    .line 831
    .line 832
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    :goto_e
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 843
    .line 844
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    invoke-static {v2}, Ljl2;->d([B)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v2

    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    .line 857
    .line 858
    const/16 v5, 0x80

    .line 859
    .line 860
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 861
    .line 862
    .line 863
    iget-boolean v5, v1, Ljl2;->k:Z

    .line 864
    .line 865
    if-eqz v5, :cond_18

    .line 866
    .line 867
    const-string v5, "Proxy-Authorization"

    .line 868
    .line 869
    goto :goto_f

    .line 870
    :cond_18
    const-string v5, "Authorization"

    .line 871
    .line 872
    :goto_f
    const-string v7, "Digest "

    .line 873
    .line 874
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    new-instance v7, Ljava/util/ArrayList;

    .line 878
    .line 879
    const/16 v14, 0x14

    .line 880
    .line 881
    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 882
    .line 883
    .line 884
    new-instance v14, Ldp0;

    .line 885
    .line 886
    const-string v15, "username"

    .line 887
    .line 888
    invoke-direct {v14, v15, v6}, Ldp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    new-instance v6, Ldp0;

    .line 895
    .line 896
    const-string v14, "realm"

    .line 897
    .line 898
    invoke-direct {v6, v14, v9}, Ldp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    new-instance v6, Ldp0;

    .line 905
    .line 906
    const-string v9, "nonce"

    .line 907
    .line 908
    invoke-direct {v6, v9, v10}, Ldp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    new-instance v6, Ldp0;

    .line 915
    .line 916
    const-string v9, "uri"

    .line 917
    .line 918
    invoke-direct {v6, v9, v8}, Ldp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    new-instance v6, Ldp0;

    .line 925
    .line 926
    const-string v8, "response"

    .line 927
    .line 928
    invoke-direct {v6, v8, v2}, Ldp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    .line 933
    .line 934
    if-eqz v4, :cond_1a

    .line 935
    .line 936
    new-instance v2, Ldp0;

    .line 937
    .line 938
    const-string v6, "qop"

    .line 939
    .line 940
    const/4 v15, 0x1

    .line 941
    if-ne v4, v15, :cond_19

    .line 942
    .line 943
    const-string v4, "auth-int"

    .line 944
    .line 945
    goto :goto_10

    .line 946
    :cond_19
    const-string v4, "auth"

    .line 947
    .line 948
    :goto_10
    invoke-direct {v2, v6, v4}, Ldp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    new-instance v2, Ldp0;

    .line 955
    .line 956
    const-string v4, "nc"

    .line 957
    .line 958
    invoke-direct {v2, v4, v11}, Ldp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    new-instance v2, Ldp0;

    .line 965
    .line 966
    const-string v4, "cnonce"

    .line 967
    .line 968
    iget-object v6, v1, Ljl2;->h:Ljava/lang/String;

    .line 969
    .line 970
    invoke-direct {v2, v4, v6}, Ldp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    :cond_1a
    new-instance v2, Ldp0;

    .line 977
    .line 978
    const-string v4, "algorithm"

    .line 979
    .line 980
    invoke-direct {v2, v4, v13}, Ldp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    if-eqz v19, :cond_1b

    .line 987
    .line 988
    new-instance v2, Ldp0;

    .line 989
    .line 990
    const-string v4, "opaque"

    .line 991
    .line 992
    move-object/from16 v11, v19

    .line 993
    .line 994
    invoke-direct {v2, v4, v11}, Ldp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    :cond_1b
    move v2, v12

    .line 1001
    :goto_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1002
    .line 1003
    .line 1004
    move-result v4

    .line 1005
    if-ge v2, v4, :cond_1f

    .line 1006
    .line 1007
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v4

    .line 1011
    check-cast v4, Ldp0;

    .line 1012
    .line 1013
    if-lez v2, :cond_1c

    .line 1014
    .line 1015
    const-string v6, ", "

    .line 1016
    .line 1017
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    :cond_1c
    iget-object v6, v4, Ldp0;->a:Ljava/lang/String;

    .line 1021
    .line 1022
    const-string v8, "nc"

    .line 1023
    .line 1024
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1025
    .line 1026
    .line 1027
    move-result v8

    .line 1028
    if-nez v8, :cond_1e

    .line 1029
    .line 1030
    const-string v8, "qop"

    .line 1031
    .line 1032
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1033
    .line 1034
    .line 1035
    move-result v8

    .line 1036
    if-nez v8, :cond_1e

    .line 1037
    .line 1038
    const-string v8, "algorithm"

    .line 1039
    .line 1040
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v6

    .line 1044
    if-eqz v6, :cond_1d

    .line 1045
    .line 1046
    goto :goto_13

    .line 1047
    :cond_1d
    move/from16 v16, v12

    .line 1048
    .line 1049
    :goto_12
    const/4 v15, 0x1

    .line 1050
    goto :goto_14

    .line 1051
    :cond_1e
    :goto_13
    const/16 v16, 0x1

    .line 1052
    .line 1053
    goto :goto_12

    .line 1054
    :goto_14
    xor-int/lit8 v6, v16, 0x1

    .line 1055
    .line 1056
    invoke-static {v3, v4, v6}, Lzv1;->f(Ljava/lang/StringBuilder;Ldp0;Z)V

    .line 1057
    .line 1058
    .line 1059
    add-int/lit8 v2, v2, 0x1

    .line 1060
    .line 1061
    goto :goto_11

    .line 1062
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1066
    monitor-exit p0

    .line 1067
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v0

    .line 1071
    iget-object v1, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 1072
    .line 1073
    invoke-static {v1, v5, v2, v0}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v0

    .line 1077
    return-object v0

    .line 1078
    :catch_4
    move-exception v0

    .line 1079
    :try_start_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1080
    .line 1081
    const-string v3, "Unsupported algorithm in HTTP Digest authentication: "

    .line 1082
    .line 1083
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v3

    .line 1087
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1088
    .line 1089
    .line 1090
    throw v2

    .line 1091
    :cond_20
    new-instance v0, Lil2;

    .line 1092
    .line 1093
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1096
    .line 1097
    .line 1098
    const-string v3, "None of the qop methods is supported: "

    .line 1099
    .line 1100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v2

    .line 1110
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    throw v0

    .line 1114
    :goto_15
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1115
    throw v0

    .line 1116
    :cond_21
    const-string v0, "missing nonce in challenge"

    .line 1117
    .line 1118
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    const/16 v17, 0x0

    .line 1122
    .line 1123
    return-object v17
.end method
