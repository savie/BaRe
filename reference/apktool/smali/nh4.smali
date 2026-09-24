.class public Lnh4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnx1;
.implements Lto2;
.implements Lal6;
.implements Lo98;
.implements Les9;
.implements Lgt9;
.implements Ly1a;


# static fields
.field public static final synthetic b:Lnh4;

.field public static final c:Lnh4;

.field public static final d:Lnh4;

.field public static final e:[C


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnh4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnh4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lnh4;->b:Lnh4;

    .line 8
    .line 9
    new-instance v0, Lnh4;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lnh4;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lnh4;->c:Lnh4;

    .line 16
    .line 17
    new-instance v0, Lu13;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lu13;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lnh4;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lnh4;-><init>(Lu13;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lnh4;->d:Lnh4;

    .line 28
    .line 29
    const/16 v0, 0x3e

    .line 30
    .line 31
    new-array v0, v0, [C

    .line 32
    .line 33
    fill-array-data v0, :array_0

    .line 34
    .line 35
    .line 36
    sput-object v0, Lnh4;->e:[C

    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
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
    .end array-data
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lnh4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lu13;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lnh4;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final a()Lq63;
    .locals 3

    .line 1
    new-instance v0, Lq63;

    .line 2
    .line 3
    sget-object v1, Lry5;->u:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v2, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lry5;->o:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "wifi_networks.wfi"

    .line 14
    .line 15
    invoke-static {v1, v2}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v0, v1, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static final b([BI)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x8

    .line 5
    .line 6
    if-ge v2, v3, :cond_0

    .line 7
    .line 8
    shl-long/2addr v0, v3

    .line 9
    add-int v3, p1, v2

    .line 10
    .line 11
    aget-byte v3, p0, v3

    .line 12
    .line 13
    int-to-long v3, v3

    .line 14
    const-wide/16 v5, 0xff

    .line 15
    .line 16
    and-long/2addr v3, v5

    .line 17
    or-long/2addr v0, v3

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-wide v0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 16

    .line 1
    new-instance v0, Ljy8;

    .line 2
    .line 3
    invoke-direct {v0}, Ljy8;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 7
    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move-object/from16 v2, p0

    .line 12
    .line 13
    move-object/from16 v4, p1

    .line 14
    .line 15
    move-object/from16 v5, p2

    .line 16
    .line 17
    invoke-direct/range {v1 .. v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2}, Ljy8;->d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v5, "processToken: loginResult="

    .line 30
    .line 31
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "CloudOperationsImpl"

    .line 42
    .line 43
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    instance-of v3, v3, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-static {v0}, Leh1;->d(Ljh1;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v2, 0x0

    .line 64
    invoke-static {v0, v2}, Leh1;->c(Ljh1;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/16 v6, 0xd

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-static/range {v1 .. v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v3}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    sget-object v4, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->Companion:Li58;

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    iget-object v0, v0, Ljy8;->d:Ldd1;

    .line 89
    .line 90
    invoke-static {v0, v1}, Li58;->c(Ldd1;Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "CloudServiceId = "

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const/4 v8, 0x4

    .line 110
    const/4 v9, 0x0

    .line 111
    const-string v5, "CloudOperationsImpl"

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return v2

    .line 118
    :cond_2
    :goto_0
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 119
    .line 120
    const-string v0, "Folder creation failed ("

    .line 121
    .line 122
    const-string v1, ")!"

    .line 123
    .line 124
    invoke-static {v0, v3, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    const/4 v14, 0x4

    .line 129
    const/4 v15, 0x0

    .line 130
    const-string v11, "CloudOperationsImpl"

    .line 131
    .line 132
    const/4 v13, 0x0

    .line 133
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    return v2
.end method

.method public static k(IZZ[CLjava/util/Random;)Ljava/lang/String;
    .locals 17

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    if-ltz v0, :cond_1b

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    array-length v4, v1

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v0, "The chars array must not be empty"

    .line 22
    .line 23
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 28
    const/16 v5, 0x20

    .line 29
    .line 30
    const v6, 0x10ffff

    .line 31
    .line 32
    .line 33
    const/16 v7, 0x7b

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    array-length v8, v1

    .line 38
    move v9, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    if-nez p1, :cond_4

    .line 41
    .line 42
    if-nez p2, :cond_4

    .line 43
    .line 44
    move v9, v4

    .line 45
    move v8, v6

    .line 46
    goto :goto_1

    .line 47
    :cond_4
    move v9, v5

    .line 48
    move v8, v7

    .line 49
    :goto_1
    if-le v8, v6, :cond_5

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_5
    move v6, v8

    .line 53
    :goto_2
    if-nez v1, :cond_c

    .line 54
    .line 55
    const/16 v8, 0x7f

    .line 56
    .line 57
    if-gt v6, v8, :cond_c

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    if-eqz p2, :cond_6

    .line 62
    .line 63
    if-lt v6, v7, :cond_6

    .line 64
    .line 65
    sget-object v1, Lnh4;->e:[C

    .line 66
    .line 67
    invoke-static {v0, v4, v4, v1, v2}, Lnh4;->k(IZZ[CLjava/util/Random;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :cond_6
    const/16 v8, 0x30

    .line 73
    .line 74
    if-eqz p2, :cond_7

    .line 75
    .line 76
    if-le v6, v8, :cond_8

    .line 77
    .line 78
    :cond_7
    const/16 v10, 0x41

    .line 79
    .line 80
    if-eqz p1, :cond_9

    .line 81
    .line 82
    if-le v6, v10, :cond_8

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_8
    const-string v0, ") must be greater then (48) for generating digits or greater then (65) for generating letters."

    .line 86
    .line 87
    const-string v1, "Parameter end ("

    .line 88
    .line 89
    invoke-static {v6, v1, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v3

    .line 97
    :cond_9
    :goto_3
    if-eqz p1, :cond_a

    .line 98
    .line 99
    if-eqz p2, :cond_a

    .line 100
    .line 101
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    goto :goto_4

    .line 110
    :cond_a
    if-eqz p2, :cond_b

    .line 111
    .line 112
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    const/16 v7, 0x3a

    .line 117
    .line 118
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    goto :goto_4

    .line 123
    :cond_b
    if-eqz p1, :cond_c

    .line 124
    .line 125
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    :cond_c
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    .line 137
    .line 138
    sub-int v8, v6, v9

    .line 139
    .line 140
    invoke-static {v8}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    rsub-int/lit8 v8, v8, 0x20

    .line 145
    .line 146
    int-to-long v10, v0

    .line 147
    int-to-long v12, v8

    .line 148
    mul-long/2addr v10, v12

    .line 149
    const-wide/16 v12, 0x3

    .line 150
    .line 151
    add-long/2addr v10, v12

    .line 152
    const-wide/16 v12, 0x5

    .line 153
    .line 154
    div-long/2addr v10, v12

    .line 155
    const-wide/16 v12, 0xa

    .line 156
    .line 157
    add-long/2addr v10, v12

    .line 158
    const-wide/32 v12, 0x199999a3

    .line 159
    .line 160
    .line 161
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 162
    .line 163
    .line 164
    move-result-wide v10

    .line 165
    long-to-int v10, v10

    .line 166
    if-lez v10, :cond_1a

    .line 167
    .line 168
    const v11, 0xfffffff

    .line 169
    .line 170
    .line 171
    if-gt v10, v11, :cond_d

    .line 172
    .line 173
    new-array v10, v10, [B

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_d
    new-array v10, v11, [B

    .line 177
    .line 178
    :goto_5
    const-string v11, "random"

    .line 179
    .line 180
    invoke-static {v2, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v10}, Ljava/util/Random;->nextBytes([B)V

    .line 184
    .line 185
    .line 186
    move v11, v4

    .line 187
    :goto_6
    add-int/lit8 v12, v0, -0x1

    .line 188
    .line 189
    if-eqz v0, :cond_19

    .line 190
    .line 191
    if-gt v8, v5, :cond_18

    .line 192
    .line 193
    if-lez v8, :cond_18

    .line 194
    .line 195
    move v13, v4

    .line 196
    move v14, v13

    .line 197
    :goto_7
    const/4 v15, 0x1

    .line 198
    if-ge v13, v8, :cond_f

    .line 199
    .line 200
    move-object/from16 v16, v3

    .line 201
    .line 202
    shr-int/lit8 v3, v11, 0x3

    .line 203
    .line 204
    array-length v4, v10

    .line 205
    if-lt v3, v4, :cond_e

    .line 206
    .line 207
    invoke-virtual {v2, v10}, Ljava/util/Random;->nextBytes([B)V

    .line 208
    .line 209
    .line 210
    const/4 v11, 0x0

    .line 211
    :cond_e
    and-int/lit8 v3, v11, 0x7

    .line 212
    .line 213
    rsub-int/lit8 v4, v3, 0x8

    .line 214
    .line 215
    sub-int v5, v8, v13

    .line 216
    .line 217
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    shl-int v5, v14, v4

    .line 222
    .line 223
    shr-int/lit8 v14, v11, 0x3

    .line 224
    .line 225
    aget-byte v14, v10, v14

    .line 226
    .line 227
    shr-int v3, v14, v3

    .line 228
    .line 229
    shl-int v14, v15, v4

    .line 230
    .line 231
    sub-int/2addr v14, v15

    .line 232
    and-int/2addr v3, v14

    .line 233
    or-int v14, v5, v3

    .line 234
    .line 235
    add-int/2addr v13, v4

    .line 236
    add-int/2addr v11, v4

    .line 237
    move-object/from16 v3, v16

    .line 238
    .line 239
    const/4 v4, 0x0

    .line 240
    const/16 v5, 0x20

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_f
    move-object/from16 v16, v3

    .line 244
    .line 245
    add-int/2addr v14, v9

    .line 246
    if-lt v14, v6, :cond_11

    .line 247
    .line 248
    :cond_10
    :goto_8
    move-object/from16 v3, v16

    .line 249
    .line 250
    const/4 v4, 0x0

    .line 251
    const/16 v5, 0x20

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_11
    if-nez v1, :cond_12

    .line 255
    .line 256
    invoke-static {v14}, Ljava/lang/Character;->getType(I)I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_10

    .line 261
    .line 262
    const/16 v4, 0x12

    .line 263
    .line 264
    if-eq v3, v4, :cond_10

    .line 265
    .line 266
    const/16 v4, 0x13

    .line 267
    .line 268
    if-eq v3, v4, :cond_10

    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_12
    aget-char v14, v1, v14

    .line 272
    .line 273
    :goto_9
    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-nez v12, :cond_13

    .line 278
    .line 279
    if-le v3, v15, :cond_13

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_13
    if-eqz p1, :cond_14

    .line 283
    .line 284
    invoke-static {v14}, Ljava/lang/Character;->isLetter(I)Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-nez v4, :cond_16

    .line 289
    .line 290
    :cond_14
    if-eqz p2, :cond_15

    .line 291
    .line 292
    invoke-static {v14}, Ljava/lang/Character;->isDigit(I)Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-nez v4, :cond_16

    .line 297
    .line 298
    :cond_15
    if-nez p1, :cond_10

    .line 299
    .line 300
    if-nez p2, :cond_10

    .line 301
    .line 302
    :cond_16
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const/4 v4, 0x2

    .line 306
    if-ne v3, v4, :cond_17

    .line 307
    .line 308
    add-int/lit8 v0, v0, -0x2

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_17
    move v0, v12

    .line 312
    goto :goto_8

    .line 313
    :cond_18
    move-object/from16 v16, v3

    .line 314
    .line 315
    const-string v0, "number of bits must be between 1 and 32"

    .line 316
    .line 317
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return-object v16

    .line 321
    :cond_19
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    return-object v0

    .line 326
    :cond_1a
    move-object/from16 v16, v3

    .line 327
    .line 328
    const-string v0, "cacheSize must be positive"

    .line 329
    .line 330
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-object v16

    .line 334
    :cond_1b
    move-object/from16 v16, v3

    .line 335
    .line 336
    const-string v1, "Requested random string length "

    .line 337
    .line 338
    const-string v2, " is less than 0."

    .line 339
    .line 340
    invoke-static {v0, v1, v2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    return-object v16
.end method

.method public static l(Lp0;)I
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7f

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    and-int/2addr v0, v1

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    shl-int/lit8 v2, v2, 0x8

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    add-int/2addr v2, v3

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-eqz v2, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    new-instance p0, Lo1;

    .line 29
    .line 30
    const-string v0, "The indefinite length form is not (yet) supported!"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Lo1;

    .line 38
    .line 39
    const-string v1, "Unable to read the length of the ASN.1 object."

    .line 40
    .line 41
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, v1, p0}, Lo1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public static m(Lp0;)Lm2;
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-byte v1, v0

    .line 6
    and-int/lit16 v2, v1, 0xc0

    .line 7
    .line 8
    invoke-static {}, Ln2;->values()[Ln2;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    array-length v4, v3

    .line 13
    const/4 v5, 0x0

    .line 14
    move v6, v5

    .line 15
    :goto_0
    if-ge v6, v4, :cond_6

    .line 16
    .line 17
    aget-object v7, v3, v6

    .line 18
    .line 19
    iget v8, v7, Ln2;->a:I

    .line 20
    .line 21
    if-ne v8, v2, :cond_5

    .line 22
    .line 23
    and-int/lit8 v1, v1, 0x20

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Ld0;->b:Ld0;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    sget-object v1, Ld0;->c:Ld0;

    .line 31
    .line 32
    :goto_1
    and-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    const/16 v2, 0x1e

    .line 35
    .line 36
    if-gt v0, v2, :cond_1

    .line 37
    .line 38
    invoke-static {v7, v0}, Lm2;->b(Ln2;I)Lm2;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, v1}, Lm2;->a(Ld0;)Lm2;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    and-int/lit8 v2, v0, 0x7f

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    :goto_2
    if-ltz v0, :cond_2

    .line 56
    .line 57
    and-int/lit16 v2, v0, 0x80

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    and-int/lit8 v0, v0, 0x7f

    .line 62
    .line 63
    or-int/2addr v0, v5

    .line 64
    shl-int/lit8 v5, v0, 0x7

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    if-ltz v0, :cond_3

    .line 72
    .line 73
    and-int/lit8 p0, v0, 0x7f

    .line 74
    .line 75
    or-int/2addr p0, v5

    .line 76
    invoke-static {v7, p0}, Lm2;->b(Ln2;I)Lm2;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0, v1}, Lm2;->a(Ld0;)Lm2;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_3
    new-instance p0, Lo1;

    .line 86
    .line 87
    const-string v0, "EOF found inside tag value."

    .line 88
    .line 89
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_4
    new-instance p0, Lo1;

    .line 94
    .line 95
    const-string v0, "corrupted stream - invalid high tag number found"

    .line 96
    .line 97
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    const-string v0, "Could not parse ASN.1 Tag Class (should be impossible)"

    .line 107
    .line 108
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    new-instance v0, Lo1;

    .line 114
    .line 115
    const-string v1, "Unable to parse ASN.1 tag"

    .line 116
    .line 117
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {v0, v1, p0}, Lo1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    throw v0
.end method

.method public static n(ILp0;)[B
    .locals 4

    .line 1
    :try_start_0
    new-array v0, p0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_0

    .line 5
    .line 6
    sub-int v2, p0, v1

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/4 v3, -0x1

    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    add-int/2addr v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-object v0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Lo1;

    .line 20
    .line 21
    const-string v0, "Unable to read the value of the ASN.1 object"

    .line 22
    .line 23
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {p1, v0, p0}, Lo1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public static s(ILlb4;Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget v0, p1, Llb4;->a:I

    .line 2
    .line 3
    iget-object v1, p1, Llb4;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lgk1;

    .line 6
    .line 7
    ushr-int/lit8 v2, v0, 0x3

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x7

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x3

    .line 14
    if-eqz v0, :cond_b

    .line 15
    .line 16
    if-eq v0, v4, :cond_a

    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    if-eq v0, v6, :cond_9

    .line 20
    .line 21
    const-string v6, "Protocol message end-group tag did not match expected tag."

    .line 22
    .line 23
    if-eq v0, v5, :cond_3

    .line 24
    .line 25
    const/4 v7, 0x4

    .line 26
    if-eq v0, v7, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x5

    .line 29
    if-ne v0, p0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Llb4;->f(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lgk1;->N()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    check-cast p2, Ll89;

    .line 39
    .line 40
    shl-int/lit8 v0, v2, 0x3

    .line 41
    .line 42
    or-int/2addr p0, v0

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2, p0, p1}, Ll89;->c(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return v4

    .line 51
    :cond_0
    invoke-static {}, Lp79;->a()Lr79;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0

    .line 56
    :cond_1
    if-eqz p0, :cond_2

    .line 57
    .line 58
    return v3

    .line 59
    :cond_2
    new-instance p0, Lp79;

    .line 60
    .line 61
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    invoke-static {}, Ll89;->e()Ll89;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    shl-int/lit8 v1, v2, 0x3

    .line 70
    .line 71
    or-int/lit8 v2, v1, 0x4

    .line 72
    .line 73
    add-int/2addr p0, v4

    .line 74
    const/16 v7, 0x64

    .line 75
    .line 76
    if-ge p0, v7, :cond_8

    .line 77
    .line 78
    :cond_4
    invoke-virtual {p1}, Llb4;->i()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    const v8, 0x7fffffff

    .line 83
    .line 84
    .line 85
    if-eq v7, v8, :cond_5

    .line 86
    .line 87
    invoke-static {p0, p1, v0}, Lnh4;->s(ILlb4;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_4

    .line 92
    .line 93
    :cond_5
    iget p0, p1, Llb4;->a:I

    .line 94
    .line 95
    if-ne v2, p0, :cond_7

    .line 96
    .line 97
    iget-boolean p0, v0, Ll89;->e:Z

    .line 98
    .line 99
    if-eqz p0, :cond_6

    .line 100
    .line 101
    iput-boolean v3, v0, Ll89;->e:Z

    .line 102
    .line 103
    :cond_6
    check-cast p2, Ll89;

    .line 104
    .line 105
    or-int/lit8 p0, v1, 0x3

    .line 106
    .line 107
    invoke-virtual {p2, p0, v0}, Ll89;->c(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return v4

    .line 111
    :cond_7
    new-instance p0, Lp79;

    .line 112
    .line 113
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_8
    new-instance p0, Lp79;

    .line 118
    .line 119
    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_9
    invoke-virtual {p1}, Llb4;->y()Lt69;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p2, Ll89;

    .line 130
    .line 131
    shl-int/lit8 p1, v2, 0x3

    .line 132
    .line 133
    or-int/2addr p1, v6

    .line 134
    invoke-virtual {p2, p1, p0}, Ll89;->c(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return v4

    .line 138
    :cond_a
    invoke-virtual {p1, v4}, Llb4;->f(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lgk1;->T()J

    .line 142
    .line 143
    .line 144
    move-result-wide p0

    .line 145
    check-cast p2, Ll89;

    .line 146
    .line 147
    shl-int/lit8 v0, v2, 0x3

    .line 148
    .line 149
    or-int/2addr v0, v4

    .line 150
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p2, v0, p0}, Ll89;->c(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return v4

    .line 158
    :cond_b
    invoke-virtual {p1, v3}, Llb4;->f(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lgk1;->U()J

    .line 162
    .line 163
    .line 164
    move-result-wide p0

    .line 165
    check-cast p2, Ll89;

    .line 166
    .line 167
    shl-int/lit8 v0, v2, 0x3

    .line 168
    .line 169
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p2, v0, p0}, Ll89;->c(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    return v4
.end method

.method public static t([BII)Z
    .locals 8

    .line 1
    :goto_0
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    aget-byte v0, p0, p1

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    if-lt p1, p2, :cond_1

    .line 12
    .line 13
    :goto_1
    move v2, v0

    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_1
    :goto_2
    if-lt p1, p2, :cond_2

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 20
    .line 21
    aget-byte v2, p0, p1

    .line 22
    .line 23
    if-gez v2, :cond_c

    .line 24
    .line 25
    const/16 v3, -0x20

    .line 26
    .line 27
    const/16 v4, -0x41

    .line 28
    .line 29
    const/4 v5, -0x1

    .line 30
    if-ge v2, v3, :cond_5

    .line 31
    .line 32
    if-lt v1, p2, :cond_3

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_3
    const/16 v3, -0x3e

    .line 36
    .line 37
    if-lt v2, v3, :cond_4

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x2

    .line 40
    .line 41
    aget-byte v1, p0, v1

    .line 42
    .line 43
    if-le v1, v4, :cond_1

    .line 44
    .line 45
    :cond_4
    :goto_3
    move v2, v5

    .line 46
    goto :goto_4

    .line 47
    :cond_5
    const/16 v6, -0x10

    .line 48
    .line 49
    if-ge v2, v6, :cond_9

    .line 50
    .line 51
    add-int/lit8 v6, p2, -0x1

    .line 52
    .line 53
    if-lt v1, v6, :cond_6

    .line 54
    .line 55
    invoke-static {p0, v1, p2}, Lom9;->a([BII)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    goto :goto_4

    .line 60
    :cond_6
    add-int/lit8 v6, p1, 0x2

    .line 61
    .line 62
    aget-byte v1, p0, v1

    .line 63
    .line 64
    if-gt v1, v4, :cond_4

    .line 65
    .line 66
    const/16 v7, -0x60

    .line 67
    .line 68
    if-ne v2, v3, :cond_7

    .line 69
    .line 70
    if-lt v1, v7, :cond_4

    .line 71
    .line 72
    :cond_7
    const/16 v3, -0x13

    .line 73
    .line 74
    if-ne v2, v3, :cond_8

    .line 75
    .line 76
    if-ge v1, v7, :cond_4

    .line 77
    .line 78
    :cond_8
    add-int/lit8 p1, p1, 0x3

    .line 79
    .line 80
    aget-byte v1, p0, v6

    .line 81
    .line 82
    if-le v1, v4, :cond_1

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_9
    add-int/lit8 v3, p2, -0x2

    .line 86
    .line 87
    if-lt v1, v3, :cond_a

    .line 88
    .line 89
    invoke-static {p0, v1, p2}, Lom9;->a([BII)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    goto :goto_4

    .line 94
    :cond_a
    add-int/lit8 v3, p1, 0x2

    .line 95
    .line 96
    aget-byte v1, p0, v1

    .line 97
    .line 98
    if-gt v1, v4, :cond_4

    .line 99
    .line 100
    shl-int/lit8 v2, v2, 0x1c

    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x70

    .line 103
    .line 104
    add-int/2addr v1, v2

    .line 105
    shr-int/lit8 v1, v1, 0x1e

    .line 106
    .line 107
    if-nez v1, :cond_4

    .line 108
    .line 109
    add-int/lit8 v1, p1, 0x3

    .line 110
    .line 111
    aget-byte v2, p0, v3

    .line 112
    .line 113
    if-gt v2, v4, :cond_4

    .line 114
    .line 115
    add-int/lit8 p1, p1, 0x4

    .line 116
    .line 117
    aget-byte v1, p0, v1

    .line 118
    .line 119
    if-le v1, v4, :cond_1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_4
    if-nez v2, :cond_b

    .line 123
    .line 124
    const/4 p0, 0x1

    .line 125
    return p0

    .line 126
    :cond_b
    return v0

    .line 127
    :cond_c
    move p1, v1

    .line 128
    goto :goto_2
.end method

.method public static u(Ljava/lang/Object;)Ll89;
    .locals 2

    .line 1
    check-cast p0, Lk79;

    .line 2
    .line 3
    iget-object v0, p0, Lk79;->zzb:Ll89;

    .line 4
    .line 5
    sget-object v1, Ll89;->f:Ll89;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ll89;->e()Ll89;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lk79;->zzb:Ll89;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ldq9;

    .line 2
    .line 3
    invoke-virtual {p1}, Lmg9;->b()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    if-le p0, p1, :cond_1

    .line 3
    .line 4
    const-string p0, "FirebaseCrashlytics"

    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public synthetic e(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public f(Lvm4;)Lpt9;
    .locals 3

    .line 1
    iget p0, p0, Lnh4;->a:I

    .line 2
    .line 3
    sparse-switch p0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lns9;

    .line 7
    .line 8
    iget-object p0, p1, Lns9;->d:Lpt9;

    .line 9
    .line 10
    sget-object p1, Lps9;->b:[I

    .line 11
    .line 12
    iget v0, p0, Lpt9;->d:I

    .line 13
    .line 14
    invoke-static {v0}, Ldj7;->A(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    aget p1, p1, v0

    .line 19
    .line 20
    return-object p0

    .line 21
    :sswitch_0
    check-cast p1, Lck9;

    .line 22
    .line 23
    invoke-static {}, Ld1a;->w()Lc1a;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object v0, p1, Lck9;->e:Lkm8;

    .line 28
    .line 29
    iget-object v0, v0, Lkm8;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ld2a;

    .line 32
    .line 33
    invoke-virtual {v0}, Ld2a;->b()[B

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    array-length v2, v0

    .line 39
    invoke-static {v0, v1, v2}, Lt69;->g([BII)Lx69;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lj79;->c()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lj79;->b:Lk79;

    .line 47
    .line 48
    check-cast v1, Ld1a;

    .line 49
    .line 50
    invoke-static {v1, v0}, Ld1a;->v(Ld1a;Lx69;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Ld1a;

    .line 58
    .line 59
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget-object v0, p1, Lck9;->d:Lik9;

    .line 64
    .line 65
    iget-object v0, v0, Lik9;->a:Lsg9;

    .line 66
    .line 67
    invoke-static {v0}, Lao9;->b(Lsg9;)Lr0a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object p1, p1, Lck9;->k:Ljava/lang/Integer;

    .line 72
    .line 73
    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :sswitch_1
    check-cast p1, Lei9;

    .line 82
    .line 83
    invoke-static {}, Ll0a;->w()Lk0a;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    iget-object v0, p1, Lei9;->d:Ldi9;

    .line 88
    .line 89
    invoke-static {v0}, Lki9;->b(Ldi9;)Lo0a;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lj79;->c()V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lj79;->b:Lk79;

    .line 97
    .line 98
    check-cast v1, Ll0a;

    .line 99
    .line 100
    invoke-static {v1, v0}, Ll0a;->v(Ll0a;Lo0a;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Ll0a;

    .line 108
    .line 109
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    iget-object v0, p1, Lei9;->d:Ldi9;

    .line 114
    .line 115
    iget-object v0, v0, Ldi9;->a:Lci9;

    .line 116
    .line 117
    sget-object v1, Lci9;->c:Lci9;

    .line 118
    .line 119
    if-eq v1, v0, :cond_1

    .line 120
    .line 121
    sget-object v1, Lci9;->d:Lci9;

    .line 122
    .line 123
    if-ne v1, v0, :cond_0

    .line 124
    .line 125
    sget-object v0, Lr0a;->e:Lr0a;

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 129
    .line 130
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v0, "Unable to serialize variant: "

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_1
    sget-object v0, Lr0a;->c:Lr0a;

    .line 145
    .line 146
    :goto_0
    iget-object p1, p1, Lei9;->f:Ljava/lang/Integer;

    .line 147
    .line 148
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 149
    .line 150
    const/4 v2, 0x5

    .line 151
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    nop

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public g(Lnr0;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lnh4;->d(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string p0, "FirebaseCrashlytics"

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public i(IZZ)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lxe6;->b:Lxe6;

    .line 2
    .line 3
    iget-object p0, p0, Lxe6;->a:Ljava/util/function/Supplier;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/Random;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, p2, p3, v0, p0}, Lnh4;->k(IZZ[CLjava/util/Random;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lnh4;->d(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string p0, "FirebaseCrashlytics"

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public p(Lbd9;)Lot9;
    .locals 3

    .line 1
    check-cast p1, Lsf9;

    .line 2
    .line 3
    invoke-static {}, Lmz9;->t()Llz9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Llz9;->f(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lfw9;->x()Lew9;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1}, Lsk9;->c(Lsf9;)Liw9;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0}, Lj79;->c()V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 24
    .line 25
    check-cast v2, Lfw9;

    .line 26
    .line 27
    invoke-static {v2, v1}, Lfw9;->w(Lfw9;Liw9;)V

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lsf9;->a:I

    .line 31
    .line 32
    invoke-virtual {v0}, Lj79;->c()V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 36
    .line 37
    check-cast v2, Lfw9;

    .line 38
    .line 39
    invoke-static {v2, v1}, Lfw9;->v(Lfw9;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lfw9;

    .line 47
    .line 48
    invoke-virtual {v0}, Lo69;->b()Lx69;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Llz9;->h(Lt69;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p1, Lsf9;->d:Lrf9;

    .line 56
    .line 57
    invoke-static {p1}, Lsk9;->b(Lrf9;)Lr0a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Llz9;->e(Lr0a;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lmz9;

    .line 69
    .line 70
    invoke-static {p0}, Lot9;->m(Lmz9;)Lot9;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public q(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lnh4;->d(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string p0, "FirebaseCrashlytics"

    .line 9
    .line 10
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public r(Ljava/lang/Exception;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    instance-of p0, p1, Lgv6;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lgv6;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p0, Lgv6;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lnh4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "RandomStringUtils [random="

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lxe6;->b:Lxe6;

    .line 19
    .line 20
    iget-object v0, v0, Lxe6;->a:Ljava/util/function/Supplier;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/Random;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "]"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
