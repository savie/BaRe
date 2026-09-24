.class public final Lm8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lm8;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(Lzw3;Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lzw3;->a:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x4

    .line 11
    invoke-static {p1, v2, v3}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lzw3;->b:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {p1, v2, v3}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lzw3;->c:I

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-static {p1, v2, v3}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lzw3;->d:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, v3, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lzw3;->e:Landroid/os/IBinder;

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x5

    .line 46
    invoke-static {p1, v2}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v2}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    const/4 v1, 0x6

    .line 57
    iget-object v2, p0, Lzw3;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 58
    .line 59
    invoke-static {p1, v1, v2, p2}, Lyc9;->y0(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x7

    .line 63
    iget-object v2, p0, Lzw3;->k:Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-static {p1, v1, v2}, Lyc9;->n0(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    iget-object v2, p0, Lzw3;->n:Landroid/accounts/Account;

    .line 71
    .line 72
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 73
    .line 74
    .line 75
    const/16 v1, 0xa

    .line 76
    .line 77
    iget-object v2, p0, Lzw3;->p:[Ly53;

    .line 78
    .line 79
    invoke-static {p1, v1, v2, p2}, Lyc9;->y0(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 80
    .line 81
    .line 82
    const/16 v1, 0xb

    .line 83
    .line 84
    iget-object v2, p0, Lzw3;->q:[Ly53;

    .line 85
    .line 86
    invoke-static {p1, v1, v2, p2}, Lyc9;->y0(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 87
    .line 88
    .line 89
    iget-boolean p2, p0, Lzw3;->r:Z

    .line 90
    .line 91
    const/16 v1, 0xc

    .line 92
    .line 93
    invoke-static {p1, v1, v3}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget p2, p0, Lzw3;->t:I

    .line 100
    .line 101
    const/16 v1, 0xd

    .line 102
    .line 103
    invoke-static {p1, v1, v3}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    iget-boolean p2, p0, Lzw3;->x:Z

    .line 110
    .line 111
    const/16 v1, 0xe

    .line 112
    .line 113
    invoke-static {p1, v1, v3}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    .line 118
    .line 119
    const/16 p2, 0xf

    .line 120
    .line 121
    iget-object p0, p0, Lzw3;->y:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {p1, p2, p0}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p1, v0}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 127
    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lm8;->a:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :try_start_0
    invoke-static {v0}, Laz0;->c(I)Laz0;

    .line 21
    .line 22
    .line 23
    move-result-object v5
    :try_end_0
    .catch Lzy0; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object v5

    .line 30
    :pswitch_0
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    new-instance v2, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    sget-object v3, Lzw3;->G:[Lcom/google/android/gms/common/api/Scope;

    .line 40
    .line 41
    sget-object v4, Lzw3;->H:[Ly53;

    .line 42
    .line 43
    move-object v15, v2

    .line 44
    move-object v14, v3

    .line 45
    move-object/from16 v17, v4

    .line 46
    .line 47
    move-object/from16 v18, v17

    .line 48
    .line 49
    move-object v12, v5

    .line 50
    move-object v13, v12

    .line 51
    move-object/from16 v16, v13

    .line 52
    .line 53
    move-object/from16 v22, v16

    .line 54
    .line 55
    move v9, v7

    .line 56
    move v10, v9

    .line 57
    move v11, v10

    .line 58
    move/from16 v19, v11

    .line 59
    .line 60
    move/from16 v20, v19

    .line 61
    .line 62
    move/from16 v21, v20

    .line 63
    .line 64
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v2, v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    int-to-char v3, v2

    .line 75
    packed-switch v3, :pswitch_data_1

    .line 76
    .line 77
    .line 78
    :pswitch_1
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :pswitch_2
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v22

    .line 86
    goto :goto_1

    .line 87
    :pswitch_3
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 88
    .line 89
    .line 90
    move-result v21

    .line 91
    goto :goto_1

    .line 92
    :pswitch_4
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 93
    .line 94
    .line 95
    move-result v20

    .line 96
    goto :goto_1

    .line 97
    :pswitch_5
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 98
    .line 99
    .line 100
    move-result v19

    .line 101
    goto :goto_1

    .line 102
    :pswitch_6
    sget-object v3, Ly53;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 103
    .line 104
    invoke-static {v1, v2, v3}, Ljb9;->s(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    move-object/from16 v18, v2

    .line 109
    .line 110
    check-cast v18, [Ly53;

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :pswitch_7
    sget-object v3, Ly53;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 114
    .line 115
    invoke-static {v1, v2, v3}, Ljb9;->s(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    move-object/from16 v17, v2

    .line 120
    .line 121
    check-cast v17, [Ly53;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :pswitch_8
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 125
    .line 126
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    move-object/from16 v16, v2

    .line 131
    .line 132
    check-cast v16, Landroid/accounts/Account;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :pswitch_9
    invoke-static {v1, v2}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    goto :goto_1

    .line 140
    :pswitch_a
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 141
    .line 142
    invoke-static {v1, v2, v3}, Ljb9;->s(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    move-object v14, v2

    .line 147
    check-cast v14, [Lcom/google/android/gms/common/api/Scope;

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :pswitch_b
    invoke-static {v1, v2}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v2, :cond_0

    .line 159
    .line 160
    move-object v13, v5

    .line 161
    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    add-int/2addr v3, v2

    .line 167
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 168
    .line 169
    .line 170
    move-object v13, v4

    .line 171
    goto :goto_1

    .line 172
    :pswitch_c
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    goto :goto_1

    .line 177
    :pswitch_d
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    goto :goto_1

    .line 182
    :pswitch_e
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    goto :goto_1

    .line 187
    :pswitch_f
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    goto :goto_1

    .line 192
    :cond_1
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 193
    .line 194
    .line 195
    new-instance v8, Lzw3;

    .line 196
    .line 197
    invoke-direct/range {v8 .. v22}, Lzw3;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Ly53;[Ly53;ZIZLjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-object v8

    .line 201
    :pswitch_10
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    move-object v8, v5

    .line 206
    move v9, v7

    .line 207
    move-object v7, v8

    .line 208
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    if-ge v10, v0, :cond_6

    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    int-to-char v11, v10

    .line 219
    if-eq v11, v6, :cond_5

    .line 220
    .line 221
    if-eq v11, v4, :cond_4

    .line 222
    .line 223
    if-eq v11, v3, :cond_3

    .line 224
    .line 225
    if-eq v11, v2, :cond_2

    .line 226
    .line 227
    invoke-static {v1, v10}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_2
    sget-object v8, Lis1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 232
    .line 233
    invoke-static {v1, v10, v8}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    check-cast v8, Lis1;

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_3
    invoke-static {v1, v10}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    goto :goto_2

    .line 245
    :cond_4
    sget-object v7, Ly53;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 246
    .line 247
    invoke-static {v1, v10, v7}, Ljb9;->s(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    check-cast v7, [Ly53;

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_5
    invoke-static {v1, v10}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    goto :goto_2

    .line 259
    :cond_6
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 260
    .line 261
    .line 262
    new-instance v0, Ljo9;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 265
    .line 266
    .line 267
    iput-object v5, v0, Ljo9;->a:Landroid/os/Bundle;

    .line 268
    .line 269
    iput-object v7, v0, Ljo9;->b:[Ly53;

    .line 270
    .line 271
    iput v9, v0, Ljo9;->c:I

    .line 272
    .line 273
    iput-object v8, v0, Ljo9;->d:Lis1;

    .line 274
    .line 275
    return-object v0

    .line 276
    :pswitch_11
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    move v5, v7

    .line 281
    move v8, v5

    .line 282
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    if-ge v9, v0, :cond_a

    .line 287
    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    int-to-char v10, v9

    .line 293
    if-eq v10, v6, :cond_9

    .line 294
    .line 295
    if-eq v10, v4, :cond_8

    .line 296
    .line 297
    if-eq v10, v3, :cond_7

    .line 298
    .line 299
    invoke-static {v1, v9}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_7
    invoke-static {v1, v9, v2}, Ljb9;->n0(Landroid/os/Parcel;II)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    int-to-short v8, v8

    .line 311
    goto :goto_3

    .line 312
    :cond_8
    invoke-static {v1, v9, v2}, Ljb9;->n0(Landroid/os/Parcel;II)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    int-to-short v5, v5

    .line 320
    goto :goto_3

    .line 321
    :cond_9
    invoke-static {v1, v9}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    goto :goto_3

    .line 326
    :cond_a
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 327
    .line 328
    .line 329
    new-instance v0, Lpi8;

    .line 330
    .line 331
    invoke-direct {v0, v7, v5, v8}, Lpi8;-><init>(ISS)V

    .line 332
    .line 333
    .line 334
    return-object v0

    .line 335
    :pswitch_12
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    move-object v6, v5

    .line 340
    move-object v7, v6

    .line 341
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-ge v8, v0, :cond_e

    .line 346
    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    int-to-char v9, v8

    .line 352
    if-eq v9, v4, :cond_d

    .line 353
    .line 354
    if-eq v9, v3, :cond_c

    .line 355
    .line 356
    if-eq v9, v2, :cond_b

    .line 357
    .line 358
    invoke-static {v1, v8}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 359
    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_b
    invoke-static {v1, v8}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    goto :goto_4

    .line 367
    :cond_c
    invoke-static {v1, v8}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    goto :goto_4

    .line 372
    :cond_d
    invoke-static {v1, v8}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    goto :goto_4

    .line 377
    :cond_e
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 378
    .line 379
    .line 380
    new-instance v0, Lua6;

    .line 381
    .line 382
    invoke-direct {v0, v5, v6, v7}, Lua6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    return-object v0

    .line 386
    :pswitch_13
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-ge v2, v0, :cond_10

    .line 395
    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    int-to-char v3, v2

    .line 401
    if-eq v3, v6, :cond_f

    .line 402
    .line 403
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 404
    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_f
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    goto :goto_5

    .line 412
    :cond_10
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 413
    .line 414
    .line 415
    new-instance v0, Lx1a;

    .line 416
    .line 417
    invoke-direct {v0, v7}, Lx1a;-><init>(Z)V

    .line 418
    .line 419
    .line 420
    return-object v0

    .line 421
    :pswitch_14
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    move-object v2, v5

    .line 426
    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    if-ge v8, v0, :cond_14

    .line 431
    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    int-to-char v9, v8

    .line 437
    if-eq v9, v6, :cond_13

    .line 438
    .line 439
    if-eq v9, v4, :cond_12

    .line 440
    .line 441
    if-eq v9, v3, :cond_11

    .line 442
    .line 443
    invoke-static {v1, v8}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 444
    .line 445
    .line 446
    goto :goto_6

    .line 447
    :cond_11
    invoke-static {v1, v8}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 448
    .line 449
    .line 450
    move-result v7

    .line 451
    goto :goto_6

    .line 452
    :cond_12
    invoke-static {v1, v8}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    goto :goto_6

    .line 457
    :cond_13
    sget-object v5, Llf7;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 458
    .line 459
    invoke-static {v1, v8, v5}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    check-cast v5, Llf7;

    .line 464
    .line 465
    goto :goto_6

    .line 466
    :cond_14
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 467
    .line 468
    .line 469
    new-instance v0, Lkx6;

    .line 470
    .line 471
    invoke-direct {v0, v5, v2, v7}, Lkx6;-><init>(Llf7;Ljava/lang/String;I)V

    .line 472
    .line 473
    .line 474
    return-object v0

    .line 475
    :pswitch_15
    new-instance v0, Lj38;

    .line 476
    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 486
    .line 487
    .line 488
    move-result v4

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    invoke-direct {v0, v2, v3, v4, v1}, Lj38;-><init>(IIII)V

    .line 494
    .line 495
    .line 496
    return-object v0

    .line 497
    :pswitch_16
    new-instance v0, Leu7;

    .line 498
    .line 499
    invoke-direct {v0, v1}, Leu7;-><init>(Landroid/os/Parcel;)V

    .line 500
    .line 501
    .line 502
    return-object v0

    .line 503
    :pswitch_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 513
    .line 514
    .line 515
    :goto_7
    if-eq v7, v0, :cond_15

    .line 516
    .line 517
    sget-object v3, Lp17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 518
    .line 519
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    add-int/lit8 v7, v7, 0x1

    .line 527
    .line 528
    goto :goto_7

    .line 529
    :cond_15
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    new-instance v1, Lq17;

    .line 534
    .line 535
    invoke-direct {v1, v2, v0}, Lq17;-><init>(Ljava/util/ArrayList;I)V

    .line 536
    .line 537
    .line 538
    return-object v1

    .line 539
    :pswitch_18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    new-instance v3, Le17;

    .line 543
    .line 544
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 545
    .line 546
    .line 547
    move-result-wide v4

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 549
    .line 550
    .line 551
    move-result-wide v6

    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 553
    .line 554
    .line 555
    move-result v8

    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 557
    .line 558
    .line 559
    move-result v9

    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v10

    .line 564
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 565
    .line 566
    .line 567
    move-result v11

    .line 568
    invoke-direct/range {v3 .. v11}, Le17;-><init>(JJIILjava/lang/String;I)V

    .line 569
    .line 570
    .line 571
    return-object v3

    .line 572
    :pswitch_19
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    if-ge v2, v0, :cond_16

    .line 581
    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 587
    .line 588
    .line 589
    goto :goto_8

    .line 590
    :cond_16
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 591
    .line 592
    .line 593
    new-instance v0, Lci6;

    .line 594
    .line 595
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 596
    .line 597
    .line 598
    return-object v0

    .line 599
    :pswitch_1a
    new-instance v0, Ld46;

    .line 600
    .line 601
    invoke-direct {v0, v1}, Ld46;-><init>(Landroid/os/Parcel;)V

    .line 602
    .line 603
    .line 604
    return-object v0

    .line 605
    :pswitch_1b
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    if-ge v2, v0, :cond_18

    .line 614
    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    int-to-char v3, v2

    .line 620
    if-eq v3, v6, :cond_17

    .line 621
    .line 622
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 623
    .line 624
    .line 625
    goto :goto_9

    .line 626
    :cond_17
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 627
    .line 628
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    move-object v5, v2

    .line 633
    check-cast v5, Landroid/app/PendingIntent;

    .line 634
    .line 635
    goto :goto_9

    .line 636
    :cond_18
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 637
    .line 638
    .line 639
    new-instance v0, Luy5;

    .line 640
    .line 641
    invoke-direct {v0, v5}, Luy5;-><init>(Landroid/app/PendingIntent;)V

    .line 642
    .line 643
    .line 644
    return-object v0

    .line 645
    :pswitch_1c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 649
    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    if-nez v2, :cond_19

    .line 655
    .line 656
    move-object v2, v5

    .line 657
    goto :goto_a

    .line 658
    :cond_19
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 667
    .line 668
    .line 669
    move-result v3

    .line 670
    if-nez v3, :cond_1a

    .line 671
    .line 672
    move-object v3, v5

    .line 673
    goto :goto_b

    .line 674
    :cond_1a
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    if-nez v4, :cond_1b

    .line 687
    .line 688
    goto :goto_c

    .line 689
    :cond_1b
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 694
    .line 695
    .line 696
    move-result-object v5

    .line 697
    :goto_c
    invoke-direct {v0, v2, v3, v5}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 698
    .line 699
    .line 700
    return-object v0

    .line 701
    :pswitch_1d
    new-instance v0, Ld25;

    .line 702
    .line 703
    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    iput-object v2, v0, Ld25;->a:Ljava/lang/String;

    .line 711
    .line 712
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    iput v2, v0, Ld25;->c:F

    .line 717
    .line 718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    if-ne v2, v6, :cond_1c

    .line 723
    .line 724
    goto :goto_d

    .line 725
    :cond_1c
    move v6, v7

    .line 726
    :goto_d
    iput-boolean v6, v0, Ld25;->d:Z

    .line 727
    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    iput-object v2, v0, Ld25;->e:Ljava/lang/String;

    .line 733
    .line 734
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 735
    .line 736
    .line 737
    move-result v2

    .line 738
    iput v2, v0, Ld25;->f:I

    .line 739
    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 741
    .line 742
    .line 743
    move-result v1

    .line 744
    iput v1, v0, Ld25;->k:I

    .line 745
    .line 746
    return-object v0

    .line 747
    :pswitch_1e
    new-instance v0, Lxu4;

    .line 748
    .line 749
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 753
    .line 754
    .line 755
    move-result v2

    .line 756
    iput v2, v0, Lxu4;->a:I

    .line 757
    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    iput v2, v0, Lxu4;->b:I

    .line 763
    .line 764
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 765
    .line 766
    .line 767
    move-result v1

    .line 768
    if-ne v1, v6, :cond_1d

    .line 769
    .line 770
    goto :goto_e

    .line 771
    :cond_1d
    move v6, v7

    .line 772
    :goto_e
    iput-boolean v6, v0, Lxu4;->c:Z

    .line 773
    .line 774
    return-object v0

    .line 775
    :pswitch_1f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    new-instance v0, Lrd4;

    .line 779
    .line 780
    const-class v2, Landroid/content/IntentSender;

    .line 781
    .line 782
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 791
    .line 792
    .line 793
    check-cast v2, Landroid/content/IntentSender;

    .line 794
    .line 795
    const-class v3, Landroid/content/Intent;

    .line 796
    .line 797
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 798
    .line 799
    .line 800
    move-result-object v3

    .line 801
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 802
    .line 803
    .line 804
    move-result-object v3

    .line 805
    check-cast v3, Landroid/content/Intent;

    .line 806
    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 808
    .line 809
    .line 810
    move-result v4

    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    invoke-direct {v0, v2, v3, v4, v1}, Lrd4;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 816
    .line 817
    .line 818
    return-object v0

    .line 819
    :pswitch_20
    new-instance v0, Lvr3;

    .line 820
    .line 821
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 822
    .line 823
    .line 824
    iput-object v5, v0, Lvr3;->e:Ljava/lang/String;

    .line 825
    .line 826
    new-instance v2, Ljava/util/ArrayList;

    .line 827
    .line 828
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .line 830
    .line 831
    iput-object v2, v0, Lvr3;->f:Ljava/util/ArrayList;

    .line 832
    .line 833
    new-instance v2, Ljava/util/ArrayList;

    .line 834
    .line 835
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .line 837
    .line 838
    iput-object v2, v0, Lvr3;->k:Ljava/util/ArrayList;

    .line 839
    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    iput-object v2, v0, Lvr3;->a:Ljava/util/ArrayList;

    .line 845
    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    iput-object v2, v0, Lvr3;->b:Ljava/util/ArrayList;

    .line 851
    .line 852
    sget-object v2, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 853
    .line 854
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    check-cast v2, [Landroidx/fragment/app/b;

    .line 859
    .line 860
    iput-object v2, v0, Lvr3;->c:[Landroidx/fragment/app/b;

    .line 861
    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 863
    .line 864
    .line 865
    move-result v2

    .line 866
    iput v2, v0, Lvr3;->d:I

    .line 867
    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    iput-object v2, v0, Lvr3;->e:Ljava/lang/String;

    .line 873
    .line 874
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    iput-object v2, v0, Lvr3;->f:Ljava/util/ArrayList;

    .line 879
    .line 880
    sget-object v2, Lzj0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 881
    .line 882
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    iput-object v2, v0, Lvr3;->k:Ljava/util/ArrayList;

    .line 887
    .line 888
    sget-object v2, Lrr3;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 889
    .line 890
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    iput-object v1, v0, Lvr3;->n:Ljava/util/ArrayList;

    .line 895
    .line 896
    return-object v0

    .line 897
    :pswitch_21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 901
    .line 902
    .line 903
    move-result v0

    .line 904
    if-nez v0, :cond_1e

    .line 905
    .line 906
    goto :goto_10

    .line 907
    :cond_1e
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 912
    .line 913
    invoke-direct {v5, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 914
    .line 915
    .line 916
    :goto_f
    if-eq v7, v0, :cond_1f

    .line 917
    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    sget-object v3, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 923
    .line 924
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    invoke-virtual {v5, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    add-int/lit8 v7, v7, 0x1

    .line 932
    .line 933
    goto :goto_f

    .line 934
    :cond_1f
    :goto_10
    new-instance v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 935
    .line 936
    invoke-direct {v0, v5}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;-><init>(Ljava/util/Map;)V

    .line 937
    .line 938
    .line 939
    return-object v0

    .line 940
    :pswitch_22
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 941
    .line 942
    .line 943
    move-result v0

    .line 944
    :goto_11
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 945
    .line 946
    .line 947
    move-result v2

    .line 948
    if-ge v2, v0, :cond_21

    .line 949
    .line 950
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 951
    .line 952
    .line 953
    move-result v2

    .line 954
    int-to-char v3, v2

    .line 955
    if-eq v3, v6, :cond_20

    .line 956
    .line 957
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 958
    .line 959
    .line 960
    goto :goto_11

    .line 961
    :cond_20
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 962
    .line 963
    .line 964
    move-result v7

    .line 965
    goto :goto_11

    .line 966
    :cond_21
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 967
    .line 968
    .line 969
    new-instance v0, Lb91;

    .line 970
    .line 971
    invoke-direct {v0, v7}, Lb91;-><init>(Z)V

    .line 972
    .line 973
    .line 974
    return-object v0

    .line 975
    :pswitch_23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 976
    .line 977
    .line 978
    new-instance v8, Lk30;

    .line 979
    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v9

    .line 984
    sget-object v0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 985
    .line 986
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    move-object v10, v0

    .line 991
    check-cast v10, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 992
    .line 993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 994
    .line 995
    .line 996
    move-result v11

    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 998
    .line 999
    .line 1000
    move-result v12

    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1002
    .line 1003
    .line 1004
    move-result v0

    .line 1005
    if-eqz v0, :cond_22

    .line 1006
    .line 1007
    move v13, v6

    .line 1008
    goto :goto_12

    .line 1009
    :cond_22
    move v13, v7

    .line 1010
    :goto_12
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1011
    .line 1012
    .line 1013
    move-result v14

    .line 1014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1015
    .line 1016
    .line 1017
    move-result v15

    .line 1018
    invoke-direct/range {v8 .. v15}, Lk30;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/Config;IIZII)V

    .line 1019
    .line 1020
    .line 1021
    return-object v8

    .line 1022
    :pswitch_24
    new-instance v0, Lgp;

    .line 1023
    .line 1024
    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1028
    .line 1029
    .line 1030
    move-result v1

    .line 1031
    if-eqz v1, :cond_23

    .line 1032
    .line 1033
    goto :goto_13

    .line 1034
    :cond_23
    move v6, v7

    .line 1035
    :goto_13
    iput-boolean v6, v0, Lgp;->a:Z

    .line 1036
    .line 1037
    return-object v0

    .line 1038
    :pswitch_25
    new-instance v0, Ln8;

    .line 1039
    .line 1040
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1044
    .line 1045
    .line 1046
    move-result v1

    .line 1047
    iput v1, v0, Ln8;->a:I

    .line 1048
    .line 1049
    return-object v0

    .line 1050
    nop

    .line 1051
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
    .end packed-switch

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lm8;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Laz0;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lzw3;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Ljo9;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lpi8;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lua6;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lx1a;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lkx6;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lj38;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Leu7;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lq17;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Le17;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lci6;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Ld46;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Luy5;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Ld25;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    new-array p0, p1, [Lxu4;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    new-array p0, p1, [Lrd4;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    new-array p0, p1, [Lvr3;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_12
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_13
    new-array p0, p1, [Lb91;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_14
    new-array p0, p1, [Lk30;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_15
    new-array p0, p1, [Lgp;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_16
    new-array p0, p1, [Ln8;

    .line 76
    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
