.class public final Lsn8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq18;


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/util/List;

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:Ljava/util/HashSet;

.field public static final g:Lsn8;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lsn8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lsn8;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v0, "traceparent"

    .line 14
    .line 15
    const-string v1, "tracestate"

    .line 16
    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lsn8;->b:Ljava/util/List;

    .line 30
    .line 31
    const/16 v0, 0x24

    .line 32
    .line 33
    sput v0, Lsn8;->c:I

    .line 34
    .line 35
    const/16 v0, 0x35

    .line 36
    .line 37
    sput v0, Lsn8;->d:I

    .line 38
    .line 39
    const/16 v0, 0x37

    .line 40
    .line 41
    sput v0, Lsn8;->e:I

    .line 42
    .line 43
    new-instance v0, Lsn8;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lsn8;->g:Lsn8;

    .line 49
    .line 50
    new-instance v0, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lsn8;->f:Ljava/util/HashSet;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_0
    const/16 v1, 0xff

    .line 59
    .line 60
    if-ge v0, v1, :cond_1

    .line 61
    .line 62
    int-to-long v1, v0

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v3, 0x2

    .line 72
    if-ge v2, v3, :cond_0

    .line 73
    .line 74
    const-string v2, "0"

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :cond_0
    sget-object v2, Lsn8;->f:Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lt40;Ljava/util/HashMap;Lr18;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lqj7;->c(Lt40;)Lqj7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lqj7;->getSpanContext()Lrj7;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lrj7;->isValid()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lxz7;->a:Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [C

    .line 23
    .line 24
    sget v1, Lsn8;->e:I

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    array-length v2, v0

    .line 29
    if-ge v2, v1, :cond_2

    .line 30
    .line 31
    :cond_1
    new-array v0, v1, [C

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    const-string p1, "00"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    aput-char v3, v0, v2

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    aput-char p1, v0, v3

    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    const/16 v4, 0x2d

    .line 54
    .line 55
    aput-char v4, v0, p1

    .line 56
    .line 57
    invoke-interface {p0}, Lrj7;->getTraceId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/4 v6, 0x3

    .line 66
    invoke-virtual {p1, v2, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 67
    .line 68
    .line 69
    sget p1, Lsn8;->c:I

    .line 70
    .line 71
    add-int/lit8 v5, p1, -0x1

    .line 72
    .line 73
    aput-char v4, v0, v5

    .line 74
    .line 75
    invoke-interface {p0}, Lrj7;->getSpanId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {v5, v2, v6, v0, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 84
    .line 85
    .line 86
    sget p1, Lsn8;->d:I

    .line 87
    .line 88
    add-int/lit8 v5, p1, -0x1

    .line 89
    .line 90
    aput-char v4, v0, v5

    .line 91
    .line 92
    invoke-interface {p0}, Lrj7;->getTraceFlags()Lz88;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-interface {v4}, Lz88;->asHex()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    aput-char v5, v0, p1

    .line 105
    .line 106
    add-int/2addr p1, v3

    .line 107
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    aput-char v3, v0, p1

    .line 112
    .line 113
    new-instance p1, Ljava/lang/String;

    .line 114
    .line 115
    invoke-direct {p1, v0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    .line 116
    .line 117
    .line 118
    const-string v0, "traceparent"

    .line 119
    .line 120
    invoke-interface {p3, p2, v0, p1}, Lr18;->set(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p0}, Lrj7;->getTraceState()La98;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-interface {p0}, La98;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    :goto_0
    return-void

    .line 134
    :cond_3
    sget-object p1, Lrn8;->a:Ljava/util/regex/Pattern;

    .line 135
    .line 136
    invoke-interface {p0}, La98;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    const-string p0, ""

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const/16 v0, 0x200

    .line 148
    .line 149
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lqn8;

    .line 153
    .line 154
    invoke-direct {v0, p1}, Lqn8;-><init>(Ljava/lang/StringBuilder;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p0, v0}, La98;->forEach(Lqn8;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    :goto_1
    const-string p1, "tracestate"

    .line 165
    .line 166
    invoke-interface {p3, p2, p1, p0}, Lr18;->set(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final b()Ljava/util/Collection;
    .locals 0

    .line 1
    sget-object p0, Lsn8;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lt40;Ljava/lang/Object;Lp18;)Lt40;
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lxs4;->b:Lev1;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lt40;->b:Lt40;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const-string p0, "traceparent"

    .line 12
    .line 13
    invoke-interface {p3, p2, p0}, Lp18;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    sget-object p0, Lsd0;->k:Lsd0;

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    sget-object v2, Lsn8;->a:Ljava/util/logging/Logger;

    .line 29
    .line 30
    const/16 v3, 0x2d

    .line 31
    .line 32
    sget v4, Lsn8;->e:I

    .line 33
    .line 34
    if-eq v0, v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-le v0, v4, :cond_9

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ne v0, v3, :cond_9

    .line 47
    .line 48
    :cond_2
    const/4 v0, 0x2

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-ne v5, v3, :cond_9

    .line 54
    .line 55
    sget v5, Lsn8;->c:I

    .line 56
    .line 57
    add-int/lit8 v6, v5, -0x1

    .line 58
    .line 59
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-ne v6, v3, :cond_9

    .line 64
    .line 65
    sget v6, Lsn8;->d:I

    .line 66
    .line 67
    add-int/lit8 v7, v6, -0x1

    .line 68
    .line 69
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-ne v7, v3, :cond_9

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget-object v3, Lsn8;->f:Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    sget-object p0, Lsd0;->k:Lsd0;

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_3
    const-string v3, "00"

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-le v0, v4, :cond_4

    .line 105
    .line 106
    sget-object p0, Lsd0;->k:Lsd0;

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_4
    const/4 v0, 0x3

    .line 111
    const/16 v3, 0x23

    .line 112
    .line 113
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    add-int/lit8 v3, v5, 0x10

    .line 118
    .line 119
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    add-int/2addr v6, v1

    .line 128
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    sget-object v5, Luu5;->c:[Z

    .line 133
    .line 134
    aget-boolean v6, v5, v4

    .line 135
    .line 136
    if-eqz v6, :cond_8

    .line 137
    .line 138
    aget-boolean v5, v5, p0

    .line 139
    .line 140
    if-nez v5, :cond_5

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_5
    const-string v5, "invalid character "

    .line 144
    .line 145
    const/16 v6, 0x80

    .line 146
    .line 147
    if-ge v4, v6, :cond_7

    .line 148
    .line 149
    sget-object v7, Luu5;->b:[B

    .line 150
    .line 151
    aget-byte v8, v7, v4

    .line 152
    .line 153
    const/4 v9, -0x1

    .line 154
    if-eq v8, v9, :cond_7

    .line 155
    .line 156
    if-ge p0, v6, :cond_6

    .line 157
    .line 158
    aget-byte v4, v7, p0

    .line 159
    .line 160
    if-eq v4, v9, :cond_6

    .line 161
    .line 162
    shl-int/lit8 p0, v8, 0x4

    .line 163
    .line 164
    or-int/2addr p0, v4

    .line 165
    int-to-byte p0, p0

    .line 166
    sget-object v4, Lsa4;->c:[Lsa4;

    .line 167
    .line 168
    and-int/lit16 p0, p0, 0xff

    .line 169
    .line 170
    aget-object p0, v4, p0

    .line 171
    .line 172
    sget-object v4, Lu40;->c:Lrb0;

    .line 173
    .line 174
    invoke-static {v0, v3, p0, v4, v1}, Lsd0;->a(Ljava/lang/String;Ljava/lang/String;Lz88;La98;Z)Lsd0;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    goto :goto_1

    .line 179
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p1

    .line 197
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 198
    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p0

    .line 215
    :cond_8
    :goto_0
    sget-object p0, Lsd0;->k:Lsd0;

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_9
    const-string p0, "Unparseable traceparent header. Returning INVALID span context."

    .line 219
    .line 220
    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    sget-object p0, Lsd0;->k:Lsd0;

    .line 224
    .line 225
    :goto_1
    iget-boolean v0, p0, Lsd0;->f:Z

    .line 226
    .line 227
    if-nez v0, :cond_a

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_a
    const-string v0, "tracestate"

    .line 231
    .line 232
    invoke-interface {p3, p2, v0}, Lp18;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    if-eqz p2, :cond_c

    .line 237
    .line 238
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    if-eqz p3, :cond_b

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_b
    :try_start_0
    invoke-static {p2}, Lrn8;->a(Ljava/lang/String;)Lrb0;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    iget-object p3, p0, Lsd0;->a:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v0, p0, Lsd0;->b:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v3, p0, Lsd0;->c:Lz88;

    .line 254
    .line 255
    invoke-static {p3, v0, v3, p2, v1}, Lsd0;->a(Ljava/lang/String;Ljava/lang/String;Lz88;La98;Z)Lsd0;

    .line 256
    .line 257
    .line 258
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_2

    .line 260
    :catch_0
    const-string p2, "Unparseable tracestate header. Returning span context without state."

    .line 261
    .line 262
    invoke-virtual {v2, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_c
    :goto_2
    iget-boolean p2, p0, Lsd0;->f:Z

    .line 266
    .line 267
    if-nez p2, :cond_d

    .line 268
    .line 269
    return-object p1

    .line 270
    :cond_d
    invoke-static {p0}, Lqj7;->b(Lrj7;)Lr86;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-interface {p0, p1}, Lva4;->a(Lt40;)Lt40;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    return-object p0
.end method
