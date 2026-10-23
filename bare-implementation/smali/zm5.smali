.class public abstract Lzm5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ldu9;

.field public static final b:[I

.field public static final c:[I

.field public static final d:[C

.field public static e:Ljava/lang/String;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ldu9;

    .line 2
    .line 3
    const-string v1, "CLOSED"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lzm5;->a:Ldu9;

    .line 10
    .line 11
    const/high16 v0, 0x1010000

    .line 12
    .line 13
    const v1, 0x7f0405fc

    .line 14
    .line 15
    .line 16
    filled-new-array {v0, v1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lzm5;->b:[I

    .line 21
    .line 22
    const v0, 0x7f040419

    .line 23
    .line 24
    .line 25
    filled-new-array {v0}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lzm5;->c:[I

    .line 30
    .line 31
    const/16 v0, 0x10

    .line 32
    .line 33
    new-array v0, v0, [C

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    sput-object v0, Lzm5;->d:[C

    .line 39
    .line 40
    return-void

    .line 41
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

.method public static A(CIILjava/lang/CharSequence;)I
    .locals 1

    .line 1
    :goto_0
    if-ge p1, p2, :cond_1

    .line 2
    .line 3
    invoke-interface {p3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    return p2
.end method

.method public static B(Ljava/lang/CharSequence;II)I
    .locals 2

    .line 1
    :goto_0
    if-ge p1, p2, :cond_1

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x20

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return p2
.end method

.method public static C(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lzm5;->q()Lpw5;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, v0, Lpw5;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lxk3;

    .line 11
    .line 12
    iget-object v0, v0, Lpw5;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lvk3;

    .line 15
    .line 16
    sget-object v2, Lyk3;->a:[I

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    aget v1, v2, v1

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v1, v3, :cond_2

    .line 27
    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    new-instance v1, Lzk2;

    .line 34
    .line 35
    invoke-direct {v1, v3}, Lzk2;-><init>(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :cond_1
    new-instance v1, Lgj1;

    .line 45
    .line 46
    invoke-direct {v1, v3}, Lgj1;-><init>(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v1, Lqs0;

    .line 56
    .line 57
    invoke-direct {v1, v2}, Lqs0;-><init>(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sget-object v2, Lvk3;->Desc:Lvk3;

    .line 61
    .line 62
    if-ne v0, v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcl7;

    .line 72
    .line 73
    const/4 v4, 0x5

    .line 74
    invoke-direct {v3, v4}, Lcl7;-><init>(I)V

    .line 75
    .line 76
    .line 77
    if-ne v0, v2, :cond_4

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v0, Lym1;

    .line 87
    .line 88
    invoke-direct {v0, v3, v1}, Lym1;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method public static D(Landroid/app/Activity;Ljava/util/ArrayList;Z)V
    .locals 3

    .line 1
    sget-object v0, Lg00;->a:Lg00;

    .line 2
    .line 3
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.hardware.telephony"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 16
    .line 17
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "Feature not supported on this device"

    .line 22
    .line 23
    sget-object p2, Lzn4;->a:Lzn4;

    .line 24
    .line 25
    invoke-static {p0, p1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Lr01;

    .line 30
    .line 31
    invoke-direct {v0, p1, p2}, Lr01;-><init>(Ljava/util/ArrayList;Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lny2;->b()Lny2;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p1, Lny2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    monitor-enter p2

    .line 41
    :try_start_0
    iget-object v1, p1, Lny2;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    const-class v2, Lr01;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p1, v0}, Lny2;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-class p1, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;

    .line 53
    .line 54
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x5c

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const-string v0, "\\"

    .line 11
    .line 12
    const-string v2, "\\\\"

    .line 13
    .line 14
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, p0

    .line 20
    :goto_0
    const/16 v2, 0x22

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const-string v3, "\""

    .line 27
    .line 28
    if-eq p0, v1, :cond_1

    .line 29
    .line 30
    const-string p0, "\\\""

    .line 31
    .line 32
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    invoke-static {v2, v3, v0}, Lu48;->j(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static F(II[I[I[I[I)V
    .locals 20

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const-wide v6, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    move-wide v10, v8

    .line 22
    :goto_0
    if-gt v5, v0, :cond_3

    .line 23
    .line 24
    aget v1, v2, v5

    .line 25
    .line 26
    aget v3, p2, v5

    .line 27
    .line 28
    int-to-long v12, v3

    .line 29
    and-long/2addr v12, v6

    .line 30
    add-long/2addr v8, v12

    .line 31
    int-to-long v12, v1

    .line 32
    and-long/2addr v12, v6

    .line 33
    sub-long/2addr v8, v12

    .line 34
    add-long/2addr v10, v12

    .line 35
    aget v1, p3, v5

    .line 36
    .line 37
    int-to-long v12, v1

    .line 38
    and-long/2addr v12, v6

    .line 39
    sub-long/2addr v10, v12

    .line 40
    long-to-int v1, v10

    .line 41
    shr-long/2addr v10, v4

    .line 42
    aput v1, v2, v5

    .line 43
    .line 44
    int-to-long v12, v1

    .line 45
    and-long/2addr v12, v6

    .line 46
    sub-long/2addr v8, v12

    .line 47
    long-to-int v1, v8

    .line 48
    aput v1, p2, v5

    .line 49
    .line 50
    shr-long/2addr v8, v4

    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    if-ge v1, v4, :cond_1

    .line 55
    .line 56
    move v3, v5

    .line 57
    move-wide v10, v8

    .line 58
    move-wide v12, v10

    .line 59
    move v8, v3

    .line 60
    move v9, v8

    .line 61
    :goto_1
    if-gt v5, v0, :cond_3

    .line 62
    .line 63
    aget v14, v2, v5

    .line 64
    .line 65
    shl-int v15, v14, v1

    .line 66
    .line 67
    move/from16 v16, v4

    .line 68
    .line 69
    neg-int v4, v1

    .line 70
    ushr-int/2addr v3, v4

    .line 71
    or-int/2addr v3, v15

    .line 72
    aget v15, p2, v5

    .line 73
    .line 74
    move-wide/from16 v17, v6

    .line 75
    .line 76
    int-to-long v6, v15

    .line 77
    and-long v6, v6, v17

    .line 78
    .line 79
    add-long/2addr v10, v6

    .line 80
    int-to-long v6, v3

    .line 81
    and-long v6, v6, v17

    .line 82
    .line 83
    sub-long/2addr v10, v6

    .line 84
    aget v3, p3, v5

    .line 85
    .line 86
    shl-int v6, v3, v1

    .line 87
    .line 88
    ushr-int v7, v8, v4

    .line 89
    .line 90
    or-int/2addr v6, v7

    .line 91
    int-to-long v7, v14

    .line 92
    and-long v7, v7, v17

    .line 93
    .line 94
    add-long/2addr v12, v7

    .line 95
    int-to-long v6, v6

    .line 96
    and-long v6, v6, v17

    .line 97
    .line 98
    sub-long/2addr v12, v6

    .line 99
    long-to-int v6, v12

    .line 100
    shr-long v12, v12, v16

    .line 101
    .line 102
    aput v6, v2, v5

    .line 103
    .line 104
    shl-int v7, v6, v1

    .line 105
    .line 106
    ushr-int v4, v9, v4

    .line 107
    .line 108
    or-int/2addr v4, v7

    .line 109
    int-to-long v7, v4

    .line 110
    and-long v7, v7, v17

    .line 111
    .line 112
    sub-long/2addr v10, v7

    .line 113
    long-to-int v4, v10

    .line 114
    aput v4, p2, v5

    .line 115
    .line 116
    shr-long v10, v10, v16

    .line 117
    .line 118
    add-int/lit8 v5, v5, 0x1

    .line 119
    .line 120
    move v8, v3

    .line 121
    move v9, v6

    .line 122
    move v3, v14

    .line 123
    move/from16 v4, v16

    .line 124
    .line 125
    move-wide/from16 v6, v17

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    move/from16 v16, v4

    .line 129
    .line 130
    move-wide/from16 v17, v6

    .line 131
    .line 132
    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    .line 134
    .line 135
    ushr-int/lit8 v4, v1, 0x5

    .line 136
    .line 137
    and-int/lit8 v1, v1, 0x1f

    .line 138
    .line 139
    if-nez v1, :cond_2

    .line 140
    .line 141
    move v1, v4

    .line 142
    move-wide v5, v8

    .line 143
    :goto_2
    if-gt v1, v0, :cond_3

    .line 144
    .line 145
    aget v7, p2, v1

    .line 146
    .line 147
    int-to-long v10, v7

    .line 148
    and-long v10, v10, v17

    .line 149
    .line 150
    add-long/2addr v8, v10

    .line 151
    sub-int v7, v1, v4

    .line 152
    .line 153
    aget v10, v3, v7

    .line 154
    .line 155
    int-to-long v10, v10

    .line 156
    and-long v10, v10, v17

    .line 157
    .line 158
    sub-long/2addr v8, v10

    .line 159
    aget v10, v2, v1

    .line 160
    .line 161
    int-to-long v10, v10

    .line 162
    and-long v10, v10, v17

    .line 163
    .line 164
    add-long/2addr v5, v10

    .line 165
    aget v10, p3, v7

    .line 166
    .line 167
    int-to-long v10, v10

    .line 168
    and-long v10, v10, v17

    .line 169
    .line 170
    sub-long/2addr v5, v10

    .line 171
    long-to-int v10, v5

    .line 172
    aput v10, v2, v1

    .line 173
    .line 174
    shr-long v5, v5, v16

    .line 175
    .line 176
    aget v7, v2, v7

    .line 177
    .line 178
    int-to-long v10, v7

    .line 179
    and-long v10, v10, v17

    .line 180
    .line 181
    sub-long/2addr v8, v10

    .line 182
    long-to-int v7, v8

    .line 183
    aput v7, p2, v1

    .line 184
    .line 185
    shr-long v8, v8, v16

    .line 186
    .line 187
    add-int/lit8 v1, v1, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_2
    move v12, v4

    .line 191
    move v6, v5

    .line 192
    move v7, v6

    .line 193
    move-wide v10, v8

    .line 194
    :goto_3
    if-gt v12, v0, :cond_3

    .line 195
    .line 196
    sub-int v13, v12, v4

    .line 197
    .line 198
    aget v14, v3, v13

    .line 199
    .line 200
    shl-int v15, v14, v1

    .line 201
    .line 202
    neg-int v0, v1

    .line 203
    ushr-int/2addr v5, v0

    .line 204
    or-int/2addr v5, v15

    .line 205
    aget v15, p2, v12

    .line 206
    .line 207
    move/from16 v19, v0

    .line 208
    .line 209
    move/from16 p1, v1

    .line 210
    .line 211
    int-to-long v0, v15

    .line 212
    and-long v0, v0, v17

    .line 213
    .line 214
    add-long/2addr v8, v0

    .line 215
    int-to-long v0, v5

    .line 216
    and-long v0, v0, v17

    .line 217
    .line 218
    sub-long/2addr v8, v0

    .line 219
    aget v5, p3, v13

    .line 220
    .line 221
    shl-int v0, v5, p1

    .line 222
    .line 223
    ushr-int v1, v6, v19

    .line 224
    .line 225
    or-int/2addr v0, v1

    .line 226
    aget v1, v2, v12

    .line 227
    .line 228
    int-to-long v1, v1

    .line 229
    and-long v1, v1, v17

    .line 230
    .line 231
    add-long/2addr v10, v1

    .line 232
    int-to-long v0, v0

    .line 233
    and-long v0, v0, v17

    .line 234
    .line 235
    sub-long/2addr v10, v0

    .line 236
    long-to-int v0, v10

    .line 237
    aput v0, p4, v12

    .line 238
    .line 239
    shr-long v10, v10, v16

    .line 240
    .line 241
    aget v0, p4, v13

    .line 242
    .line 243
    shl-int v1, v0, p1

    .line 244
    .line 245
    ushr-int v2, v7, v19

    .line 246
    .line 247
    or-int/2addr v1, v2

    .line 248
    int-to-long v1, v1

    .line 249
    and-long v1, v1, v17

    .line 250
    .line 251
    sub-long/2addr v8, v1

    .line 252
    long-to-int v1, v8

    .line 253
    aput v1, p2, v12

    .line 254
    .line 255
    shr-long v8, v8, v16

    .line 256
    .line 257
    add-int/lit8 v12, v12, 0x1

    .line 258
    .line 259
    move/from16 v1, p1

    .line 260
    .line 261
    move-object/from16 v2, p4

    .line 262
    .line 263
    move v7, v0

    .line 264
    move v6, v5

    .line 265
    move v5, v14

    .line 266
    move/from16 v0, p0

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_3
    return-void
.end method

.method public static G(II[I[I[I[I)V
    .locals 17

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    ushr-int/lit8 v1, p1, 0x5

    .line 4
    .line 5
    and-int/lit8 v2, p1, 0x1f

    .line 6
    .line 7
    const/16 v3, 0x20

    .line 8
    .line 9
    const-wide v4, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    move v2, v1

    .line 19
    move-wide v8, v6

    .line 20
    :goto_0
    if-gt v2, v0, :cond_1

    .line 21
    .line 22
    aget v10, p2, v2

    .line 23
    .line 24
    int-to-long v10, v10

    .line 25
    and-long/2addr v10, v4

    .line 26
    add-long/2addr v6, v10

    .line 27
    aget v10, p3, v2

    .line 28
    .line 29
    int-to-long v10, v10

    .line 30
    and-long/2addr v10, v4

    .line 31
    add-long/2addr v8, v10

    .line 32
    sub-int v10, v2, v1

    .line 33
    .line 34
    aget v11, p4, v10

    .line 35
    .line 36
    int-to-long v11, v11

    .line 37
    and-long/2addr v11, v4

    .line 38
    sub-long/2addr v6, v11

    .line 39
    aget v10, p5, v10

    .line 40
    .line 41
    int-to-long v10, v10

    .line 42
    and-long/2addr v10, v4

    .line 43
    sub-long/2addr v8, v10

    .line 44
    long-to-int v10, v6

    .line 45
    aput v10, p2, v2

    .line 46
    .line 47
    shr-long/2addr v6, v3

    .line 48
    long-to-int v10, v8

    .line 49
    aput v10, p3, v2

    .line 50
    .line 51
    shr-long/2addr v8, v3

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v8, 0x0

    .line 56
    move v12, v1

    .line 57
    move v10, v8

    .line 58
    move v11, v10

    .line 59
    move-wide v8, v6

    .line 60
    :goto_1
    if-gt v12, v0, :cond_1

    .line 61
    .line 62
    sub-int v13, v12, v1

    .line 63
    .line 64
    aget v14, p4, v13

    .line 65
    .line 66
    aget v13, p5, v13

    .line 67
    .line 68
    shl-int v15, v14, v2

    .line 69
    .line 70
    move/from16 p1, v3

    .line 71
    .line 72
    neg-int v3, v2

    .line 73
    ushr-int/2addr v10, v3

    .line 74
    or-int/2addr v10, v15

    .line 75
    shl-int v15, v13, v2

    .line 76
    .line 77
    ushr-int v3, v11, v3

    .line 78
    .line 79
    or-int/2addr v3, v15

    .line 80
    aget v11, p2, v12

    .line 81
    .line 82
    move-wide v15, v4

    .line 83
    int-to-long v4, v11

    .line 84
    and-long/2addr v4, v15

    .line 85
    add-long/2addr v6, v4

    .line 86
    aget v4, p3, v12

    .line 87
    .line 88
    int-to-long v4, v4

    .line 89
    and-long/2addr v4, v15

    .line 90
    add-long/2addr v8, v4

    .line 91
    int-to-long v4, v10

    .line 92
    and-long/2addr v4, v15

    .line 93
    sub-long/2addr v6, v4

    .line 94
    int-to-long v3, v3

    .line 95
    and-long/2addr v3, v15

    .line 96
    sub-long/2addr v8, v3

    .line 97
    long-to-int v3, v6

    .line 98
    aput v3, p2, v12

    .line 99
    .line 100
    shr-long v6, v6, p1

    .line 101
    .line 102
    long-to-int v3, v8

    .line 103
    aput v3, p3, v12

    .line 104
    .line 105
    shr-long v8, v8, p1

    .line 106
    .line 107
    add-int/lit8 v12, v12, 0x1

    .line 108
    .line 109
    move/from16 v3, p1

    .line 110
    .line 111
    move v11, v13

    .line 112
    move v10, v14

    .line 113
    move-wide v4, v15

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    return-void
.end method

.method public static H(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-gt v0, v1, :cond_9

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v3, 0x2d

    .line 23
    .line 24
    if-ne v1, v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v1, v0

    .line 37
    :goto_0
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ge v0, v5, :cond_5

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/16 v6, 0x30

    .line 50
    .line 51
    if-lt v5, v6, :cond_4

    .line 52
    .line 53
    const/16 v6, 0x39

    .line 54
    .line 55
    if-le v5, v6, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const-wide/16 v6, 0xa

    .line 59
    .line 60
    mul-long/2addr v3, v6

    .line 61
    add-int/lit8 v5, v5, -0x30

    .line 62
    .line 63
    int-to-long v5, v5

    .line 64
    add-long/2addr v3, v5

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    :goto_2
    return-object v2

    .line 69
    :cond_5
    if-eqz v1, :cond_7

    .line 70
    .line 71
    neg-long v0, v3

    .line 72
    const-wide/32 v3, -0x80000000

    .line 73
    .line 74
    .line 75
    cmp-long p0, v0, v3

    .line 76
    .line 77
    if-gez p0, :cond_6

    .line 78
    .line 79
    return-object v2

    .line 80
    :cond_6
    long-to-int p0, v0

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_7
    const-wide/32 v0, 0x7fffffff

    .line 87
    .line 88
    .line 89
    cmp-long p0, v3, v0

    .line 90
    .line 91
    if-lez p0, :cond_8

    .line 92
    .line 93
    return-object v2

    .line 94
    :cond_8
    long-to-int p0, v3

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_9
    :goto_3
    return-object v2
.end method

.method public static I(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/Context;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    sget-object v2, Lzm5;->c:[I

    .line 5
    .line 6
    invoke-virtual {p2, p3, v2, p0, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    aput v4, v1, v3

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    .line 19
    .line 20
    aget v1, v1, v3

    .line 21
    .line 22
    instance-of v2, p2, Lhv1;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    move-object v2, p2

    .line 27
    check-cast v2, Lhv1;

    .line 28
    .line 29
    iget v2, v2, Lhv1;->a:I

    .line 30
    .line 31
    if-ne v2, v1, :cond_0

    .line 32
    .line 33
    move v2, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v2, v3

    .line 36
    :goto_0
    if-eqz v1, :cond_8

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_1
    new-instance v2, Lhv1;

    .line 42
    .line 43
    invoke-direct {v2, p2, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 44
    .line 45
    .line 46
    array-length v1, p4

    .line 47
    new-array v4, v1, [I

    .line 48
    .line 49
    array-length v5, p4

    .line 50
    if-lez v5, :cond_3

    .line 51
    .line 52
    invoke-virtual {p2, p3, p4, p0, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    move p1, v3

    .line 57
    :goto_1
    array-length v5, p4

    .line 58
    if-ge p1, v5, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    aput v5, v4, p1

    .line 65
    .line 66
    add-int/lit8 p1, p1, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    .line 71
    .line 72
    :cond_3
    move p0, v3

    .line 73
    :goto_2
    if-ge p0, v1, :cond_5

    .line 74
    .line 75
    aget p1, v4, p0

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    invoke-virtual {v2}, Lhv1;->getTheme()Landroid/content/res/Resources$Theme;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    invoke-virtual {p4, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 84
    .line 85
    .line 86
    :cond_4
    add-int/lit8 p0, p0, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    sget-object p0, Lzm5;->b:[I

    .line 90
    .line 91
    invoke-virtual {p2, p3, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    .line 105
    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    move p1, p2

    .line 110
    :goto_3
    if-eqz p1, :cond_7

    .line 111
    .line 112
    invoke-virtual {v2}, Lhv1;->getTheme()Landroid/content/res/Resources$Theme;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 117
    .line 118
    .line 119
    :cond_7
    return-object v2

    .line 120
    :cond_8
    :goto_4
    return-object p2
.end method

.method public static J(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-static {p2, p3, p0, p1, v0}, Lzm5;->I(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static K(Ljava/security/spec/EllipticCurve;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lyr9;->a(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/lit8 p0, p0, 0x7

    .line 16
    .line 17
    div-int/lit8 p0, p0, 0x8

    .line 18
    .line 19
    return p0
.end method

.method public static L(Ljava/math/BigInteger;ZLjava/security/spec/EllipticCurve;)Ljava/math/BigInteger;
    .locals 11

    .line 1
    invoke-static {p2}, Lyr9;->a(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/4 v1, 0x1

    .line 38
    if-ne p2, v1, :cond_d

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object p2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x0

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_0
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v4, 0x2

    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 70
    .line 71
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p0, p2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_1
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_9

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_9

    .line 96
    .line 97
    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 98
    .line 99
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    move v6, v3

    .line 108
    :cond_2
    :goto_0
    invoke-virtual {p2, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v7, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 121
    .line 122
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_3

    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_3
    invoke-virtual {v7, v5, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    sget-object v9, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 135
    .line 136
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-nez v10, :cond_6

    .line 145
    .line 146
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    const-string v8, "p is not prime"

    .line 151
    .line 152
    if-eqz v7, :cond_5

    .line 153
    .line 154
    invoke-virtual {p2, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    add-int/2addr v6, v1

    .line 159
    const/16 v7, 0x80

    .line 160
    .line 161
    if-ne v6, v7, :cond_2

    .line 162
    .line 163
    const/16 v7, 0x50

    .line 164
    .line 165
    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_4

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 173
    .line 174
    invoke-direct {p0, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_5
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 179
    .line 180
    invoke-direct {p0, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :cond_6
    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    sub-int/2addr v5, v4

    .line 197
    move-object v4, p2

    .line 198
    :goto_1
    if-ltz v5, :cond_8

    .line 199
    .line 200
    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v9, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v6, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    if-eqz v8, :cond_7

    .line 241
    .line 242
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    invoke-virtual {p2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    move-object v9, v4

    .line 271
    move-object v4, v8

    .line 272
    goto :goto_2

    .line 273
    :cond_7
    move-object v9, v6

    .line 274
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_8
    move-object p2, v4

    .line 278
    goto :goto_3

    .line 279
    :cond_9
    move-object p2, v2

    .line 280
    :goto_3
    if-eqz p2, :cond_b

    .line 281
    .line 282
    invoke-virtual {p2, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 291
    .line 292
    .line 293
    move-result p0

    .line 294
    if-nez p0, :cond_a

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_a
    const-string p0, "Could not find a modular square root"

    .line 298
    .line 299
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-object v2

    .line 303
    :cond_b
    :goto_4
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    if-eq p1, p0, :cond_c

    .line 308
    .line 309
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    return-object p0

    .line 318
    :cond_c
    return-object p2

    .line 319
    :cond_d
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 320
    .line 321
    const-string p1, "p must be positive"

    .line 322
    .line 323
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p0
.end method

.method public static M(Lp1a;)Ljava/security/spec/ECParameterSpec;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object p0, Lyr9;->c:Ljava/security/spec/ECParameterSpec;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "curve not implemented:"

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    sget-object p0, Lyr9;->b:Ljava/security/spec/ECParameterSpec;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lyr9;->a:Ljava/security/spec/ECParameterSpec;

    .line 36
    .line 37
    return-object p0
.end method

.method public static N(Ljava/security/spec/EllipticCurve;Lr1a;[B)Ljava/security/spec/ECPoint;
    .locals 7

    .line 1
    invoke-static {p0}, Lzm5;->K(Ljava/security/spec/EllipticCurve;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "invalid point size"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v1, :cond_7

    .line 15
    .line 16
    const/4 v6, 0x2

    .line 17
    if-eq v1, v5, :cond_2

    .line 18
    .line 19
    if-ne v1, v6, :cond_1

    .line 20
    .line 21
    array-length p1, p2

    .line 22
    mul-int/lit8 v1, v0, 0x2

    .line 23
    .line 24
    if-ne p1, v1, :cond_0

    .line 25
    .line 26
    new-instance p1, Ljava/math/BigInteger;

    .line 27
    .line 28
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {p1, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/math/BigInteger;

    .line 36
    .line 37
    array-length v2, p2

    .line 38
    invoke-static {p2, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {v1, v5, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Ljava/security/spec/ECPoint;

    .line 46
    .line 47
    invoke-direct {p2, p1, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2, p0}, Lyr9;->g(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 51
    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_0
    invoke-static {v3}, Lm0;->h(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string p2, "invalid format:"

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_2
    invoke-static {p0}, Lyr9;->a(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    array-length v1, p2

    .line 79
    add-int/2addr v0, v5

    .line 80
    if-ne v1, v0, :cond_6

    .line 81
    .line 82
    aget-byte v0, p2, v4

    .line 83
    .line 84
    if-ne v0, v6, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/4 v1, 0x3

    .line 88
    if-ne v0, v1, :cond_5

    .line 89
    .line 90
    move v4, v5

    .line 91
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    .line 92
    .line 93
    array-length v1, p2

    .line 94
    invoke-static {p2, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {v0, v5, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    const/4 v1, -0x1

    .line 106
    if-eq p2, v1, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-gez p1, :cond_4

    .line 113
    .line 114
    invoke-static {v0, v4, p0}, Lzm5;->L(Ljava/math/BigInteger;ZLjava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    new-instance p1, Ljava/security/spec/ECPoint;

    .line 119
    .line 120
    invoke-direct {p1, v0, p0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 121
    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_4
    const-string p0, "x is out of range"

    .line 125
    .line 126
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-object v2

    .line 130
    :cond_5
    const-string p0, "invalid format"

    .line 131
    .line 132
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v2

    .line 136
    :cond_6
    const-string p0, "compressed point has wrong length"

    .line 137
    .line 138
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object v2

    .line 142
    :cond_7
    array-length p1, p2

    .line 143
    mul-int/lit8 v1, v0, 0x2

    .line 144
    .line 145
    add-int/2addr v1, v5

    .line 146
    if-ne p1, v1, :cond_9

    .line 147
    .line 148
    aget-byte p1, p2, v4

    .line 149
    .line 150
    const/4 v1, 0x4

    .line 151
    if-ne p1, v1, :cond_8

    .line 152
    .line 153
    new-instance p1, Ljava/math/BigInteger;

    .line 154
    .line 155
    add-int/2addr v0, v5

    .line 156
    invoke-static {p2, v5, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-direct {p1, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Ljava/math/BigInteger;

    .line 164
    .line 165
    array-length v2, p2

    .line 166
    invoke-static {p2, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-direct {v1, v5, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 171
    .line 172
    .line 173
    new-instance p2, Ljava/security/spec/ECPoint;

    .line 174
    .line 175
    invoke-direct {p2, p1, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 176
    .line 177
    .line 178
    invoke-static {p2, p0}, Lyr9;->g(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 179
    .line 180
    .line 181
    return-object p2

    .line 182
    :cond_8
    const-string p0, "invalid point format"

    .line 183
    .line 184
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-object v2

    .line 188
    :cond_9
    invoke-static {v3}, Lm0;->h(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-object v2
.end method

.method public static O(I[Ljava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p0, :cond_1

    .line 3
    .line 4
    aget-object v1, p1, v0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p0, "at index "

    .line 12
    .line 13
    invoke-static {v0, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public static P(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lyr9;->h(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Lyr9;->g(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    .line 35
    .line 36
    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Ls1a;->f:Ls1a;

    .line 40
    .line 41
    const-string v0, "EC"

    .line 42
    .line 43
    iget-object p1, p1, Ls1a;->a:Lt1a;

    .line 44
    .line 45
    invoke-interface {p1, v0}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/security/KeyFactory;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object v0, Ls1a;->d:Ls1a;

    .line 56
    .line 57
    const-string v1, "ECDH"

    .line 58
    .line 59
    iget-object v0, v0, Ls1a;->a:Lt1a;

    .line 60
    .line 61
    invoke-interface {v0, v1}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljavax/crypto/KeyAgreement;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    :try_start_1
    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance v0, Ljava/math/BigInteger;

    .line 87
    .line 88
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/4 v3, -0x1

    .line 96
    if-eq v2, v3, :cond_0

    .line 97
    .line 98
    invoke-static {p0}, Lyr9;->a(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-gez v2, :cond_0

    .line 107
    .line 108
    invoke-static {v0, v1, p0}, Lzm5;->L(Ljava/math/BigInteger;ZLjava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 113
    .line 114
    const-string p1, "shared secret is out of range"

    .line 115
    .line 116
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :catch_0
    move-exception p0

    .line 121
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 122
    .line 123
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_1
    :try_start_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 128
    .line 129
    const-string p1, "invalid public key spec"

    .line 130
    .line 131
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    :catch_1
    move-exception p0

    .line 136
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 137
    .line 138
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw p1
.end method

.method public static a()Lfs7;
    .locals 2

    .line 1
    new-instance v0, Lfs7;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lqh4;-><init>(Loh4;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static b(Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;)Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getExpiresAtMillis()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/32 v4, 0x493e0

    .line 16
    .line 17
    .line 18
    add-long/2addr v0, v4

    .line 19
    cmp-long p0, v0, v2

    .line 20
    .line 21
    if-lez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static c(II[I[I[I[I)V
    .locals 20

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const-wide v6, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    move-wide v10, v8

    .line 22
    :goto_0
    if-gt v5, v0, :cond_3

    .line 23
    .line 24
    aget v1, v2, v5

    .line 25
    .line 26
    aget v3, p2, v5

    .line 27
    .line 28
    int-to-long v12, v3

    .line 29
    and-long/2addr v12, v6

    .line 30
    add-long/2addr v8, v12

    .line 31
    int-to-long v12, v1

    .line 32
    and-long/2addr v12, v6

    .line 33
    add-long/2addr v8, v12

    .line 34
    add-long/2addr v10, v12

    .line 35
    aget v1, p3, v5

    .line 36
    .line 37
    int-to-long v12, v1

    .line 38
    and-long/2addr v12, v6

    .line 39
    add-long/2addr v10, v12

    .line 40
    long-to-int v1, v10

    .line 41
    ushr-long/2addr v10, v4

    .line 42
    aput v1, v2, v5

    .line 43
    .line 44
    int-to-long v12, v1

    .line 45
    and-long/2addr v12, v6

    .line 46
    add-long/2addr v8, v12

    .line 47
    long-to-int v1, v8

    .line 48
    aput v1, p2, v5

    .line 49
    .line 50
    ushr-long/2addr v8, v4

    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    if-ge v1, v4, :cond_1

    .line 55
    .line 56
    move v3, v5

    .line 57
    move-wide v10, v8

    .line 58
    move-wide v12, v10

    .line 59
    move v8, v3

    .line 60
    move v9, v8

    .line 61
    :goto_1
    if-gt v5, v0, :cond_3

    .line 62
    .line 63
    aget v14, v2, v5

    .line 64
    .line 65
    shl-int v15, v14, v1

    .line 66
    .line 67
    move/from16 v16, v4

    .line 68
    .line 69
    neg-int v4, v1

    .line 70
    ushr-int/2addr v3, v4

    .line 71
    or-int/2addr v3, v15

    .line 72
    aget v15, p2, v5

    .line 73
    .line 74
    move-wide/from16 v17, v6

    .line 75
    .line 76
    int-to-long v6, v15

    .line 77
    and-long v6, v6, v17

    .line 78
    .line 79
    add-long/2addr v10, v6

    .line 80
    int-to-long v6, v3

    .line 81
    and-long v6, v6, v17

    .line 82
    .line 83
    add-long/2addr v10, v6

    .line 84
    aget v3, p3, v5

    .line 85
    .line 86
    shl-int v6, v3, v1

    .line 87
    .line 88
    ushr-int v7, v8, v4

    .line 89
    .line 90
    or-int/2addr v6, v7

    .line 91
    int-to-long v7, v14

    .line 92
    and-long v7, v7, v17

    .line 93
    .line 94
    add-long/2addr v12, v7

    .line 95
    int-to-long v6, v6

    .line 96
    and-long v6, v6, v17

    .line 97
    .line 98
    add-long/2addr v12, v6

    .line 99
    long-to-int v6, v12

    .line 100
    ushr-long v12, v12, v16

    .line 101
    .line 102
    aput v6, v2, v5

    .line 103
    .line 104
    shl-int v7, v6, v1

    .line 105
    .line 106
    ushr-int v4, v9, v4

    .line 107
    .line 108
    or-int/2addr v4, v7

    .line 109
    int-to-long v7, v4

    .line 110
    and-long v7, v7, v17

    .line 111
    .line 112
    add-long/2addr v10, v7

    .line 113
    long-to-int v4, v10

    .line 114
    aput v4, p2, v5

    .line 115
    .line 116
    ushr-long v10, v10, v16

    .line 117
    .line 118
    add-int/lit8 v5, v5, 0x1

    .line 119
    .line 120
    move v8, v3

    .line 121
    move v9, v6

    .line 122
    move v3, v14

    .line 123
    move/from16 v4, v16

    .line 124
    .line 125
    move-wide/from16 v6, v17

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    move/from16 v16, v4

    .line 129
    .line 130
    move-wide/from16 v17, v6

    .line 131
    .line 132
    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    .line 134
    .line 135
    ushr-int/lit8 v4, v1, 0x5

    .line 136
    .line 137
    and-int/lit8 v1, v1, 0x1f

    .line 138
    .line 139
    if-nez v1, :cond_2

    .line 140
    .line 141
    move v1, v4

    .line 142
    move-wide v5, v8

    .line 143
    :goto_2
    if-gt v1, v0, :cond_3

    .line 144
    .line 145
    aget v7, p2, v1

    .line 146
    .line 147
    int-to-long v10, v7

    .line 148
    and-long v10, v10, v17

    .line 149
    .line 150
    add-long/2addr v8, v10

    .line 151
    sub-int v7, v1, v4

    .line 152
    .line 153
    aget v10, v3, v7

    .line 154
    .line 155
    int-to-long v10, v10

    .line 156
    and-long v10, v10, v17

    .line 157
    .line 158
    add-long/2addr v8, v10

    .line 159
    aget v10, v2, v1

    .line 160
    .line 161
    int-to-long v10, v10

    .line 162
    and-long v10, v10, v17

    .line 163
    .line 164
    add-long/2addr v5, v10

    .line 165
    aget v10, p3, v7

    .line 166
    .line 167
    int-to-long v10, v10

    .line 168
    and-long v10, v10, v17

    .line 169
    .line 170
    add-long/2addr v5, v10

    .line 171
    long-to-int v10, v5

    .line 172
    aput v10, v2, v1

    .line 173
    .line 174
    ushr-long v5, v5, v16

    .line 175
    .line 176
    aget v7, v2, v7

    .line 177
    .line 178
    int-to-long v10, v7

    .line 179
    and-long v10, v10, v17

    .line 180
    .line 181
    add-long/2addr v8, v10

    .line 182
    long-to-int v7, v8

    .line 183
    aput v7, p2, v1

    .line 184
    .line 185
    ushr-long v8, v8, v16

    .line 186
    .line 187
    add-int/lit8 v1, v1, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_2
    move v12, v4

    .line 191
    move v6, v5

    .line 192
    move v7, v6

    .line 193
    move-wide v10, v8

    .line 194
    :goto_3
    if-gt v12, v0, :cond_3

    .line 195
    .line 196
    sub-int v13, v12, v4

    .line 197
    .line 198
    aget v14, v3, v13

    .line 199
    .line 200
    shl-int v15, v14, v1

    .line 201
    .line 202
    neg-int v0, v1

    .line 203
    ushr-int/2addr v5, v0

    .line 204
    or-int/2addr v5, v15

    .line 205
    aget v15, p2, v12

    .line 206
    .line 207
    move/from16 v19, v0

    .line 208
    .line 209
    move/from16 p1, v1

    .line 210
    .line 211
    int-to-long v0, v15

    .line 212
    and-long v0, v0, v17

    .line 213
    .line 214
    add-long/2addr v8, v0

    .line 215
    int-to-long v0, v5

    .line 216
    and-long v0, v0, v17

    .line 217
    .line 218
    add-long/2addr v8, v0

    .line 219
    aget v5, p3, v13

    .line 220
    .line 221
    shl-int v0, v5, p1

    .line 222
    .line 223
    ushr-int v1, v6, v19

    .line 224
    .line 225
    or-int/2addr v0, v1

    .line 226
    aget v1, v2, v12

    .line 227
    .line 228
    int-to-long v1, v1

    .line 229
    and-long v1, v1, v17

    .line 230
    .line 231
    add-long/2addr v10, v1

    .line 232
    int-to-long v0, v0

    .line 233
    and-long v0, v0, v17

    .line 234
    .line 235
    add-long/2addr v10, v0

    .line 236
    long-to-int v0, v10

    .line 237
    aput v0, p4, v12

    .line 238
    .line 239
    ushr-long v10, v10, v16

    .line 240
    .line 241
    aget v0, p4, v13

    .line 242
    .line 243
    shl-int v1, v0, p1

    .line 244
    .line 245
    ushr-int v2, v7, v19

    .line 246
    .line 247
    or-int/2addr v1, v2

    .line 248
    int-to-long v1, v1

    .line 249
    and-long v1, v1, v17

    .line 250
    .line 251
    add-long/2addr v8, v1

    .line 252
    long-to-int v1, v8

    .line 253
    aput v1, p2, v12

    .line 254
    .line 255
    ushr-long v8, v8, v16

    .line 256
    .line 257
    add-int/lit8 v12, v12, 0x1

    .line 258
    .line 259
    move/from16 v1, p1

    .line 260
    .line 261
    move-object/from16 v2, p4

    .line 262
    .line 263
    move v7, v0

    .line 264
    move v6, v5

    .line 265
    move v5, v14

    .line 266
    move/from16 v0, p0

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_3
    return-void
.end method

.method public static d(II[I[I[I[I)V
    .locals 17

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    ushr-int/lit8 v1, p1, 0x5

    .line 4
    .line 5
    and-int/lit8 v2, p1, 0x1f

    .line 6
    .line 7
    const/16 v3, 0x20

    .line 8
    .line 9
    const-wide v4, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    move v2, v1

    .line 19
    move-wide v8, v6

    .line 20
    :goto_0
    if-gt v2, v0, :cond_1

    .line 21
    .line 22
    aget v10, p2, v2

    .line 23
    .line 24
    int-to-long v10, v10

    .line 25
    and-long/2addr v10, v4

    .line 26
    add-long/2addr v6, v10

    .line 27
    aget v10, p3, v2

    .line 28
    .line 29
    int-to-long v10, v10

    .line 30
    and-long/2addr v10, v4

    .line 31
    add-long/2addr v8, v10

    .line 32
    sub-int v10, v2, v1

    .line 33
    .line 34
    aget v11, p4, v10

    .line 35
    .line 36
    int-to-long v11, v11

    .line 37
    and-long/2addr v11, v4

    .line 38
    add-long/2addr v6, v11

    .line 39
    aget v10, p5, v10

    .line 40
    .line 41
    int-to-long v10, v10

    .line 42
    and-long/2addr v10, v4

    .line 43
    add-long/2addr v8, v10

    .line 44
    long-to-int v10, v6

    .line 45
    aput v10, p2, v2

    .line 46
    .line 47
    ushr-long/2addr v6, v3

    .line 48
    long-to-int v10, v8

    .line 49
    aput v10, p3, v2

    .line 50
    .line 51
    ushr-long/2addr v8, v3

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v8, 0x0

    .line 56
    move v12, v1

    .line 57
    move v10, v8

    .line 58
    move v11, v10

    .line 59
    move-wide v8, v6

    .line 60
    :goto_1
    if-gt v12, v0, :cond_1

    .line 61
    .line 62
    sub-int v13, v12, v1

    .line 63
    .line 64
    aget v14, p4, v13

    .line 65
    .line 66
    aget v13, p5, v13

    .line 67
    .line 68
    shl-int v15, v14, v2

    .line 69
    .line 70
    move/from16 p1, v3

    .line 71
    .line 72
    neg-int v3, v2

    .line 73
    ushr-int/2addr v10, v3

    .line 74
    or-int/2addr v10, v15

    .line 75
    shl-int v15, v13, v2

    .line 76
    .line 77
    ushr-int v3, v11, v3

    .line 78
    .line 79
    or-int/2addr v3, v15

    .line 80
    aget v11, p2, v12

    .line 81
    .line 82
    move-wide v15, v4

    .line 83
    int-to-long v4, v11

    .line 84
    and-long/2addr v4, v15

    .line 85
    add-long/2addr v6, v4

    .line 86
    aget v4, p3, v12

    .line 87
    .line 88
    int-to-long v4, v4

    .line 89
    and-long/2addr v4, v15

    .line 90
    add-long/2addr v8, v4

    .line 91
    int-to-long v4, v10

    .line 92
    and-long/2addr v4, v15

    .line 93
    add-long/2addr v6, v4

    .line 94
    int-to-long v3, v3

    .line 95
    and-long/2addr v3, v15

    .line 96
    add-long/2addr v8, v3

    .line 97
    long-to-int v3, v6

    .line 98
    aput v3, p2, v12

    .line 99
    .line 100
    ushr-long v6, v6, p1

    .line 101
    .line 102
    long-to-int v3, v8

    .line 103
    aput v3, p3, v12

    .line 104
    .line 105
    ushr-long v8, v8, p1

    .line 106
    .line 107
    add-int/lit8 v12, v12, 0x1

    .line 108
    .line 109
    move/from16 v3, p1

    .line 110
    .line 111
    move v11, v13

    .line 112
    move v10, v14

    .line 113
    move-wide v4, v15

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    return-void
.end method

.method public static e(Landroid/content/Context;)Lix0;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f04062b

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lsz8;->y(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v1, -0x1000000

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    invoke-static {p0}, Lzm5;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    new-instance v1, Lh72;

    .line 25
    .line 26
    invoke-direct {v1}, Lh72;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "android.support.customtabs.extra.TOOLBAR_COLOR"

    .line 35
    .line 36
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    iput-object v2, v1, Lh72;->d:Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-virtual {v1}, Lh72;->a()Lix0;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, v0, Lix0;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Landroid/content/Intent;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    .line 54
    .line 55
    const-string v0, "Null custom tab package"

    .line 56
    .line 57
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static final f(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const-string v0, "Expected positive parallelism level, but got "

    .line 6
    .line 7
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static g(III)V
    .locals 4

    .line 1
    const-string v0, "fromIndex: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_1

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p2, " > toIndex: "

    .line 11
    .line 12
    invoke-static {v0, p0, p1, p2}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 21
    .line 22
    const-string v2, ", toIndex: "

    .line 23
    .line 24
    const-string v3, ", size: "

    .line 25
    .line 26
    invoke-static {v0, p0, v2, v3, p1}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method

.method public static h(FFF)V
    .locals 0

    .line 1
    cmpl-float p0, p0, p1

    .line 2
    .line 3
    if-gez p0, :cond_1

    .line 4
    .line 5
    cmpl-float p0, p1, p2

    .line 6
    .line 7
    if-gez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const-string p0, "Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value"

    .line 17
    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static i(Lcom/bumptech/glide/a;Ljava/util/List;Lx13;)Lmi6;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lcom/bumptech/glide/a;->a:Lnr0;

    .line 4
    .line 5
    iget-object v3, v0, Lcom/bumptech/glide/a;->d:Lm35;

    .line 6
    .line 7
    iget-object v4, v0, Lcom/bumptech/glide/a;->c:Ldy3;

    .line 8
    .line 9
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget-object v4, v4, Ldy3;->h:Lky3;

    .line 14
    .line 15
    new-instance v6, Lmi6;

    .line 16
    .line 17
    invoke-direct {v6}, Lmi6;-><init>()V

    .line 18
    .line 19
    .line 20
    const-class v7, Lgl7;

    .line 21
    .line 22
    const-string v8, "BitmapDrawable"

    .line 23
    .line 24
    const-class v9, Ljava/lang/String;

    .line 25
    .line 26
    const-string v10, "legacy_append"

    .line 27
    .line 28
    const-class v11, Lfx3;

    .line 29
    .line 30
    const-string v12, "Animation"

    .line 31
    .line 32
    const-class v13, [B

    .line 33
    .line 34
    const-class v14, Ljava/lang/Integer;

    .line 35
    .line 36
    const-class v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    .line 38
    const-string v0, "Bitmap"

    .line 39
    .line 40
    const-class v1, Ljava/io/File;

    .line 41
    .line 42
    move-object/from16 v16, v13

    .line 43
    .line 44
    const-class v13, Landroid/os/ParcelFileDescriptor;

    .line 45
    .line 46
    move-object/from16 v17, v9

    .line 47
    .line 48
    const-class v9, Landroid/content/res/AssetFileDescriptor;

    .line 49
    .line 50
    move-object/from16 v18, v14

    .line 51
    .line 52
    const-class v14, Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    move-object/from16 v19, v1

    .line 55
    .line 56
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    move-object/from16 v20, v10

    .line 59
    .line 60
    const-class v10, Landroid/graphics/Bitmap;

    .line 61
    .line 62
    move-object/from16 v21, v7

    .line 63
    .line 64
    const-class v7, Landroid/net/Uri;

    .line 65
    .line 66
    move-object/from16 v22, v7

    .line 67
    .line 68
    const-class v7, Ljava/io/InputStream;

    .line 69
    .line 70
    move-object/from16 v23, v11

    .line 71
    .line 72
    new-instance v11, Lqe2;

    .line 73
    .line 74
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    move-object/from16 v24, v8

    .line 78
    .line 79
    iget-object v8, v6, Lmi6;->g:Ly94;

    .line 80
    .line 81
    monitor-enter v8

    .line 82
    move-object/from16 v25, v15

    .line 83
    .line 84
    :try_start_0
    iget-object v15, v8, Ly94;->a:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    .line 88
    .line 89
    monitor-exit v8

    .line 90
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v11, 0x1b

    .line 93
    .line 94
    if-lt v8, v11, :cond_0

    .line 95
    .line 96
    new-instance v11, Ld03;

    .line 97
    .line 98
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v15, v6, Lmi6;->g:Ly94;

    .line 102
    .line 103
    monitor-enter v15

    .line 104
    move-object/from16 v26, v9

    .line 105
    .line 106
    :try_start_1
    iget-object v9, v15, Ly94;->a:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    monitor-exit v15

    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw v0

    .line 116
    :cond_0
    move-object/from16 v26, v9

    .line 117
    .line 118
    :goto_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-virtual {v6}, Lmi6;->e()Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    new-instance v15, Lux0;

    .line 127
    .line 128
    invoke-direct {v15, v5, v11, v2, v3}, Lux0;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lnr0;Lm35;)V

    .line 129
    .line 130
    .line 131
    move-object/from16 v27, v15

    .line 132
    .line 133
    new-instance v15, Lhk8;

    .line 134
    .line 135
    move-object/from16 v28, v9

    .line 136
    .line 137
    new-instance v9, Lus2;

    .line 138
    .line 139
    move-object/from16 v29, v13

    .line 140
    .line 141
    const/16 v13, 0x1d

    .line 142
    .line 143
    invoke-direct {v9, v13}, Lus2;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-direct {v15, v2, v9}, Lhk8;-><init>(Lnr0;Lgk8;)V

    .line 147
    .line 148
    .line 149
    new-instance v9, Luo2;

    .line 150
    .line 151
    invoke-virtual {v6}, Lmi6;->e()Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    move-object/from16 v30, v15

    .line 156
    .line 157
    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    invoke-direct {v9, v13, v15, v2, v3}, Luo2;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lnr0;Lm35;)V

    .line 162
    .line 163
    .line 164
    const/4 v13, 0x1

    .line 165
    const/16 v15, 0x1c

    .line 166
    .line 167
    if-lt v8, v15, :cond_1

    .line 168
    .line 169
    const-class v15, Lwx3;

    .line 170
    .line 171
    iget-object v4, v4, Lky3;->a:Ljava/util/Map;

    .line 172
    .line 173
    invoke-interface {v4, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_1

    .line 178
    .line 179
    new-instance v4, Llr0;

    .line 180
    .line 181
    invoke-direct {v4, v13}, Llr0;-><init>(I)V

    .line 182
    .line 183
    .line 184
    new-instance v15, Lqc;

    .line 185
    .line 186
    invoke-direct {v15}, Lqc;-><init>()V

    .line 187
    .line 188
    .line 189
    :goto_1
    const/16 v13, 0x1c

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_1
    new-instance v15, Lqx0;

    .line 193
    .line 194
    invoke-direct {v15, v9}, Lqx0;-><init>(Luo2;)V

    .line 195
    .line 196
    .line 197
    new-instance v4, Lbp7;

    .line 198
    .line 199
    invoke-direct {v4, v9, v3}, Lbp7;-><init>(Luo2;Lm35;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :goto_2
    if-lt v8, v13, :cond_2

    .line 204
    .line 205
    new-instance v13, Lrc;

    .line 206
    .line 207
    move/from16 v31, v8

    .line 208
    .line 209
    new-instance v8, Lsc;

    .line 210
    .line 211
    invoke-direct {v8, v11, v3}, Lsc;-><init>(Ljava/util/ArrayList;Lm35;)V

    .line 212
    .line 213
    .line 214
    invoke-direct {v13, v8}, Lrc;-><init>(Lsc;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v12, v7, v1, v13}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 218
    .line 219
    .line 220
    new-instance v8, Lqc;

    .line 221
    .line 222
    new-instance v13, Lsc;

    .line 223
    .line 224
    invoke-direct {v13, v11, v3}, Lsc;-><init>(Ljava/util/ArrayList;Lm35;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {v8, v13}, Lqc;-><init>(Lsc;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v12, v14, v1, v8}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_2
    move/from16 v31, v8

    .line 235
    .line 236
    :goto_3
    new-instance v8, Lsl6;

    .line 237
    .line 238
    invoke-direct {v8, v5}, Lsl6;-><init>(Landroid/content/Context;)V

    .line 239
    .line 240
    .line 241
    new-instance v13, Lkr0;

    .line 242
    .line 243
    invoke-direct {v13, v3}, Lkr0;-><init>(Lm35;)V

    .line 244
    .line 245
    .line 246
    move-object/from16 v32, v5

    .line 247
    .line 248
    new-instance v5, Lir0;

    .line 249
    .line 250
    move-object/from16 v33, v1

    .line 251
    .line 252
    const/4 v1, 0x0

    .line 253
    invoke-direct {v5, v1}, Lir0;-><init>(I)V

    .line 254
    .line 255
    .line 256
    new-instance v1, Lb05;

    .line 257
    .line 258
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 259
    .line 260
    .line 261
    move-object/from16 v34, v1

    .line 262
    .line 263
    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    move-object/from16 v35, v5

    .line 268
    .line 269
    new-instance v5, Lhx0;

    .line 270
    .line 271
    move-object/from16 v36, v1

    .line 272
    .line 273
    const/4 v1, 0x2

    .line 274
    invoke-direct {v5, v1}, Lhx0;-><init>(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6, v14, v5}, Lmi6;->a(Ljava/lang/Class;Lzv2;)V

    .line 278
    .line 279
    .line 280
    new-instance v5, Lom5;

    .line 281
    .line 282
    invoke-direct {v5, v3}, Lom5;-><init>(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6, v7, v5}, Lmi6;->a(Ljava/lang/Class;Lzv2;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6, v0, v14, v10, v15}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v0, v7, v10, v4}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 292
    .line 293
    .line 294
    const-string v5, "robolectric"

    .line 295
    .line 296
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    if-nez v5, :cond_3

    .line 303
    .line 304
    new-instance v5, Lmx3;

    .line 305
    .line 306
    move-object/from16 v37, v1

    .line 307
    .line 308
    const/4 v1, 0x1

    .line 309
    invoke-direct {v5, v9, v1}, Lmx3;-><init>(Ljava/lang/Object;I)V

    .line 310
    .line 311
    .line 312
    move-object/from16 v1, v29

    .line 313
    .line 314
    invoke-virtual {v6, v0, v1, v10, v5}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_3
    move-object/from16 v37, v1

    .line 319
    .line 320
    move-object/from16 v1, v29

    .line 321
    .line 322
    :goto_4
    new-instance v5, Lhk8;

    .line 323
    .line 324
    new-instance v9, Lma2;

    .line 325
    .line 326
    move-object/from16 v29, v8

    .line 327
    .line 328
    const/16 v8, 0x16

    .line 329
    .line 330
    invoke-direct {v9, v8}, Lma2;-><init>(I)V

    .line 331
    .line 332
    .line 333
    invoke-direct {v5, v2, v9}, Lhk8;-><init>(Lnr0;Lgk8;)V

    .line 334
    .line 335
    .line 336
    move-object/from16 v8, v26

    .line 337
    .line 338
    invoke-virtual {v6, v0, v8, v10, v5}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v5, v30

    .line 342
    .line 343
    invoke-virtual {v6, v0, v1, v10, v5}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 344
    .line 345
    .line 346
    sget-object v9, Llv1;->k:Llv1;

    .line 347
    .line 348
    invoke-virtual {v6, v10, v10, v9}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 349
    .line 350
    .line 351
    new-instance v8, Lde8;

    .line 352
    .line 353
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v6, v0, v10, v10, v8}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v6, v10, v13}, Lmi6;->b(Ljava/lang/Class;Ltl6;)V

    .line 360
    .line 361
    .line 362
    new-instance v8, Ljr0;

    .line 363
    .line 364
    move-object/from16 v30, v0

    .line 365
    .line 366
    move-object/from16 v0, v28

    .line 367
    .line 368
    invoke-direct {v8, v0, v15}, Ljr0;-><init>(Landroid/content/res/Resources;Lql6;)V

    .line 369
    .line 370
    .line 371
    move-object/from16 v15, v24

    .line 372
    .line 373
    move-object/from16 v24, v10

    .line 374
    .line 375
    move-object/from16 v10, v25

    .line 376
    .line 377
    invoke-virtual {v6, v15, v14, v10, v8}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 378
    .line 379
    .line 380
    new-instance v8, Ljr0;

    .line 381
    .line 382
    invoke-direct {v8, v0, v4}, Ljr0;-><init>(Landroid/content/res/Resources;Lql6;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v15, v7, v10, v8}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 386
    .line 387
    .line 388
    new-instance v4, Ljr0;

    .line 389
    .line 390
    invoke-direct {v4, v0, v5}, Ljr0;-><init>(Landroid/content/res/Resources;Lql6;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6, v15, v1, v10, v4}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 394
    .line 395
    .line 396
    new-instance v4, Lcd;

    .line 397
    .line 398
    const/4 v5, 0x2

    .line 399
    invoke-direct {v4, v5, v2, v13}, Lcd;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v6, v10, v4}, Lmi6;->b(Ljava/lang/Class;Ltl6;)V

    .line 403
    .line 404
    .line 405
    new-instance v4, Lfp7;

    .line 406
    .line 407
    move-object/from16 v5, v27

    .line 408
    .line 409
    invoke-direct {v4, v11, v5, v3}, Lfp7;-><init>(Ljava/util/ArrayList;Lux0;Lm35;)V

    .line 410
    .line 411
    .line 412
    move-object/from16 v8, v23

    .line 413
    .line 414
    invoke-virtual {v6, v12, v7, v8, v4}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6, v12, v14, v8, v5}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 418
    .line 419
    .line 420
    new-instance v4, Lsl4;

    .line 421
    .line 422
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6, v8, v4}, Lmi6;->b(Ljava/lang/Class;Ltl6;)V

    .line 426
    .line 427
    .line 428
    move-object/from16 v4, v21

    .line 429
    .line 430
    invoke-virtual {v6, v4, v4, v9}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 431
    .line 432
    .line 433
    new-instance v5, Lmx3;

    .line 434
    .line 435
    const/4 v11, 0x0

    .line 436
    invoke-direct {v5, v2, v11}, Lmx3;-><init>(Ljava/lang/Object;I)V

    .line 437
    .line 438
    .line 439
    move-object/from16 v12, v24

    .line 440
    .line 441
    move-object/from16 v11, v30

    .line 442
    .line 443
    invoke-virtual {v6, v11, v4, v12, v5}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 444
    .line 445
    .line 446
    move-object/from16 v4, v20

    .line 447
    .line 448
    move-object/from16 v11, v22

    .line 449
    .line 450
    move-object/from16 v13, v29

    .line 451
    .line 452
    move-object/from16 v5, v33

    .line 453
    .line 454
    invoke-virtual {v6, v4, v11, v5, v13}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 455
    .line 456
    .line 457
    new-instance v15, Lnl6;

    .line 458
    .line 459
    invoke-direct {v15, v13, v2}, Lnl6;-><init>(Lsl6;Lnr0;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v6, v4, v11, v12, v15}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 463
    .line 464
    .line 465
    new-instance v13, Lwx0;

    .line 466
    .line 467
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v6, v13}, Lmi6;->h(Lya2;)V

    .line 471
    .line 472
    .line 473
    new-instance v13, Lma2;

    .line 474
    .line 475
    const/4 v15, 0x3

    .line 476
    invoke-direct {v13, v15}, Lma2;-><init>(I)V

    .line 477
    .line 478
    .line 479
    move-object/from16 v15, v19

    .line 480
    .line 481
    invoke-virtual {v6, v15, v14, v13}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 482
    .line 483
    .line 484
    new-instance v13, Lu83;

    .line 485
    .line 486
    new-instance v8, Lns0;

    .line 487
    .line 488
    move-object/from16 v19, v2

    .line 489
    .line 490
    const/16 v2, 0x9

    .line 491
    .line 492
    invoke-direct {v8, v2}, Lns0;-><init>(I)V

    .line 493
    .line 494
    .line 495
    invoke-direct {v13, v8, v2}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v6, v15, v7, v13}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 499
    .line 500
    .line 501
    new-instance v8, Lf73;

    .line 502
    .line 503
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v6, v4, v15, v15, v8}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 507
    .line 508
    .line 509
    new-instance v8, Lr83;

    .line 510
    .line 511
    new-instance v13, Llk;

    .line 512
    .line 513
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-direct {v8, v13, v2}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v6, v15, v1, v8}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v6, v15, v15, v9}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 523
    .line 524
    .line 525
    new-instance v2, Lqc4;

    .line 526
    .line 527
    invoke-direct {v2, v3}, Lqc4;-><init>(Lm35;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v6, v2}, Lmi6;->h(Lya2;)V

    .line 531
    .line 532
    .line 533
    const-string v2, "robolectric"

    .line 534
    .line 535
    move-object/from16 v3, v37

    .line 536
    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    if-nez v2, :cond_4

    .line 542
    .line 543
    new-instance v2, Lww5;

    .line 544
    .line 545
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v6, v2}, Lmi6;->h(Lya2;)V

    .line 549
    .line 550
    .line 551
    :cond_4
    new-instance v2, Lzq8;

    .line 552
    .line 553
    const/16 v3, 0x8

    .line 554
    .line 555
    move-object/from16 v8, v32

    .line 556
    .line 557
    invoke-direct {v2, v8, v3}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 558
    .line 559
    .line 560
    new-instance v3, Lom5;

    .line 561
    .line 562
    invoke-direct {v3, v8}, Lom5;-><init>(Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    new-instance v13, Lrb;

    .line 566
    .line 567
    move-object/from16 v25, v10

    .line 568
    .line 569
    const/16 v10, 0xc

    .line 570
    .line 571
    invoke-direct {v13, v8, v10}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 572
    .line 573
    .line 574
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 575
    .line 576
    invoke-virtual {v6, v10, v7, v2}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 577
    .line 578
    .line 579
    move-object/from16 v24, v12

    .line 580
    .line 581
    move-object/from16 v12, v18

    .line 582
    .line 583
    invoke-virtual {v6, v12, v7, v2}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 584
    .line 585
    .line 586
    move-object/from16 v2, v26

    .line 587
    .line 588
    invoke-virtual {v6, v10, v2, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v6, v12, v2, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v6, v10, v5, v13}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v6, v12, v5, v13}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 598
    .line 599
    .line 600
    new-instance v3, Lbe4;

    .line 601
    .line 602
    const/4 v13, 0x3

    .line 603
    invoke-direct {v3, v8, v13}, Lbe4;-><init>(Landroid/content/Context;I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v6, v11, v7, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 607
    .line 608
    .line 609
    new-instance v3, Lkm5;

    .line 610
    .line 611
    const/16 v13, 0x10

    .line 612
    .line 613
    invoke-direct {v3, v8, v13}, Lkm5;-><init>(Ljava/lang/Object;I)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v6, v11, v2, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 617
    .line 618
    .line 619
    new-instance v3, Ljq6;

    .line 620
    .line 621
    const/16 v13, 0x12

    .line 622
    .line 623
    invoke-direct {v3, v0, v13}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 624
    .line 625
    .line 626
    new-instance v13, Lln5;

    .line 627
    .line 628
    move-object/from16 v26, v4

    .line 629
    .line 630
    const/16 v4, 0xc

    .line 631
    .line 632
    invoke-direct {v13, v0, v4}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 633
    .line 634
    .line 635
    new-instance v4, Lz28;

    .line 636
    .line 637
    move-object/from16 v33, v5

    .line 638
    .line 639
    const/16 v5, 0xf

    .line 640
    .line 641
    invoke-direct {v4, v0, v5}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v6, v12, v11, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v6, v10, v11, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v6, v12, v2, v13}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v6, v10, v2, v13}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v6, v12, v7, v4}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v6, v10, v7, v4}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 660
    .line 661
    .line 662
    new-instance v3, Lrb;

    .line 663
    .line 664
    const/16 v4, 0xa

    .line 665
    .line 666
    invoke-direct {v3, v4}, Lrb;-><init>(I)V

    .line 667
    .line 668
    .line 669
    move-object/from16 v10, v17

    .line 670
    .line 671
    invoke-virtual {v6, v10, v7, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 672
    .line 673
    .line 674
    new-instance v3, Lrb;

    .line 675
    .line 676
    invoke-direct {v3, v4}, Lrb;-><init>(I)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v6, v11, v7, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 680
    .line 681
    .line 682
    new-instance v3, Lq34;

    .line 683
    .line 684
    const/16 v4, 0xd

    .line 685
    .line 686
    invoke-direct {v3, v4}, Lq34;-><init>(I)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v6, v10, v7, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 690
    .line 691
    .line 692
    new-instance v3, Lhx0;

    .line 693
    .line 694
    invoke-direct {v3, v5}, Lhx0;-><init>(I)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v6, v10, v1, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 698
    .line 699
    .line 700
    new-instance v3, Lns0;

    .line 701
    .line 702
    const/16 v4, 0x12

    .line 703
    .line 704
    invoke-direct {v3, v4}, Lns0;-><init>(I)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v6, v10, v2, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 708
    .line 709
    .line 710
    new-instance v3, Lz28;

    .line 711
    .line 712
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    const/4 v5, 0x5

    .line 717
    invoke-direct {v3, v4, v5}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v6, v11, v7, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 721
    .line 722
    .line 723
    new-instance v3, Lln5;

    .line 724
    .line 725
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    const/4 v13, 0x3

    .line 730
    invoke-direct {v3, v4, v13}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v6, v11, v2, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 734
    .line 735
    .line 736
    new-instance v3, Lp92;

    .line 737
    .line 738
    invoke-direct {v3, v8}, Lp92;-><init>(Landroid/content/Context;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v6, v11, v7, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 742
    .line 743
    .line 744
    new-instance v3, Lbe4;

    .line 745
    .line 746
    const/4 v4, 0x1

    .line 747
    invoke-direct {v3, v8, v4}, Lbe4;-><init>(Landroid/content/Context;I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v6, v11, v7, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 751
    .line 752
    .line 753
    move/from16 v3, v31

    .line 754
    .line 755
    const/16 v4, 0x1d

    .line 756
    .line 757
    if-lt v3, v4, :cond_5

    .line 758
    .line 759
    new-instance v3, Lic6;

    .line 760
    .line 761
    invoke-direct {v3, v8, v7}, Lao;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v6, v11, v7, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 765
    .line 766
    .line 767
    new-instance v3, Lhc6;

    .line 768
    .line 769
    invoke-direct {v3, v8, v1}, Lao;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v6, v11, v1, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 773
    .line 774
    .line 775
    :cond_5
    new-instance v3, Lkm8;

    .line 776
    .line 777
    move-object/from16 v4, v36

    .line 778
    .line 779
    invoke-direct {v3, v4}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v6, v11, v7, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 783
    .line 784
    .line 785
    new-instance v3, Lvk9;

    .line 786
    .line 787
    const/16 v5, 0x13

    .line 788
    .line 789
    invoke-direct {v3, v4, v5}, Lvk9;-><init>(Ljava/lang/Object;I)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v6, v11, v1, v3}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 793
    .line 794
    .line 795
    new-instance v1, La38;

    .line 796
    .line 797
    invoke-direct {v1, v4}, La38;-><init>(Landroid/content/ContentResolver;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v6, v11, v2, v1}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 801
    .line 802
    .line 803
    new-instance v1, Llv1;

    .line 804
    .line 805
    const/16 v2, 0x14

    .line 806
    .line 807
    invoke-direct {v1, v2}, Llv1;-><init>(I)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v6, v11, v7, v1}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 811
    .line 812
    .line 813
    const-class v1, Ljava/net/URL;

    .line 814
    .line 815
    new-instance v2, Lq34;

    .line 816
    .line 817
    const/16 v3, 0x10

    .line 818
    .line 819
    invoke-direct {v2, v3}, Lq34;-><init>(I)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v6, v1, v7, v2}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 823
    .line 824
    .line 825
    new-instance v1, Lvk9;

    .line 826
    .line 827
    const/16 v2, 0xb

    .line 828
    .line 829
    invoke-direct {v1, v8, v2}, Lvk9;-><init>(Ljava/lang/Object;I)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v6, v11, v15, v1}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 833
    .line 834
    .line 835
    const-class v1, Lsy3;

    .line 836
    .line 837
    new-instance v2, Lkm5;

    .line 838
    .line 839
    const/4 v3, 0x0

    .line 840
    const/16 v4, 0xc

    .line 841
    .line 842
    invoke-direct {v2, v3, v4}, Lkm5;-><init>(BI)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v6, v1, v7, v2}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 846
    .line 847
    .line 848
    new-instance v1, Lge;

    .line 849
    .line 850
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 851
    .line 852
    .line 853
    move-object/from16 v2, v16

    .line 854
    .line 855
    invoke-virtual {v6, v2, v14, v1}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 856
    .line 857
    .line 858
    new-instance v1, Lb05;

    .line 859
    .line 860
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v6, v2, v7, v1}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v6, v11, v11, v9}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 867
    .line 868
    .line 869
    move-object/from16 v5, v33

    .line 870
    .line 871
    invoke-virtual {v6, v5, v5, v9}, Lmi6;->c(Ljava/lang/Class;Ljava/lang/Class;Ldh5;)V

    .line 872
    .line 873
    .line 874
    new-instance v1, Lee8;

    .line 875
    .line 876
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 877
    .line 878
    .line 879
    move-object/from16 v4, v26

    .line 880
    .line 881
    invoke-virtual {v6, v4, v5, v5, v1}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 882
    .line 883
    .line 884
    new-instance v1, Ltr9;

    .line 885
    .line 886
    const/4 v13, 0x3

    .line 887
    invoke-direct {v1, v0, v13}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 888
    .line 889
    .line 890
    move-object/from16 v12, v24

    .line 891
    .line 892
    move-object/from16 v10, v25

    .line 893
    .line 894
    invoke-virtual {v6, v12, v10, v1}, Lmi6;->i(Ljava/lang/Class;Ljava/lang/Class;Lam6;)V

    .line 895
    .line 896
    .line 897
    move-object/from16 v1, v35

    .line 898
    .line 899
    invoke-virtual {v6, v12, v2, v1}, Lmi6;->i(Ljava/lang/Class;Ljava/lang/Class;Lam6;)V

    .line 900
    .line 901
    .line 902
    new-instance v3, Lu94;

    .line 903
    .line 904
    move-object/from16 v4, v19

    .line 905
    .line 906
    move-object/from16 v7, v34

    .line 907
    .line 908
    invoke-direct {v3, v4, v1, v7}, Lu94;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v6, v5, v2, v3}, Lmi6;->i(Ljava/lang/Class;Ljava/lang/Class;Lam6;)V

    .line 912
    .line 913
    .line 914
    move-object/from16 v1, v23

    .line 915
    .line 916
    invoke-virtual {v6, v1, v2, v7}, Lmi6;->i(Ljava/lang/Class;Ljava/lang/Class;Lam6;)V

    .line 917
    .line 918
    .line 919
    new-instance v1, Lhk8;

    .line 920
    .line 921
    new-instance v2, Lfk8;

    .line 922
    .line 923
    const/4 v3, 0x0

    .line 924
    invoke-direct {v2, v3}, Lfk8;-><init>(I)V

    .line 925
    .line 926
    .line 927
    invoke-direct {v1, v4, v2}, Lhk8;-><init>(Lnr0;Lgk8;)V

    .line 928
    .line 929
    .line 930
    const-string v2, "legacy_append"

    .line 931
    .line 932
    invoke-virtual {v6, v2, v14, v12, v1}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 933
    .line 934
    .line 935
    new-instance v2, Ljr0;

    .line 936
    .line 937
    invoke-direct {v2, v0, v1}, Ljr0;-><init>(Landroid/content/res/Resources;Lql6;)V

    .line 938
    .line 939
    .line 940
    const-string v0, "legacy_append"

    .line 941
    .line 942
    invoke-virtual {v6, v0, v14, v10, v2}, Lmi6;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lql6;)V

    .line 943
    .line 944
    .line 945
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 950
    .line 951
    .line 952
    move-result v1

    .line 953
    if-nez v1, :cond_7

    .line 954
    .line 955
    if-eqz p2, :cond_6

    .line 956
    .line 957
    move-object/from16 v0, p0

    .line 958
    .line 959
    move-object/from16 v1, p2

    .line 960
    .line 961
    invoke-virtual {v1, v8, v0, v6}, Lx13;->O(Landroid/content/Context;Lcom/bumptech/glide/a;Lmi6;)V

    .line 962
    .line 963
    .line 964
    :cond_6
    return-object v6

    .line 965
    :cond_7
    invoke-static {v0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    throw v0

    .line 970
    :catchall_1
    move-exception v0

    .line 971
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 972
    throw v0
.end method

.method public static j(D)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    const/4 v1, 0x7

    .line 13
    :goto_0
    if-ltz v1, :cond_0

    .line 14
    .line 15
    mul-int/lit8 v2, v1, 0x8

    .line 16
    .line 17
    ushr-long v2, p0, v2

    .line 18
    .line 19
    const-wide/16 v4, 0xff

    .line 20
    .line 21
    and-long/2addr v2, v4

    .line 22
    long-to-int v2, v2

    .line 23
    shr-int/lit8 v3, v2, 0x4

    .line 24
    .line 25
    and-int/lit8 v3, v3, 0xf

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0xf

    .line 28
    .line 29
    sget-object v4, Lzm5;->d:[C

    .line 30
    .line 31
    aget-char v3, v4, v3

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    aget-char v2, v4, v2

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static final k(Ln67;JLqt3;)Ljava/lang/Object;
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-wide v0, p0, Ln67;->e:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ln67;->g()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    return-object p0

    .line 15
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ldq1;->e()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lzm5;->a:Ldu9;

    .line 20
    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_3
    check-cast v0, Ldq1;

    .line 25
    .line 26
    check-cast v0, Ln67;

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    :cond_4
    :goto_2
    move-object p0, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_5
    iget-wide v0, p0, Ln67;->e:J

    .line 33
    .line 34
    const-wide/16 v2, 0x1

    .line 35
    .line 36
    add-long/2addr v0, v2

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p3, v0, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ln67;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ldq1;->j(Ln67;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Ln67;->g()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Ldq1;->i()V

    .line 60
    .line 61
    .line 62
    goto :goto_2
.end method

.method public static final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    invoke-static {p0, v0, v1, v1, v2}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    invoke-static {v2, p0, v0}, Lnq7;->l0(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static m([II)I
    .locals 2

    .line 1
    aget v0, p0, p1

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    :goto_0
    if-lez p1, :cond_0

    .line 6
    .line 7
    aget v1, p0, p1

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    mul-int/lit8 v1, p1, 0x20

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x20

    .line 17
    .line 18
    aget p0, p0, p1

    .line 19
    .line 20
    xor-int/2addr p0, v0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    sub-int/2addr v1, p0

    .line 26
    return v1
.end method

.method public static n([II)I
    .locals 1

    .line 1
    :goto_0
    if-lez p1, :cond_0

    .line 2
    .line 3
    aget v0, p0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    mul-int/lit8 v0, p1, 0x20

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x20

    .line 13
    .line 14
    aget p0, p0, p1

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    sub-int/2addr v0, p0

    .line 21
    return v0
.end method

.method public static o(Landroid/widget/EdgeEffect;)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lls2;->b(Landroid/widget/EdgeEffect;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lzm5;->e:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v2, "http://www.example.com"

    .line 16
    .line 17
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "android.intent.action.VIEW"

    .line 22
    .line 23
    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 35
    .line 36
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v3, v4

    .line 40
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v6, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_3

    .line 61
    .line 62
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 67
    .line 68
    new-instance v8, Landroid/content/Intent;

    .line 69
    .line 70
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v9, "android.support.customtabs.action.CustomTabsService"

    .line 74
    .line 75
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 79
    .line 80
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v8, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    if-eqz v8, :cond_2

    .line 90
    .line 91
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 92
    .line 93
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    sput-object v4, Lzm5;->e:Ljava/lang/String;

    .line 106
    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/4 v4, 0x1

    .line 114
    if-ne v0, v4, :cond_5

    .line 115
    .line 116
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Ljava/lang/String;

    .line 121
    .line 122
    sput-object p0, Lzm5;->e:Ljava/lang/String;

    .line 123
    .line 124
    goto/16 :goto_5

    .line 125
    .line 126
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_b

    .line 131
    .line 132
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const/16 v0, 0x40

    .line 137
    .line 138
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_6

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_a

    .line 161
    .line 162
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 167
    .line 168
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 169
    .line 170
    if-nez v1, :cond_8

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_8
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataPaths()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-nez v1, :cond_9

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_9
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :catch_0
    const-string p0, "CustomTabsHelper"

    .line 192
    .line 193
    const-string v0, "Runtime exception while getting specialized handlers"

    .line 194
    .line 195
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :cond_a
    :goto_3
    invoke-static {v6, v3}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_b

    .line 203
    .line 204
    sput-object v3, Lzm5;->e:Ljava/lang/String;

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_b
    :goto_4
    const-string p0, "com.android.chrome"

    .line 208
    .line 209
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_c

    .line 214
    .line 215
    sput-object p0, Lzm5;->e:Ljava/lang/String;

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_c
    const-string p0, "com.chrome.beta"

    .line 219
    .line 220
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_d

    .line 225
    .line 226
    sput-object p0, Lzm5;->e:Ljava/lang/String;

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_d
    const-string p0, "com.chrome.dev"

    .line 230
    .line 231
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_e

    .line 236
    .line 237
    sput-object p0, Lzm5;->e:Ljava/lang/String;

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_e
    const-string p0, "com.google.android.apps.chrome"

    .line 241
    .line 242
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_f

    .line 247
    .line 248
    sput-object p0, Lzm5;->e:Ljava/lang/String;

    .line 249
    .line 250
    :cond_f
    :goto_5
    sget-object p0, Lzm5;->e:Ljava/lang/String;

    .line 251
    .line 252
    return-object p0
.end method

.method public static q()Lpw5;
    .locals 4

    .line 1
    const-string v0, "folders_list_sort_options"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :goto_0
    const-string v0, ":"

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Lxk3;->Companion:Lwk3;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lxk3;->access$getDefault$cp()Lxk3;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v2, Lvk3;->Companion:Luk3;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lvk3;->access$getDefault$cp()Lvk3;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_1
    invoke-static {v1, v0}, Lai8;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lxk3;->valueOf(Ljava/lang/String;)Lxk3;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v0}, Lai8;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lvk3;->valueOf(Ljava/lang/String;)Lvk3;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Lpw5;

    .line 76
    .line 77
    invoke-direct {v1, v2, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object v1
.end method

.method public static r(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Assertion failed: "

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "FirebaseDatabase"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static s(Z)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {v0, p0}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static t(ILjava/lang/CharSequence;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    packed-switch p0, :pswitch_data_1

    .line 15
    .line 16
    .line 17
    packed-switch p0, :pswitch_data_2

    .line 18
    .line 19
    .line 20
    packed-switch p0, :pswitch_data_3

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getVersion()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;->getId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_1
    return v0
.end method

.method public static v(Landroid/widget/EdgeEffect;FF)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lls2;->c(Landroid/widget/EdgeEffect;FF)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public static w([Ljava/lang/String;)Lfd4;
    .locals 12

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    if-lt v0, v1, :cond_b

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    add-int/lit8 v0, v0, -0x2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    :cond_0
    if-ltz v0, :cond_a

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lov2;->a:Lov2;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    array-length v4, p0

    .line 22
    if-lt v0, v4, :cond_2

    .line 23
    .line 24
    invoke-static {p0}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    if-ne v0, v3, :cond_3

    .line 30
    .line 31
    sub-int/2addr v4, v3

    .line 32
    aget-object v0, p0, v4

    .line 33
    .line 34
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    sub-int v0, v4, v0

    .line 45
    .line 46
    :goto_0
    if-ge v0, v4, :cond_4

    .line 47
    .line 48
    aget-object v6, p0, v0

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    move-object v0, v5

    .line 57
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    .line 58
    .line 59
    const/16 v5, 0xa

    .line 60
    .line 61
    invoke-static {v0, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_9

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Ljava/lang/String;

    .line 83
    .line 84
    const/16 v6, 0x7c

    .line 85
    .line 86
    const/4 v7, 0x6

    .line 87
    invoke-static {v6, v1, v7, v5}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-lez v6, :cond_8

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    sub-int/2addr v7, v3

    .line 98
    if-ge v6, v7, :cond_8

    .line 99
    .line 100
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    new-instance v6, Ljava/io/File;

    .line 111
    .line 112
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-nez v8, :cond_7

    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_6

    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    const-wide/16 v10, 0x0

    .line 132
    .line 133
    cmp-long v8, v8, v10

    .line 134
    .line 135
    if-lez v8, :cond_5

    .line 136
    .line 137
    new-instance v8, Lad4;

    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 140
    .line 141
    .line 142
    move-result-wide v9

    .line 143
    invoke-direct {v8, v7, v5, v9, v10}, Lad4;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    const-string p0, "Empty APK file: "

    .line 151
    .line 152
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    return-object v2

    .line 160
    :cond_6
    const-string p0, "APK file not found: "

    .line 161
    .line 162
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    return-object v2

    .line 170
    :cond_7
    const-string p0, "Blank APK name"

    .line 171
    .line 172
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-object v2

    .line 176
    :cond_8
    const-string p0, "Invalid APK argument"

    .line 177
    .line 178
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-object v2

    .line 182
    :cond_9
    new-instance v0, Lfd4;

    .line 183
    .line 184
    aget-object v1, p0, v1

    .line 185
    .line 186
    aget-object p0, p0, v3

    .line 187
    .line 188
    invoke-direct {v0, v1, p0, v4}, Lfd4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 189
    .line 190
    .line 191
    return-object v0

    .line 192
    :cond_a
    const-string p0, "Requested element count "

    .line 193
    .line 194
    const-string v1, " is less than zero."

    .line 195
    .line 196
    invoke-static {v0, p0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return-object v2

    .line 204
    :cond_b
    const-string p0, "Expected installer package, target package, and at least one APK file"

    .line 205
    .line 206
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-object v2
.end method

.method public static x(Ljava/lang/String;)Lax5;
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_8

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_7

    .line 16
    .line 17
    const-string v3, "ns"

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, -0x1

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    const-string v3, "\\."

    .line 28
    .line 29
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    aget-object v3, v3, v4

    .line 34
    .line 35
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 36
    .line 37
    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_0
    :goto_0
    new-instance v6, Lxj6;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    .line 52
    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iput-object v2, v6, Lxj6;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v2, 0x1

    .line 63
    if-eq v0, v5, :cond_3

    .line 64
    .line 65
    const-string v7, "https"

    .line 66
    .line 67
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_1

    .line 72
    .line 73
    const-string v7, "wss"

    .line 74
    .line 75
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    :cond_1
    move v4, v2

    .line 82
    :cond_2
    iput-boolean v4, v6, Lxj6;->b:Z

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v4, v6, Lxj6;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v4, ":"

    .line 95
    .line 96
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, v6, Lxj6;->a:Ljava/lang/String;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    iput-boolean v2, v6, Lxj6;->b:Z

    .line 110
    .line 111
    :goto_1
    iput-object v3, v6, Lxj6;->c:Ljava/lang/String;

    .line 112
    .line 113
    const-string v0, "//"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eq v0, v5, :cond_6

    .line 120
    .line 121
    add-int/lit8 v0, v0, 0x2

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "/"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eq v1, v5, :cond_5

    .line 134
    .line 135
    const-string v3, "?"

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eq v3, v5, :cond_4

    .line 142
    .line 143
    add-int/2addr v1, v2

    .line 144
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    goto :goto_2

    .line 149
    :cond_4
    add-int/2addr v1, v2

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    goto :goto_2

    .line 155
    :cond_5
    const-string v0, ""

    .line 156
    .line 157
    :goto_2
    const-string v1, "+"

    .line 158
    .line 159
    const-string v2, " "

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Lui8;->b(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v1, Lax5;

    .line 169
    .line 170
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v2, Lgy5;

    .line 174
    .line 175
    invoke-direct {v2, v0}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iput-object v2, v1, Lax5;->b:Lgy5;

    .line 179
    .line 180
    iput-object v6, v1, Lax5;->a:Lxj6;

    .line 181
    .line 182
    return-object v1

    .line 183
    :cond_6
    new-instance v0, Lxc2;

    .line 184
    .line 185
    const-string v1, "Firebase Database URL is missing URL scheme"

    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 192
    .line 193
    const-string v1, "Database URL does not specify a valid host"

    .line 194
    .line 195
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 200
    .line 201
    const-string v1, "Database URL does not specify a URL scheme"

    .line 202
    .line 203
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_3
    new-instance v1, Lxc2;

    .line 208
    .line 209
    const-string v2, "Invalid Firebase Database url specified: "

    .line 210
    .line 211
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    throw v1
.end method

.method public static y(Ljava/nio/MappedByteBuffer;)Lof5;
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, 0x4

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const v1, 0xffff

    .line 24
    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "Cannot read metadata."

    .line 31
    .line 32
    if-gt v0, v1, :cond_5

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/lit8 v1, v1, 0x6

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    move v4, v1

    .line 45
    :goto_0
    const-wide v5, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const-wide/16 v7, -0x1

    .line 51
    .line 52
    if-ge v4, v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    add-int/lit8 v10, v10, 0x4

    .line 63
    .line 64
    invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    int-to-long v10, v10

    .line 72
    and-long/2addr v10, v5

    .line 73
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    add-int/lit8 v12, v12, 0x4

    .line 78
    .line 79
    invoke-virtual {p0, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    .line 81
    .line 82
    const v12, 0x6d657461

    .line 83
    .line 84
    .line 85
    if-ne v12, v9, :cond_0

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move-wide v10, v7

    .line 92
    :goto_1
    cmp-long v0, v10, v7

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    int-to-long v7, v0

    .line 101
    sub-long v7, v10, v7

    .line 102
    .line 103
    long-to-int v0, v7

    .line 104
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    add-int/2addr v4, v0

    .line 109
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/lit8 v0, v0, 0xc

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    int-to-long v7, v0

    .line 126
    and-long/2addr v7, v5

    .line 127
    :goto_2
    int-to-long v12, v1

    .line 128
    cmp-long v0, v12, v7

    .line 129
    .line 130
    if-gez v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    int-to-long v12, v4

    .line 141
    and-long/2addr v12, v5

    .line 142
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 143
    .line 144
    .line 145
    const v4, 0x456d6a69

    .line 146
    .line 147
    .line 148
    if-eq v4, v0, :cond_3

    .line 149
    .line 150
    const v4, 0x656d6a69

    .line 151
    .line 152
    .line 153
    if-ne v4, v0, :cond_2

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    :goto_3
    add-long/2addr v12, v10

    .line 160
    long-to-int v0, v12

    .line 161
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    .line 163
    .line 164
    new-instance v0, Lof5;

    .line 165
    .line 166
    invoke-direct {v0}, La65;-><init>()V

    .line 167
    .line 168
    .line 169
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 170
    .line 171
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    add-int/2addr v2, v1

    .line 187
    iput-object p0, v0, La65;->d:Ljava/lang/Object;

    .line 188
    .line 189
    iput v2, v0, La65;->a:I

    .line 190
    .line 191
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    sub-int/2addr v2, p0

    .line 196
    iput v2, v0, La65;->b:I

    .line 197
    .line 198
    iget-object p0, v0, La65;->d:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 201
    .line 202
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    iput p0, v0, La65;->c:I

    .line 207
    .line 208
    return-object v0

    .line 209
    :cond_4
    invoke-static {v3}, Ly5;->m(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return-object v2

    .line 213
    :cond_5
    invoke-static {v3}, Ly5;->m(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-object v2
.end method

.method public static z(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "SHA-1"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "UTF-8"

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    const-string p0, "UTF-8 encoding is required for Firebase Database to run!"

    .line 30
    .line 31
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :goto_0
    const-string v1, "Missing SHA-1 MessageDigest provider."

    .line 36
    .line 37
    invoke-static {v1, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method
