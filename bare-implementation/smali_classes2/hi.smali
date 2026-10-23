.class public final synthetic Lhi;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhi;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Lhi;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Byte;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    and-int/lit16 p0, p0, 0xff

    .line 17
    .line 18
    invoke-static {v2}, Lly8;->j(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v1, p0}, Lnq7;->o0(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_0
    return-object p1

    .line 34
    :pswitch_1
    check-cast p1, Ljd2;

    .line 35
    .line 36
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->c(Ljd2;)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object p0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    array-length p1, p0

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    .line 60
    .line 61
    array-length p1, p0

    .line 62
    :goto_0
    if-ge v0, p1, :cond_5

    .line 63
    .line 64
    aget-byte v4, p0, v0

    .line 65
    .line 66
    and-int/lit16 v4, v4, 0xff

    .line 67
    .line 68
    int-to-char v5, v4

    .line 69
    sget-object v6, Lst5;->f:Lokhttp3/MediaType;

    .line 70
    .line 71
    const/16 v6, 0x41

    .line 72
    .line 73
    if-gt v6, v5, :cond_0

    .line 74
    .line 75
    const/16 v6, 0x5b

    .line 76
    .line 77
    if-ge v5, v6, :cond_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    const/16 v6, 0x61

    .line 81
    .line 82
    if-gt v6, v5, :cond_1

    .line 83
    .line 84
    const/16 v6, 0x7b

    .line 85
    .line 86
    if-ge v5, v6, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const/16 v6, 0x30

    .line 90
    .line 91
    if-gt v6, v5, :cond_2

    .line 92
    .line 93
    const/16 v6, 0x3a

    .line 94
    .line 95
    if-ge v5, v6, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const/16 v6, 0x2d

    .line 99
    .line 100
    if-eq v5, v6, :cond_4

    .line 101
    .line 102
    const/16 v6, 0x2e

    .line 103
    .line 104
    if-eq v5, v6, :cond_4

    .line 105
    .line 106
    const/16 v6, 0x5f

    .line 107
    .line 108
    if-eq v5, v6, :cond_4

    .line 109
    .line 110
    const/16 v6, 0x7e

    .line 111
    .line 112
    if-ne v5, v6, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    const/16 v5, 0x25

    .line 116
    .line 117
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Lly8;->j(I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v4}, Lnq7;->o0(ILjava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_3
    check-cast p1, Lvi1;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iget-object p0, p1, Lvi1;->b:Lfd1;

    .line 164
    .line 165
    invoke-virtual {p1}, Lvi1;->a()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p0, "@"

    .line 178
    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    return-object p0

    .line 200
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    new-array p0, p0, [B

    .line 207
    .line 208
    new-instance p1, Ljava/security/SecureRandom;

    .line 209
    .line 210
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 214
    .line 215
    .line 216
    return-object p0

    .line 217
    :pswitch_6
    move-object v0, p1

    .line 218
    check-cast v0, Lmd1;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    sget-object v2, Lrd1;->RUNNING:Lrd1;

    .line 224
    .line 225
    const/4 v5, 0x0

    .line 226
    const/4 v6, 0x3

    .line 227
    const/4 v1, 0x0

    .line 228
    const/4 v3, 0x0

    .line 229
    const/4 v4, 0x0

    .line 230
    invoke-static/range {v0 .. v6}, Lmd1;->a(Lmd1;ZLrd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Lmd1;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :pswitch_7
    check-cast p1, Ldd1;

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Ldd1;->getReleaseState()Lxi6;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    sget-object p1, Lxi6;->Dev:Lxi6;

    .line 245
    .line 246
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    if-gtz p0, :cond_6

    .line 251
    .line 252
    const/4 v0, 0x1

    .line 253
    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    return-object p0

    .line 258
    :pswitch_8
    check-cast p1, Ljava/io/File;

    .line 259
    .line 260
    invoke-static {p1}, Lji;->c(Ljava/io/File;)Ljava/lang/CharSequence;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    return-object p0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
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
