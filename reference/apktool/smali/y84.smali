.class public abstract Ly84;
.super Landroid/os/Binder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lz84;


# static fields
.field static final TRANSACTION_cancelSba:I = 0xf

.field static final TRANSACTION_createSba:I = 0xc

.field static final TRANSACTION_extractSba:I = 0xd

.field static final TRANSACTION_extractTar:I = 0xe

.field static final TRANSACTION_getPackageArchiveInfo:I = 0x3

.field static final TRANSACTION_getParcelFileDescriptor:I = 0x4

.field static final TRANSACTION_getPid:I = 0x1

.field static final TRANSACTION_getSbaNativeVersion:I = 0x5

.field static final TRANSACTION_getSbaResult:I = 0x10

.field static final TRANSACTION_getUid:I = 0x2

.field static final TRANSACTION_isSbaAegis256Available:I = 0x6

.field static final TRANSACTION_isSbaFile:I = 0x7

.field static final TRANSACTION_listSbaTarEntries:I = 0xa

.field static final TRANSACTION_listTarEntries:I = 0xb

.field static final TRANSACTION_readSbaInfo:I = 0x8

.field static final TRANSACTION_readSbaInfoPage:I = 0x9


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lz84;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "org.swiftapps.rootservice.IRootAidlInterface"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lz84;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lz84;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lx84;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Lx84;->a:Landroid/os/IBinder;

    .line 26
    .line 27
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "org.swiftapps.rootservice.IRootAidlInterface"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    invoke-interface {p0, p1, p2}, Lz84;->getSbaResult(J)Lo17;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    .line 41
    .line 42
    invoke-static {p3, p0, v1}, Ll73;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    invoke-interface {p0, p1, p2}, Lz84;->cancelSba(J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_2
    sget-object p1, Ls17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    .line 61
    invoke-static {p2, p1}, Ll73;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ls17;

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2}, Llz6;->a(Landroid/os/IBinder;)Le94;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-interface {p0, p1, p2}, Lz84;->extractTar(Ls17;Le94;)J

    .line 76
    .line 77
    .line 78
    move-result-wide p0

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :pswitch_3
    sget-object p1, Lm17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 88
    .line 89
    invoke-static {p2, p1}, Ll73;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lm17;

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-static {p2}, Llz6;->a(Landroid/os/IBinder;)Le94;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-interface {p0, p1, p2}, Lz84;->extractSba(Lm17;Le94;)J

    .line 104
    .line 105
    .line 106
    move-result-wide p0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :pswitch_4
    sget-object p1, Li17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    .line 117
    invoke-static {p2, p1}, Ll73;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Li17;

    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-static {p2}, Llz6;->a(Landroid/os/IBinder;)Le94;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-interface {p0, p1, p2}, Lz84;->createSba(Li17;Le94;)J

    .line 132
    .line 133
    .line 134
    move-result-wide p0

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 148
    .line 149
    .line 150
    move-result p4

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    invoke-interface {p0, p1, p4, p2}, Lz84;->listTarEntries(Ljava/lang/String;II)Lq17;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    .line 161
    .line 162
    invoke-static {p3, p0, v1}, Ll73;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    move-object v2, p0

    .line 188
    invoke-interface/range {v2 .. v7}, Lz84;->listSbaTarEntries(Ljava/lang/String;Ljava/lang/String;[CII)Lq17;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    .line 194
    .line 195
    invoke-static {p3, p0, v1}, Ll73;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :pswitch_7
    move-object v2, p0

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    invoke-interface {v2, p0, p1, p2}, Lz84;->readSbaInfoPage(Ljava/lang/String;II)Lf17;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    .line 219
    .line 220
    invoke-static {p3, p0, v1}, Ll73;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_8
    move-object v2, p0

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-interface {v2, p0}, Lz84;->readSbaInfo(Ljava/lang/String;)Lf17;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    .line 236
    .line 237
    invoke-static {p3, p0, v1}, Ll73;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :pswitch_9
    move-object v2, p0

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-interface {v2, p0}, Lz84;->isSbaFile(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :pswitch_a
    move-object v2, p0

    .line 259
    invoke-interface {v2}, Lz84;->isSbaAegis256Available()Z

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    .line 268
    .line 269
    goto :goto_0

    .line 270
    :pswitch_b
    move-object v2, p0

    .line 271
    invoke-interface {v2}, Lz84;->getSbaNativeVersion()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_0

    .line 282
    :pswitch_c
    move-object v2, p0

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-interface {v2, p0, p1}, Lz84;->getParcelFileDescriptor(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    .line 297
    .line 298
    invoke-static {p3, p0, v1}, Ll73;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 299
    .line 300
    .line 301
    goto :goto_0

    .line 302
    :pswitch_d
    move-object v2, p0

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    invoke-interface {v2, p0, p1}, Lz84;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    .line 317
    .line 318
    invoke-static {p3, p0, v1}, Ll73;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 319
    .line 320
    .line 321
    goto :goto_0

    .line 322
    :pswitch_e
    move-object v2, p0

    .line 323
    invoke-interface {v2}, Lz84;->getUid()I

    .line 324
    .line 325
    .line 326
    move-result p0

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    .line 332
    .line 333
    goto :goto_0

    .line 334
    :pswitch_f
    move-object v2, p0

    .line 335
    invoke-interface {v2}, Lz84;->getPid()I

    .line 336
    .line 337
    .line 338
    move-result p0

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    .line 344
    .line 345
    :goto_0
    return v1

    .line 346
    nop

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
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
