.class public final Lxg;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lxg;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget p0, p0, Lxg;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Let8;

    .line 10
    .line 11
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p2, Let8;

    .line 16
    .line 17
    invoke-virtual {p2}, Let8;->getSSID()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :pswitch_0
    check-cast p2, Lyn8;

    .line 27
    .line 28
    iget-wide v0, p2, Lyn8;->b:J

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p1, Lyn8;

    .line 35
    .line 36
    iget-wide p1, p1, Lyn8;->b:J

    .line 37
    .line 38
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :pswitch_1
    check-cast p1, Lem8;

    .line 48
    .line 49
    check-cast p2, Lem8;

    .line 50
    .line 51
    iget p0, p1, Lem8;->b:I

    .line 52
    .line 53
    iget p1, p2, Lem8;->b:I

    .line 54
    .line 55
    sub-int/2addr p0, p1

    .line 56
    return p0

    .line 57
    :pswitch_2
    check-cast p1, Lej7;

    .line 58
    .line 59
    check-cast p2, Lej7;

    .line 60
    .line 61
    iget p0, p1, Lej7;->b:I

    .line 62
    .line 63
    iget p1, p2, Lej7;->b:I

    .line 64
    .line 65
    sub-int/2addr p0, p1

    .line 66
    return p0

    .line 67
    :pswitch_3
    check-cast p1, Ljava/lang/Comparable;

    .line 68
    .line 69
    check-cast p2, Ljava/lang/Comparable;

    .line 70
    .line 71
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :pswitch_4
    check-cast p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 77
    .line 78
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 87
    .line 88
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    return p0

    .line 101
    :pswitch_5
    check-cast p1, Lyz3;

    .line 102
    .line 103
    iget-wide p0, p1, Lyz3;->d:J

    .line 104
    .line 105
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p2, Lyz3;

    .line 110
    .line 111
    iget-wide p1, p2, Lyz3;->d:J

    .line 112
    .line 113
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    return p0

    .line 122
    :pswitch_6
    check-cast p2, Ljr7;

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move p2, v0

    .line 132
    move v1, p2

    .line 133
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    const/16 v3, 0x2f

    .line 138
    .line 139
    if-ge p2, v2, :cond_1

    .line 140
    .line 141
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-ne v2, v3, :cond_0

    .line 146
    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    check-cast p1, Ljr7;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move p2, v0

    .line 166
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ge v0, v1, :cond_3

    .line 171
    .line 172
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-ne v1, v3, :cond_2

    .line 177
    .line 178
    add-int/lit8 p2, p2, 0x1

    .line 179
    .line 180
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    return p0

    .line 192
    :pswitch_7
    check-cast p1, Lm61;

    .line 193
    .line 194
    check-cast p2, Lm61;

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Lm61;->a(Lm61;)I

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    return p0

    .line 201
    :pswitch_8
    check-cast p1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 202
    .line 203
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    check-cast p2, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 208
    .line 209
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    return p0

    .line 218
    :pswitch_9
    check-cast p1, Lr00;

    .line 219
    .line 220
    iget-object p0, p1, Lr00;->a:Ljava/lang/String;

    .line 221
    .line 222
    check-cast p2, Lr00;

    .line 223
    .line 224
    iget-object p1, p2, Lr00;->a:Ljava/lang/String;

    .line 225
    .line 226
    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    return p0

    .line 231
    :pswitch_a
    check-cast p1, Lq63;

    .line 232
    .line 233
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    check-cast p2, Lq63;

    .line 238
    .line 239
    invoke-virtual {p2}, Lq63;->p()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 244
    .line 245
    .line 246
    move-result p0

    .line 247
    return p0

    .line 248
    :pswitch_b
    check-cast p1, Lq63;

    .line 249
    .line 250
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    const-string p1, "base.apk"

    .line 255
    .line 256
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    const/4 v2, 0x1

    .line 261
    const-string v3, "base-master.apk"

    .line 262
    .line 263
    if-nez v1, :cond_5

    .line 264
    .line 265
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result p0

    .line 269
    if-eqz p0, :cond_4

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_4
    move p0, v0

    .line 273
    goto :goto_3

    .line 274
    :cond_5
    :goto_2
    move p0, v2

    .line 275
    :goto_3
    xor-int/2addr p0, v2

    .line 276
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    check-cast p2, Lq63;

    .line 281
    .line 282
    invoke-virtual {p2}, Lq63;->p()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-nez p1, :cond_6

    .line 291
    .line 292
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_7

    .line 297
    .line 298
    :cond_6
    move v0, v2

    .line 299
    :cond_7
    xor-int/lit8 p1, v0, 0x1

    .line 300
    .line 301
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    return p0

    .line 310
    nop

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
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
