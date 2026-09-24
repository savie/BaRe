.class public final Lix0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt36;
.implements Ljk8;
.implements Luc6;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lix0;->a:I

    packed-switch p1, :pswitch_data_0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 97
    new-array v0, p1, [I

    .line 98
    iput-object v0, p0, Lix0;->b:Ljava/lang/Object;

    .line 99
    new-array p1, p1, [I

    .line 100
    iput-object p1, p0, Lix0;->c:Ljava/lang/Object;

    return-void

    .line 101
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lix0;->b:Ljava/lang/Object;

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lix0;->c:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lix0;->a:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lix0;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 112
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lix0;->c:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lix0;->a:I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Lix0;->b:Ljava/lang/Object;

    .line 115
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lix0;->c:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 94
    iput p1, p0, Lix0;->a:I

    iput-object p2, p0, Lix0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lix0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 95
    iput p1, p0, Lix0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lf46;Landroidx/preference/PreferenceGroup;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lix0;->a:I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lix0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lix0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x3

    iput v0, p0, Lix0;->a:I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 106
    new-array v1, v0, [I

    iput-object v1, p0, Lix0;->b:Ljava/lang/Object;

    .line 107
    new-array v1, v0, [F

    iput-object v1, p0, Lix0;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 108
    iget-object v2, p0, Lix0;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 109
    iget-object v2, p0, Lix0;->c:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    iput v0, p0, Lix0;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lix0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lix0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    sget-object p0, Lgo9;->a:Lft7;

    .line 13
    .line 14
    iget-object p0, p0, Lft7;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_4

    .line 21
    .line 22
    new-instance p0, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 p2, 0x0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Llb9;

    .line 43
    .line 44
    iget v1, v0, Llb9;->d:I

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-boolean v0, v0, Llb9;->e:Z

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 70
    .line 71
    const-string p1, "KeyID "

    .line 72
    .line 73
    const-string p2, " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    .line 74
    .line 75
    invoke-static {v1, p1, p2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_2
    if-eqz p2, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const-string p0, "Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    .line 87
    .line 88
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    throw p0

    .line 93
    :cond_4
    :goto_1
    return-void
.end method

.method public static final h(Lrb;)Lix0;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lrb;->b:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lbd9;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :try_start_0
    instance-of v0, v1, Lqs9;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v0, v1

    .line 16
    check-cast v0, Lqs9;

    .line 17
    .line 18
    iget-object v0, v0, Lqs9;->a:Lot9;

    .line 19
    .line 20
    iget-object v0, v0, Lot9;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lmz9;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto/16 :goto_b

    .line 27
    .line 28
    :cond_1
    sget-object v0, Lxs9;->b:Lxs9;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lxs9;->d(Lbd9;)Lvt9;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lot9;

    .line 35
    .line 36
    iget-object v0, v0, Lot9;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lmz9;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0}, Lo69;->c()[B

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lnc8;->t0([B)Lbd9;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_1
    new-instance v0, Lik6;

    .line 49
    .line 50
    invoke-direct {v0}, Lik6;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v2, v0, Lik6;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Ljava/util/ArrayList;

    .line 56
    .line 57
    new-instance v3, Lgb9;

    .line 58
    .line 59
    invoke-direct {v3, v1}, Lgb9;-><init>(Lbd9;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lge;->f:Lge;

    .line 63
    .line 64
    iput-object v1, v3, Lgb9;->c:Lge;

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    iput-boolean v4, v3, Lgb9;->a:Z

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/4 v7, 0x0

    .line 78
    if-eqz v6, :cond_2

    .line 79
    .line 80
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Lgb9;

    .line 85
    .line 86
    iput-boolean v7, v6, Lgb9;->a:Z

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    iget-boolean v3, v0, Lik6;->b:Z

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    if-nez v3, :cond_11

    .line 96
    .line 97
    iput-boolean v4, v0, Lik6;->b:Z

    .line 98
    .line 99
    new-instance v3, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .line 107
    .line 108
    move v6, v7

    .line 109
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    sub-int/2addr v8, v4

    .line 114
    if-ge v6, v8, :cond_5

    .line 115
    .line 116
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    check-cast v8, Lgb9;

    .line 121
    .line 122
    iget-object v8, v8, Lgb9;->c:Lge;

    .line 123
    .line 124
    if-ne v8, v1, :cond_4

    .line 125
    .line 126
    add-int/lit8 v8, v6, 0x1

    .line 127
    .line 128
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    check-cast v8, Lgb9;

    .line 133
    .line 134
    iget-object v8, v8, Lgb9;->c:Lge;

    .line 135
    .line 136
    if-ne v8, v1, :cond_3

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_3
    const-string v0, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    .line 140
    .line 141
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-object v5

    .line 145
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    new-instance v6, Ljava/util/HashSet;

    .line 149
    .line 150
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    move-object v8, v5

    .line 158
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-eqz v9, :cond_f

    .line 163
    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    check-cast v9, Lgb9;

    .line 169
    .line 170
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object v10, v9, Lgb9;->b:Lbd9;

    .line 174
    .line 175
    iget-object v11, v9, Lgb9;->c:Lge;

    .line 176
    .line 177
    if-eqz v11, :cond_e

    .line 178
    .line 179
    if-ne v11, v1, :cond_9

    .line 180
    .line 181
    move v11, v7

    .line 182
    :cond_6
    if-eqz v11, :cond_8

    .line 183
    .line 184
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    if-eqz v12, :cond_7

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_7
    move v15, v11

    .line 196
    goto :goto_8

    .line 197
    :cond_8
    :goto_6
    sget-object v11, Lau9;->a:Ljava/nio/charset/Charset;

    .line 198
    .line 199
    move v11, v7

    .line 200
    :goto_7
    if-nez v11, :cond_6

    .line 201
    .line 202
    const/4 v11, 0x4

    .line 203
    invoke-static {v11}, Lrt9;->a(I)[B

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    aget-byte v12, v11, v7

    .line 208
    .line 209
    and-int/lit16 v12, v12, 0xff

    .line 210
    .line 211
    shl-int/lit8 v12, v12, 0x18

    .line 212
    .line 213
    aget-byte v13, v11, v4

    .line 214
    .line 215
    and-int/lit16 v13, v13, 0xff

    .line 216
    .line 217
    shl-int/lit8 v13, v13, 0x10

    .line 218
    .line 219
    or-int/2addr v12, v13

    .line 220
    const/4 v13, 0x2

    .line 221
    aget-byte v13, v11, v13

    .line 222
    .line 223
    and-int/lit16 v13, v13, 0xff

    .line 224
    .line 225
    shl-int/lit8 v13, v13, 0x8

    .line 226
    .line 227
    or-int/2addr v12, v13

    .line 228
    const/4 v13, 0x3

    .line 229
    aget-byte v11, v11, v13

    .line 230
    .line 231
    and-int/lit16 v11, v11, 0xff

    .line 232
    .line 233
    or-int/2addr v11, v12

    .line 234
    goto :goto_7

    .line 235
    :cond_9
    move v15, v7

    .line 236
    :goto_8
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    if-nez v11, :cond_d

    .line 245
    .line 246
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    invoke-virtual {v10}, Lbd9;->a()Z

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    if-eqz v11, :cond_a

    .line 258
    .line 259
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    goto :goto_9

    .line 264
    :cond_a
    move-object v11, v5

    .line 265
    :goto_9
    sget-object v12, Lts9;->b:Lts9;

    .line 266
    .line 267
    invoke-virtual {v12, v10, v11}, Lts9;->a(Lbd9;Ljava/lang/Integer;)Lvm4;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    new-instance v12, Llb9;

    .line 272
    .line 273
    iget-boolean v10, v9, Lgb9;->a:Z

    .line 274
    .line 275
    const/16 v17, 0x0

    .line 276
    .line 277
    const/4 v14, 0x2

    .line 278
    move/from16 v16, v10

    .line 279
    .line 280
    invoke-direct/range {v12 .. v17}, Llb9;-><init>(Lvm4;IIZZ)V

    .line 281
    .line 282
    .line 283
    iget-boolean v9, v9, Lgb9;->a:Z

    .line 284
    .line 285
    if-eqz v9, :cond_c

    .line 286
    .line 287
    if-nez v8, :cond_b

    .line 288
    .line 289
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    goto :goto_a

    .line 294
    :cond_b
    const-string v0, "Two primaries were set"

    .line 295
    .line 296
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return-object v5

    .line 300
    :cond_c
    :goto_a
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto/16 :goto_5

    .line 304
    .line 305
    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 306
    .line 307
    const-string v1, "Id "

    .line 308
    .line 309
    const-string v2, " is used twice in the keyset"

    .line 310
    .line 311
    invoke-static {v15, v1, v2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :cond_e
    const-string v0, "No ID was set (with withFixedId or withRandomId)"

    .line 320
    .line 321
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return-object v5

    .line 325
    :cond_f
    if-eqz v8, :cond_10

    .line 326
    .line 327
    new-instance v1, Lix0;

    .line 328
    .line 329
    iget-object v0, v0, Lik6;->c:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v0, Ljava/util/HashMap;

    .line 332
    .line 333
    invoke-direct {v1, v3, v0}, Lix0;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Lix0;->q()V

    .line 337
    .line 338
    .line 339
    return-object v1

    .line 340
    :cond_10
    const-string v0, "No primary was set"

    .line 341
    .line 342
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    return-object v5

    .line 346
    :cond_11
    const-string v0, "KeysetHandle.Builder#build must only be called once"

    .line 347
    .line 348
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    return-object v5

    .line 352
    :goto_b
    new-instance v2, Lyt9;

    .line 353
    .line 354
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    const-string v3, "Parsing parameters failed in getProto(). You probably want to call some Tink register function for "

    .line 359
    .line 360
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    .line 366
    .line 367
    throw v2
.end method

.method public static final i(Ltr9;Lxr9;[B)Lix0;
    .locals 4

    .line 1
    iget-object p0, p0, Ltr9;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/io/ByteArrayInputStream;

    .line 4
    .line 5
    :try_start_0
    sget-object v0, Lf79;->a:Lf79;

    .line 6
    .line 7
    invoke-static {p0, v0}, Lgy9;->t(Ljava/io/ByteArrayInputStream;Lf79;)Lgy9;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lgy9;->x()Lt69;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lt69;->d()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v2, 0x0

    .line 23
    const-string v3, "empty keyset"

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {v1}, Lgy9;->x()Lt69;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lt69;->w()[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0, p2}, Lxr9;->a([B[B)[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0, v0}, Luz9;->w([BLf79;)Luz9;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Luz9;->t()I

    .line 46
    .line 47
    .line 48
    move-result p1
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    if-lez p1, :cond_0

    .line 50
    .line 51
    invoke-static {p0}, Lix0;->j(Luz9;)Lix0;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_0
    :try_start_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 57
    .line 58
    invoke-direct {p0, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
    :try_end_2
    .catch Lp79; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :catch_0
    const-string p0, "invalid keyset, corrupted key material"

    .line 63
    .line 64
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v2

    .line 68
    :cond_1
    invoke-static {v3}, Lm0;->h(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public static final j(Luz9;)Lix0;
    .locals 11

    .line 1
    invoke-virtual {p0}, Luz9;->t()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_5

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Luz9;->t()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Luz9;->B()Lo79;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v4, v0

    .line 36
    check-cast v4, Lsz9;

    .line 37
    .line 38
    invoke-virtual {v4}, Lsz9;->t()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    const/4 v5, 0x1

    .line 43
    const/4 v6, 0x0

    .line 44
    :try_start_0
    invoke-static {v4}, Lix0;->k(Lsz9;)Lvm4;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    move v10, v6

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    sget-object v7, Lgo9;->a:Lft7;

    .line 52
    .line 53
    iget-object v7, v7, Lft7;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-nez v7, :cond_3

    .line 60
    .line 61
    new-instance v0, Lns9;

    .line 62
    .line 63
    invoke-static {v4}, Lix0;->v(Lsz9;)Lpt9;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-direct {v0, v7}, Lns9;-><init>(Lpt9;)V

    .line 68
    .line 69
    .line 70
    move v10, v5

    .line 71
    :goto_1
    sget-object v7, Lgo9;->a:Lft7;

    .line 72
    .line 73
    iget-object v7, v7, Lft7;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_0

    .line 80
    .line 81
    invoke-virtual {v4}, Lsz9;->z()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-static {v7}, Lix0;->t(I)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_1

    .line 90
    .line 91
    :cond_0
    move v7, v5

    .line 92
    goto :goto_2

    .line 93
    :cond_1
    const-string p0, "Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets."

    .line 94
    .line 95
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v1

    .line 99
    :goto_2
    new-instance v5, Llb9;

    .line 100
    .line 101
    invoke-virtual {v4}, Lsz9;->z()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-virtual {p0}, Luz9;->z()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-ne v8, v9, :cond_2

    .line 110
    .line 111
    move v9, v7

    .line 112
    move-object v6, v0

    .line 113
    move v7, v4

    .line 114
    goto :goto_3

    .line 115
    :cond_2
    move v9, v6

    .line 116
    move v7, v4

    .line 117
    move-object v6, v0

    .line 118
    :goto_3
    invoke-direct/range {v5 .. v10}, Llb9;-><init>(Lvm4;IIZZ)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    throw v0

    .line 126
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    new-instance v0, Lix0;

    .line 131
    .line 132
    new-instance v1, Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, p0, v1}, Lix0;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 138
    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_5
    const-string p0, "empty keyset"

    .line 142
    .line 143
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object v1
.end method

.method public static k(Lsz9;)Lvm4;
    .locals 5

    .line 1
    invoke-static {p0}, Lix0;->v(Lsz9;)Lpt9;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lxs9;->b:Lxs9;

    .line 6
    .line 7
    iget-object v1, v0, Lxs9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lut9;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Lwt9;

    .line 19
    .line 20
    const-class v3, Lpt9;

    .line 21
    .line 22
    iget-object v4, p0, Lpt9;->b:Ld2a;

    .line 23
    .line 24
    invoke-direct {v2, v3, v4}, Lwt9;-><init>(Ljava/lang/Class;Ld2a;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lut9;->b:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    new-instance v0, Lns9;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lns9;-><init>(Lpt9;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_0
    invoke-virtual {v0, p0}, Lxs9;->a(Lpt9;)Lvm4;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static o(Lcom/google/firebase/FirebaseApp;Lx59;)Lp49;
    .locals 9

    .line 1
    invoke-static {p0}, Lly8;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lw1a;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "firebase"

    .line 18
    .line 19
    invoke-static {v2}, Lly8;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p1, Lx59;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v3}, Lly8;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object v3, v1, Lw1a;->a:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v2, v1, Lw1a;->b:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p1, Lx59;->b:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v2, v1, Lw1a;->f:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v2, p1, Lx59;->d:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v2, v1, Lw1a;->c:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v2, p1, Lx59;->e:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x0

    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    iget-object v2, p1, Lx59;->e:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iput-object v4, v1, Lw1a;->d:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v2, v1, Lw1a;->e:Landroid/net/Uri;

    .line 65
    .line 66
    :cond_1
    iget-boolean v2, p1, Lx59;->c:Z

    .line 67
    .line 68
    iput-boolean v2, v1, Lw1a;->n:Z

    .line 69
    .line 70
    iput-object v3, v1, Lw1a;->p:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v2, p1, Lx59;->g:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v2, v1, Lw1a;->k:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    iget-object v1, p1, Lx59;->f:Lnh;

    .line 80
    .line 81
    iget-object v1, v1, Lnh;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Ljava/util/List;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    move v4, v2

    .line 95
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-ge v4, v5, :cond_4

    .line 100
    .line 101
    new-instance v5, Lw1a;

    .line 102
    .line 103
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Ld69;

    .line 108
    .line 109
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {v6}, Lly8;->h(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v7, v6, Ld69;->a:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v7, v5, Lw1a;->a:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v7, v6, Ld69;->d:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v7}, Lly8;->e(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iput-object v7, v5, Lw1a;->b:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v7, v6, Ld69;->b:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v7, v5, Lw1a;->c:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v7, v6, Ld69;->c:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-nez v8, :cond_2

    .line 137
    .line 138
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    move-object v7, v3

    .line 144
    :goto_2
    if-eqz v7, :cond_3

    .line 145
    .line 146
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    iput-object v8, v5, Lw1a;->d:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v7, v5, Lw1a;->e:Landroid/net/Uri;

    .line 153
    .line 154
    :cond_3
    iget-object v7, v6, Ld69;->g:Ljava/lang/String;

    .line 155
    .line 156
    iput-object v7, v5, Lw1a;->f:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v7, v6, Ld69;->f:Ljava/lang/String;

    .line 159
    .line 160
    iput-object v7, v5, Lw1a;->k:Ljava/lang/String;

    .line 161
    .line 162
    iput-boolean v2, v5, Lw1a;->n:Z

    .line 163
    .line 164
    iget-object v6, v6, Ld69;->e:Ljava/lang/String;

    .line 165
    .line 166
    iput-object v6, v5, Lw1a;->p:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    add-int/lit8 v4, v4, 0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_4
    new-instance v1, Lp49;

    .line 175
    .line 176
    invoke-direct {v1, p0, v0}, Lp49;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/ArrayList;)V

    .line 177
    .line 178
    .line 179
    new-instance p0, Ll59;

    .line 180
    .line 181
    iget-wide v2, p1, Lx59;->i:J

    .line 182
    .line 183
    iget-wide v4, p1, Lx59;->h:J

    .line 184
    .line 185
    invoke-direct {p0, v2, v3, v4, v5}, Ll59;-><init>(JJ)V

    .line 186
    .line 187
    .line 188
    iput-object p0, v1, Lp49;->p:Ll59;

    .line 189
    .line 190
    iget-boolean p0, p1, Lx59;->j:Z

    .line 191
    .line 192
    iput-boolean p0, v1, Lp49;->q:Z

    .line 193
    .line 194
    iget-object p0, p1, Lx59;->k:Lua9;

    .line 195
    .line 196
    iput-object p0, v1, Lp49;->r:Lua9;

    .line 197
    .line 198
    iget-object p0, p1, Lx59;->l:Ljava/util/List;

    .line 199
    .line 200
    invoke-static {p0}, Lod2;->A(Ljava/util/List;)Ljava/util/ArrayList;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {v1, p0}, Lp49;->v(Ljava/util/ArrayList;)V

    .line 205
    .line 206
    .line 207
    iget-object p0, p1, Lx59;->m:Lz59;

    .line 208
    .line 209
    if-nez p0, :cond_5

    .line 210
    .line 211
    new-instance p0, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    :cond_5
    iput-object p0, v1, Lp49;->x:Ljava/util/List;

    .line 217
    .line 218
    return-object v1
.end method

.method public static t(I)Z
    .locals 2

    .line 1
    sget-object v0, Lqa9;->a:[I

    .line 2
    .line 3
    invoke-static {p0}, Ldj7;->A(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p0, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p0, v1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    return v0
.end method

.method public static v(Lsz9;)Lpt9;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lsz9;->t()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lsz9;->B()Lr0a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lr0a;->e:Lr0a;

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lsz9;->y()Ljz9;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljz9;->A()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lsz9;->y()Ljz9;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljz9;->z()Lt69;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p0}, Lsz9;->y()Ljz9;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljz9;->x()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p0}, Lsz9;->B()Lr0a;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v1, v2, v3, p0, v0}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method


# virtual methods
.method public a(Ltc6;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lix0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lix0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, [B

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget v2, v0, v1

    .line 11
    .line 12
    invoke-virtual {p1, p0, v2, p2}, Ltc6;->read([BII)I

    .line 13
    .line 14
    .line 15
    aget p0, v0, v1

    .line 16
    .line 17
    add-int/2addr p0, p2

    .line 18
    aput p0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public declared-synchronized b(Lwy5;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lix0;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lwy5;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object p1, v0, Lwy5;->c:Lwy5;

    .line 9
    .line 10
    iput-object p1, p0, Lix0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lix0;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lwy5;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iput-object p1, p0, Lix0;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p1, p0, Lix0;->b:Ljava/lang/Object;

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Head present, but no tail"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lix0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Llj4;

    .line 17
    .line 18
    const-string v0, "The property "

    .line 19
    .line 20
    const-string v1, " is not available in this runtime"

    .line 21
    .line 22
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public d(Landroidx/preference/Preference;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lix0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroidx/preference/PreferenceGroup;

    .line 4
    .line 5
    const v0, 0x7fffffff

    .line 6
    .line 7
    .line 8
    iput v0, p1, Landroidx/preference/PreferenceGroup;->k0:I

    .line 9
    .line 10
    iget-object p0, p0, Lix0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lf46;

    .line 13
    .line 14
    iget-object p1, p0, Lf46;->h:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object p0, p0, Lf46;->i:Lw7;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public declared-synchronized e(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lix0;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lix0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lix0;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lix0;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_1
    monitor-exit p0

    .line 47
    return-object v0

    .line 48
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method

.method public declared-synchronized f(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lix0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_4

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Lix0;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/List;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lrl6;

    .line 55
    .line 56
    iget-object v4, v3, Lrl6;->a:Ljava/lang/Class;

    .line 57
    .line 58
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    iget-object v4, v3, Lrl6;->b:Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v4, 0x0

    .line 75
    :goto_2
    if-eqz v4, :cond_2

    .line 76
    .line 77
    iget-object v4, v3, Lrl6;->b:Ljava/lang/Class;

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_2

    .line 84
    .line 85
    iget-object v3, v3, Lrl6;->b:Ljava/lang/Class;

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    monitor-exit p0

    .line 94
    return-object v0

    .line 95
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p1
.end method

.method public declared-synchronized g()Lwy5;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lix0;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lwy5;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lwy5;->c:Lwy5;

    .line 9
    .line 10
    iput-object v1, p0, Lix0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lix0;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lix0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lix0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lix0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public l(Lcom/google/firebase/FirebaseApp;Lp49;Ld80;Ljava/lang/String;Lyb9;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Lly8;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p5}, Lly8;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p2, Lp49;->f:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3}, Ld80;->n()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    .line 25
    .line 26
    const/16 p1, 0x4277

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p2, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Ly49;->a(Lcom/google/android/gms/common/api/Status;)Lkg3;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    instance-of v0, p3, Lau2;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    check-cast p3, Lau2;

    .line 46
    .line 47
    iget-object v0, p3, Lau2;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Lf49;

    .line 56
    .line 57
    invoke-direct {v0, p3, p4}, Lf49;-><init>(Lau2;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, v0, Lh59;->c:Lcom/google/firebase/FirebaseApp;

    .line 61
    .line 62
    iput-object p2, v0, Lh59;->d:Lp49;

    .line 63
    .line 64
    iput-object p5, v0, Lh59;->e:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p5, Lb99;

    .line 67
    .line 68
    iput-object p5, v0, Lh59;->f:Lb99;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_1
    new-instance p4, Lj49;

    .line 76
    .line 77
    invoke-direct {p4, p3}, Lj49;-><init>(Lau2;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p4, Lh59;->c:Lcom/google/firebase/FirebaseApp;

    .line 81
    .line 82
    iput-object p2, p4, Lh59;->d:Lp49;

    .line 83
    .line 84
    iput-object p5, p4, Lh59;->e:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p5, Lb99;

    .line 87
    .line 88
    iput-object p5, p4, Lh59;->f:Lb99;

    .line 89
    .line 90
    invoke-virtual {p0, p4}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_2
    instance-of p4, p3, Lxz5;

    .line 96
    .line 97
    if-eqz p4, :cond_3

    .line 98
    .line 99
    check-cast p3, Lxz5;

    .line 100
    .line 101
    sget-object p4, Lo59;->a:Lk50;

    .line 102
    .line 103
    invoke-virtual {p4}, Ldg7;->clear()V

    .line 104
    .line 105
    .line 106
    new-instance p4, Lh49;

    .line 107
    .line 108
    invoke-direct {p4, p3}, Lh49;-><init>(Lxz5;)V

    .line 109
    .line 110
    .line 111
    iput-object p1, p4, Lh59;->c:Lcom/google/firebase/FirebaseApp;

    .line 112
    .line 113
    iput-object p2, p4, Lh59;->d:Lp49;

    .line 114
    .line 115
    iput-object p5, p4, Lh59;->e:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p5, Lb99;

    .line 118
    .line 119
    iput-object p5, p4, Lh59;->f:Lb99;

    .line 120
    .line 121
    invoke-virtual {p0, p4}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_3
    new-instance p4, Li49;

    .line 127
    .line 128
    invoke-direct {p4, p3}, Li49;-><init>(Ld80;)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p4, Lh59;->c:Lcom/google/firebase/FirebaseApp;

    .line 132
    .line 133
    iput-object p2, p4, Lh59;->d:Lp49;

    .line 134
    .line 135
    iput-object p5, p4, Lh59;->e:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p5, Lb99;

    .line 138
    .line 139
    iput-object p5, p4, Lh59;->f:Lb99;

    .line 140
    .line 141
    invoke-virtual {p0, p4}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0
.end method

.method public m(Lh59;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lix0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    new-instance v2, Li59;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p0, v2, Li59;->a:Lix0;

    .line 16
    .line 17
    iput-object p1, v2, Li59;->b:Lh59;

    .line 18
    .line 19
    iput-object v0, v2, Li59;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public n(Laa9;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lix0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {p0}, Lix0;->x()Luz9;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget v2, Lwd9;->a:I

    .line 10
    .line 11
    invoke-virtual {v1}, Luz9;->z()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1}, Luz9;->B()Lo79;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    move v8, v4

    .line 26
    move v6, v5

    .line 27
    move v7, v6

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    const/4 v10, 0x0

    .line 33
    if-eqz v9, :cond_7

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    check-cast v9, Lsz9;

    .line 40
    .line 41
    invoke-virtual {v9}, Lsz9;->z()I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    const/4 v12, 0x2

    .line 46
    if-ne v11, v12, :cond_0

    .line 47
    .line 48
    invoke-virtual {v9}, Lsz9;->C()Z

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    if-eqz v11, :cond_6

    .line 53
    .line 54
    invoke-virtual {v9}, Lsz9;->B()Lr0a;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    sget-object v12, Lr0a;->b:Lr0a;

    .line 59
    .line 60
    if-eq v11, v12, :cond_5

    .line 61
    .line 62
    invoke-virtual {v9}, Lsz9;->z()I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    if-eq v11, v4, :cond_4

    .line 67
    .line 68
    invoke-virtual {v9}, Lsz9;->t()I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-ne v11, v2, :cond_2

    .line 73
    .line 74
    if-nez v7, :cond_1

    .line 75
    .line 76
    move v7, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const-string p0, "keyset contains multiple primary keys"

    .line 79
    .line 80
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v10

    .line 84
    :cond_2
    :goto_1
    invoke-virtual {v9}, Lsz9;->y()Ljz9;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {v9}, Ljz9;->x()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    const/4 v10, 0x4

    .line 93
    if-eq v9, v10, :cond_3

    .line 94
    .line 95
    move v8, v5

    .line 96
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 100
    .line 101
    invoke-virtual {v9}, Lsz9;->t()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string p2, "key %d has unknown status"

    .line 114
    .line 115
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 124
    .line 125
    invoke-virtual {v9}, Lsz9;->t()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string p2, "key %d has unknown prefix"

    .line 138
    .line 139
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 148
    .line 149
    invoke-virtual {v9}, Lsz9;->t()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string p2, "key %d has no key data"

    .line 162
    .line 163
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_7
    if-eqz v6, :cond_c

    .line 172
    .line 173
    if-nez v7, :cond_9

    .line 174
    .line 175
    if-eqz v8, :cond_8

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    const-string p0, "keyset doesn\'t contain a valid primary key"

    .line 179
    .line 180
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-object v10

    .line 184
    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-ge v5, v2, :cond_b

    .line 189
    .line 190
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Llb9;

    .line 195
    .line 196
    iget-boolean v2, v2, Llb9;->f:Z

    .line 197
    .line 198
    if-nez v2, :cond_a

    .line 199
    .line 200
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Llb9;

    .line 205
    .line 206
    iget v2, v2, Llb9;->b:I

    .line 207
    .line 208
    invoke-static {v2}, Lix0;->t(I)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_a

    .line 213
    .line 214
    add-int/lit8 v5, v5, 0x1

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_a
    invoke-virtual {v1, v5}, Luz9;->u(I)Lsz9;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 222
    .line 223
    invoke-virtual {p0}, Lsz9;->y()Ljz9;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljz9;->A()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v0, "Key parsing of key with index "

    .line 234
    .line 235
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v0, " and type_url "

    .line 242
    .line 243
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string p0, " failed, unable to get primitive"

    .line 250
    .line 251
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p1

    .line 262
    :cond_b
    invoke-interface {p1, p0, p2}, Laa9;->d(Lix0;Ljava/lang/Class;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    return-object p0

    .line 267
    :cond_c
    const-string p0, "keyset must contain at least one ENABLED key"

    .line 268
    .line 269
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-object v10
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lix0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/firebase/auth/internal/RecaptchaActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lix0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v1, Lcom/google/firebase/auth/internal/RecaptchaActivity;->c:Lec9;

    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v2, "android.intent.action.VIEW"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v3, Landroid/content/Intent;

    .line 34
    .line 35
    const-string v5, "android.support.customtabs.action.CustomTabsService"

    .line 36
    .line 37
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/high16 v3, 0x10000000

    .line 45
    .line 46
    const/high16 v4, 0x40000000    # 2.0f

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    new-instance p0, Lh72;

    .line 57
    .line 58
    invoke-direct {p0}, Lh72;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lh72;->a()Lix0;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iget-object v1, p0, Lix0;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Landroid/content/Intent;

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/net/Uri;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lix0;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p0, Landroid/os/Bundle;

    .line 87
    .line 88
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/net/Uri;

    .line 99
    .line 100
    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .line 102
    .line 103
    const-string p1, "com.android.browser.application_id"

    .line 104
    .line 105
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_1
    const-string p0, "RecaptchaActivity"

    .line 119
    .line 120
    const-string p1, "Device cannot resolve intent for: android.intent.action.VIEW"

    .line 121
    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->o()V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public p(I)Llb9;
    .locals 4

    .line 1
    iget-object p0, p0, Lix0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/List;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-ltz p1, :cond_2

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge p1, v1, :cond_2

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Llb9;

    .line 19
    .line 20
    iget v2, v1, Llb9;->b:I

    .line 21
    .line 22
    invoke-static {v2}, Lix0;->t(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "Keyset-Entry at position "

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-boolean v1, v1, Llb9;->f:Z

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Llb9;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    const-string p0, " didn\'t parse correctly"

    .line 42
    .line 43
    invoke-static {p1, v3, p0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    const-string p0, " has wrong status"

    .line 52
    .line 53
    invoke-static {p1, v3, p0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    const-string v1, "Invalid index "

    .line 66
    .line 67
    const-string v2, " for keyset of size "

    .line 68
    .line 69
    invoke-static {v1, p1, p0, v2}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object p0, p0, Lix0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/Map;

    .line 4
    .line 5
    const-class v0, Lrs9;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Le6;->d()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public r(Lla;Lxr9;[B)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lix0;->x()Luz9;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lo69;->c()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0, p3}, Lxr9;->b([B[B)[B

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {}, Lgy9;->w()Lfy9;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    const/4 v0, 0x0

    .line 18
    array-length v1, p2

    .line 19
    invoke-static {p2, v0, v1}, Lt69;->g([BII)Lx69;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p3}, Lj79;->c()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p3, Lj79;->b:Lk79;

    .line 27
    .line 28
    check-cast v0, Lgy9;

    .line 29
    .line 30
    invoke-static {v0, p2}, Lgy9;->u(Lgy9;Lx69;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lwd9;->a(Luz9;)Lzz9;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p3}, Lj79;->c()V

    .line 38
    .line 39
    .line 40
    iget-object p2, p3, Lj79;->b:Lk79;

    .line 41
    .line 42
    check-cast p2, Lgy9;

    .line 43
    .line 44
    invoke-static {p2, p0}, Lgy9;->v(Lgy9;Lzz9;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Lj79;->b()Lk79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lgy9;

    .line 52
    .line 53
    iget-object p2, p1, Lla;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p2, Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    iget-object p1, p1, Lla;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0}, Lo69;->c()[B

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lho6;->a0([B)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_0

    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    const-string p0, "Failed to write to SharedPreferences"

    .line 81
    .line 82
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public s(Lnh;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lix0;->x()Luz9;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Luz9;->B()Lo79;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lsz9;

    .line 25
    .line 26
    invoke-virtual {v1}, Lsz9;->y()Ljz9;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljz9;->x()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq v3, v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lsz9;->y()Ljz9;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljz9;->x()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x2

    .line 46
    if-eq v3, v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Lsz9;->y()Ljz9;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljz9;->x()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x3

    .line 57
    if-eq v3, v4, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 61
    .line 62
    invoke-virtual {v1}, Lsz9;->y()Ljz9;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljz9;->x()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    throw v2

    .line 74
    :pswitch_0
    const-string p1, "UNRECOGNIZED"

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_1
    const-string p1, "REMOTE"

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_2
    const-string p1, "ASYMMETRIC_PUBLIC"

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_3
    const-string p1, "ASYMMETRIC_PRIVATE"

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_4
    const-string p1, "SYMMETRIC"

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_5
    const-string p1, "UNKNOWN_KEYMATERIAL"

    .line 90
    .line 91
    :goto_1
    invoke-virtual {v1}, Lsz9;->y()Ljz9;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljz9;->A()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "keyset contains key material of type "

    .line 100
    .line 101
    const-string v2, " for type url "

    .line 102
    .line 103
    invoke-static {v1, p1, v2, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_1
    iget-object p1, p1, Lnh;->b:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    .line 114
    .line 115
    :try_start_0
    check-cast p0, Lk79;

    .line 116
    .line 117
    invoke-virtual {p0, v2}, Lk79;->a(Le89;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    sget-boolean v1, Lc79;->b:Z

    .line 122
    .line 123
    const/16 v1, 0x1000

    .line 124
    .line 125
    if-le v0, v1, :cond_2

    .line 126
    .line 127
    move v0, v1

    .line 128
    :cond_2
    new-instance v1, Ld79;

    .line 129
    .line 130
    invoke-direct {v1, p1, v0}, Ld79;-><init>(Ljava/io/ByteArrayOutputStream;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v1}, Lk79;->k(Lc79;)V

    .line 134
    .line 135
    .line 136
    iget p0, v1, Ld79;->e:I

    .line 137
    .line 138
    if-lez p0, :cond_3

    .line 139
    .line 140
    invoke-virtual {v1}, Ld79;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lix0;->a:I

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
    invoke-virtual {p0}, Lix0;->x()Luz9;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lwd9;->a(Luz9;)Lzz9;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lk79;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public u()Lix0;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Lix0;->x()Luz9;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v0, v1, Lix0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x0

    .line 25
    move v6, v5

    .line 26
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_a

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v7, v0

    .line 37
    check-cast v7, Llb9;

    .line 38
    .line 39
    invoke-virtual {v7}, Llb9;->a()Lvm4;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    instance-of v0, v0, Lbr9;

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v7}, Llb9;->a()Lvm4;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lbr9;

    .line 53
    .line 54
    invoke-virtual {v0}, Lbr9;->J()Lvm4;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    new-instance v9, Llb9;

    .line 59
    .line 60
    iget v11, v7, Llb9;->b:I

    .line 61
    .line 62
    iget v12, v7, Llb9;->d:I

    .line 63
    .line 64
    iget-boolean v13, v7, Llb9;->e:Z

    .line 65
    .line 66
    const/4 v14, 0x0

    .line 67
    invoke-direct/range {v9 .. v14}, Llb9;-><init>(Lvm4;IIZZ)V

    .line 68
    .line 69
    .line 70
    iget v0, v7, Llb9;->d:I

    .line 71
    .line 72
    invoke-virtual {v10}, Lvm4;->H()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    if-eqz v7, :cond_5

    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-ne v7, v0, :cond_0

    .line 83
    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_0
    const-string v0, "Wrong ID set for key with ID requirement"

    .line 87
    .line 88
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v8

    .line 92
    :cond_1
    invoke-virtual {v2, v6}, Luz9;->u(I)Lsz9;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lsz9;->y()Ljz9;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-virtual {v9}, Ljz9;->x()I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    const/4 v11, 0x3

    .line 105
    if-ne v10, v11, :cond_9

    .line 106
    .line 107
    invoke-virtual {v9}, Ljz9;->A()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-virtual {v9}, Ljz9;->z()Lt69;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    sget v11, Ljd9;->a:I

    .line 116
    .line 117
    sget-object v11, Lbs9;->d:Lbs9;

    .line 118
    .line 119
    invoke-virtual {v11, v10}, Lbs9;->a(Ljava/lang/String;)Lgs9;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    instance-of v12, v11, Los9;

    .line 124
    .line 125
    if-eqz v12, :cond_8

    .line 126
    .line 127
    check-cast v11, Los9;

    .line 128
    .line 129
    iget-object v10, v11, Lgs9;->a:Ljava/lang/String;

    .line 130
    .line 131
    iget v11, v11, Lgs9;->b:I

    .line 132
    .line 133
    sget-object v12, Lr0a;->e:Lr0a;

    .line 134
    .line 135
    invoke-static {v10, v9, v11, v12, v8}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    sget-object v10, Lxs9;->b:Lxs9;

    .line 140
    .line 141
    invoke-virtual {v10, v9}, Lxs9;->a(Lpt9;)Lvm4;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    instance-of v11, v9, Lbr9;

    .line 146
    .line 147
    if-eqz v11, :cond_7

    .line 148
    .line 149
    check-cast v9, Lbr9;

    .line 150
    .line 151
    invoke-virtual {v9}, Lbr9;->J()Lvm4;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-virtual {v10, v8}, Lxs9;->c(Lvm4;)Lvt9;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    check-cast v8, Lpt9;

    .line 160
    .line 161
    invoke-static {}, Ljz9;->t()Liz9;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    iget-object v10, v8, Lpt9;->a:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v9}, Lj79;->c()V

    .line 168
    .line 169
    .line 170
    iget-object v11, v9, Lj79;->b:Lk79;

    .line 171
    .line 172
    check-cast v11, Ljz9;

    .line 173
    .line 174
    invoke-static {v11, v10}, Ljz9;->v(Ljz9;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v10, v8, Lpt9;->c:Lt69;

    .line 178
    .line 179
    invoke-virtual {v9}, Lj79;->c()V

    .line 180
    .line 181
    .line 182
    iget-object v11, v9, Lj79;->b:Lk79;

    .line 183
    .line 184
    check-cast v11, Ljz9;

    .line 185
    .line 186
    invoke-static {v11, v10}, Ljz9;->w(Ljz9;Lt69;)V

    .line 187
    .line 188
    .line 189
    iget v8, v8, Lpt9;->d:I

    .line 190
    .line 191
    invoke-virtual {v9}, Lj79;->c()V

    .line 192
    .line 193
    .line 194
    iget-object v10, v9, Lj79;->b:Lk79;

    .line 195
    .line 196
    check-cast v10, Ljz9;

    .line 197
    .line 198
    invoke-static {v10, v8}, Ljz9;->u(Ljz9;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9}, Lj79;->b()Lk79;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    check-cast v8, Ljz9;

    .line 206
    .line 207
    const/4 v9, 0x5

    .line 208
    invoke-virtual {v0, v9}, Lsz9;->d(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    check-cast v9, Lj79;

    .line 213
    .line 214
    iget-object v10, v9, Lj79;->a:Lk79;

    .line 215
    .line 216
    invoke-virtual {v10, v0}, Lk79;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-eqz v10, :cond_2

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_2
    iget-object v10, v9, Lj79;->b:Lk79;

    .line 224
    .line 225
    invoke-virtual {v10}, Lk79;->s()Z

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    if-nez v10, :cond_3

    .line 230
    .line 231
    invoke-virtual {v9}, Lj79;->d()V

    .line 232
    .line 233
    .line 234
    :cond_3
    iget-object v10, v9, Lj79;->b:Lk79;

    .line 235
    .line 236
    invoke-static {v10, v0}, Lj79;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    :goto_1
    check-cast v9, Lrz9;

    .line 240
    .line 241
    invoke-virtual {v9}, Lj79;->c()V

    .line 242
    .line 243
    .line 244
    iget-object v0, v9, Lj79;->b:Lk79;

    .line 245
    .line 246
    check-cast v0, Lsz9;

    .line 247
    .line 248
    invoke-static {v0, v8}, Lsz9;->v(Lsz9;Ljz9;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v9}, Lj79;->b()Lk79;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    move-object v8, v0

    .line 256
    check-cast v8, Lsz9;

    .line 257
    .line 258
    const/4 v9, 0x1

    .line 259
    :try_start_0
    invoke-static {v8}, Lix0;->k(Lsz9;)Lvm4;

    .line 260
    .line 261
    .line 262
    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    move/from16 v16, v5

    .line 264
    .line 265
    :goto_2
    move-object v12, v0

    .line 266
    goto :goto_3

    .line 267
    :catch_0
    move-exception v0

    .line 268
    sget-object v10, Lgo9;->a:Lft7;

    .line 269
    .line 270
    iget-object v10, v10, Lft7;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 271
    .line 272
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    if-nez v10, :cond_6

    .line 277
    .line 278
    new-instance v0, Lns9;

    .line 279
    .line 280
    invoke-static {v8}, Lix0;->v(Lsz9;)Lpt9;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    invoke-direct {v0, v10}, Lns9;-><init>(Lpt9;)V

    .line 285
    .line 286
    .line 287
    move/from16 v16, v9

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :goto_3
    invoke-virtual {v8}, Lsz9;->t()I

    .line 291
    .line 292
    .line 293
    move-result v14

    .line 294
    new-instance v11, Llb9;

    .line 295
    .line 296
    iget v13, v7, Llb9;->b:I

    .line 297
    .line 298
    invoke-virtual {v2}, Luz9;->z()I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-ne v14, v0, :cond_4

    .line 303
    .line 304
    move v15, v9

    .line 305
    goto :goto_4

    .line 306
    :cond_4
    move v15, v5

    .line 307
    :goto_4
    invoke-direct/range {v11 .. v16}, Llb9;-><init>(Lvm4;IIZZ)V

    .line 308
    .line 309
    .line 310
    move-object v9, v11

    .line 311
    :cond_5
    :goto_5
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    add-int/lit8 v6, v6, 0x1

    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_6
    throw v0

    .line 319
    :cond_7
    const-string v0, "Key not private key"

    .line 320
    .line 321
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return-object v8

    .line 325
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 326
    .line 327
    const-string v1, "manager for key type "

    .line 328
    .line 329
    const-string v2, " is not a PrivateKeyManager"

    .line 330
    .line 331
    invoke-static {v1, v10, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw v0

    .line 339
    :cond_9
    const-string v0, "The keyset contains a non-private key"

    .line 340
    .line 341
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    return-object v8

    .line 345
    :cond_a
    new-instance v0, Lix0;

    .line 346
    .line 347
    iget-object v1, v1, Lix0;->c:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v1, Ljava/util/Map;

    .line 350
    .line 351
    invoke-direct {v0, v3, v1}, Lix0;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Lix0;->q()V

    .line 355
    .line 356
    .line 357
    return-object v0
.end method

.method public w()Llb9;
    .locals 3

    .line 1
    iget-object p0, p0, Lix0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Llb9;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-boolean v2, v0, Llb9;->e:Z

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object p0, v0, Llb9;->c:Lia9;

    .line 29
    .line 30
    sget-object v2, Lia9;->c:Lia9;

    .line 31
    .line 32
    if-ne p0, v2, :cond_1

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    const-string p0, "Keyset has primary which isn\'t enabled"

    .line 36
    .line 37
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    const-string p0, "Keyset has no valid primary"

    .line 42
    .line 43
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public x()Luz9;
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Luz9;->A()Ltz9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lix0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Llb9;

    .line 24
    .line 25
    invoke-virtual {v1}, Llb9;->a()Lvm4;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget v3, v1, Llb9;->d:I

    .line 30
    .line 31
    iget v4, v1, Llb9;->b:I

    .line 32
    .line 33
    sget-object v5, Lxs9;->b:Lxs9;

    .line 34
    .line 35
    invoke-virtual {v5, v2}, Lxs9;->c(Lvm4;)Lvt9;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lpt9;

    .line 40
    .line 41
    invoke-virtual {v2}, Lvm4;->H()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ne v2, v3, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 55
    .line 56
    const-string v0, "Wrong ID set for key with ID requirement"

    .line 57
    .line 58
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    :goto_1
    invoke-static {}, Lsz9;->A()Lrz9;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {}, Ljz9;->t()Liz9;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iget-object v7, v5, Lpt9;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v6}, Lj79;->c()V

    .line 73
    .line 74
    .line 75
    iget-object v8, v6, Lj79;->b:Lk79;

    .line 76
    .line 77
    check-cast v8, Ljz9;

    .line 78
    .line 79
    invoke-static {v8, v7}, Ljz9;->v(Ljz9;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v7, v5, Lpt9;->c:Lt69;

    .line 83
    .line 84
    invoke-virtual {v6}, Lj79;->c()V

    .line 85
    .line 86
    .line 87
    iget-object v8, v6, Lj79;->b:Lk79;

    .line 88
    .line 89
    check-cast v8, Ljz9;

    .line 90
    .line 91
    invoke-static {v8, v7}, Ljz9;->w(Ljz9;Lt69;)V

    .line 92
    .line 93
    .line 94
    iget v7, v5, Lpt9;->d:I

    .line 95
    .line 96
    invoke-virtual {v6}, Lj79;->c()V

    .line 97
    .line 98
    .line 99
    iget-object v8, v6, Lj79;->b:Lk79;

    .line 100
    .line 101
    check-cast v8, Ljz9;

    .line 102
    .line 103
    invoke-static {v8, v7}, Ljz9;->u(Ljz9;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lj79;->c()V

    .line 107
    .line 108
    .line 109
    iget-object v7, v2, Lj79;->b:Lk79;

    .line 110
    .line 111
    check-cast v7, Lsz9;

    .line 112
    .line 113
    invoke-virtual {v6}, Lj79;->b()Lk79;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Ljz9;

    .line 118
    .line 119
    invoke-static {v7, v6}, Lsz9;->v(Lsz9;Ljz9;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lj79;->c()V

    .line 123
    .line 124
    .line 125
    iget-object v6, v2, Lj79;->b:Lk79;

    .line 126
    .line 127
    check-cast v6, Lsz9;

    .line 128
    .line 129
    invoke-static {v6, v4}, Lsz9;->x(Lsz9;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Lj79;->c()V

    .line 133
    .line 134
    .line 135
    iget-object v4, v2, Lj79;->b:Lk79;

    .line 136
    .line 137
    check-cast v4, Lsz9;

    .line 138
    .line 139
    invoke-static {v4, v3}, Lsz9;->u(Lsz9;I)V

    .line 140
    .line 141
    .line 142
    iget-object v4, v5, Lpt9;->e:Lr0a;

    .line 143
    .line 144
    invoke-virtual {v2}, Lj79;->c()V

    .line 145
    .line 146
    .line 147
    iget-object v5, v2, Lj79;->b:Lk79;

    .line 148
    .line 149
    check-cast v5, Lsz9;

    .line 150
    .line 151
    invoke-static {v5, v4}, Lsz9;->w(Lsz9;Lr0a;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Lj79;->b()Lk79;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lsz9;

    .line 159
    .line 160
    invoke-virtual {v0}, Lj79;->c()V

    .line 161
    .line 162
    .line 163
    iget-object v4, v0, Lj79;->b:Lk79;

    .line 164
    .line 165
    check-cast v4, Luz9;

    .line 166
    .line 167
    invoke-static {v4, v2}, Luz9;->y(Luz9;Lsz9;)V

    .line 168
    .line 169
    .line 170
    iget-boolean v1, v1, Llb9;->e:Z

    .line 171
    .line 172
    if-eqz v1, :cond_0

    .line 173
    .line 174
    invoke-virtual {v0}, Lj79;->c()V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 178
    .line 179
    check-cast v1, Luz9;

    .line 180
    .line 181
    invoke-static {v1, v3}, Luz9;->x(Luz9;I)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_3
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    check-cast p0, Luz9;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    return-object p0

    .line 193
    :catch_0
    move-exception p0

    .line 194
    new-instance v0, Lyt9;

    .line 195
    .line 196
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    throw v0
.end method
