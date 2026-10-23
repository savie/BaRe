.class public final Ljc1;
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
    iput p1, p0, Ljc1;->a:I

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
    iget p0, p0, Ljc1;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Let8;

    .line 8
    .line 9
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p2, Let8;

    .line 14
    .line 15
    invoke-virtual {p2}, Let8;->getSSID()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object p2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 20
    .line 21
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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
    check-cast p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_name()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, ""

    .line 54
    .line 55
    if-nez p0, :cond_0

    .line 56
    .line 57
    move-object p0, p1

    .line 58
    :cond_0
    check-cast p2, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 59
    .line 60
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_name()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-nez p2, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object p1, p2

    .line 68
    :goto_0
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :pswitch_2
    check-cast p2, Lpa5;

    .line 74
    .line 75
    iget-wide v0, p2, Lpa5;->e:J

    .line 76
    .line 77
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p1, Lpa5;

    .line 82
    .line 83
    iget-wide p1, p1, Lpa5;->e:J

    .line 84
    .line 85
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    return p0

    .line 94
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .line 95
    .line 96
    move p0, v0

    .line 97
    move v1, p0

    .line 98
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    const/16 v3, 0x2f

    .line 103
    .line 104
    if-ge p0, v2, :cond_3

    .line 105
    .line 106
    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-ne v2, v3, :cond_2

    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p1, Ljava/lang/String;

    .line 122
    .line 123
    move p2, v0

    .line 124
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-ge v0, v1, :cond_5

    .line 129
    .line 130
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-ne v1, v3, :cond_4

    .line 135
    .line 136
    add-int/lit8 p2, p2, 0x1

    .line 137
    .line 138
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    return p0

    .line 150
    :pswitch_4
    check-cast p1, Lnt4;

    .line 151
    .line 152
    iget-object p0, p1, Lnt4;->a:Ljava/lang/String;

    .line 153
    .line 154
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 155
    .line 156
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    check-cast p2, Lnt4;

    .line 164
    .line 165
    iget-object p2, p2, Lnt4;->a:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    return p0

    .line 179
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    check-cast p1, Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    return p0

    .line 204
    :pswitch_6
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 205
    .line 206
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getUpdateDate()J

    .line 207
    .line 208
    .line 209
    move-result-wide p0

    .line 210
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    check-cast p2, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 215
    .line 216
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getUpdateDate()J

    .line 217
    .line 218
    .line 219
    move-result-wide p1

    .line 220
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    return p0

    .line 229
    :pswitch_7
    check-cast p1, Ldd1;

    .line 230
    .line 231
    invoke-virtual {p1}, Ldd1;->getReleaseState()Lxi6;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    sget-object p1, Lxi6;->TestOnly:Lxi6;

    .line 236
    .line 237
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    const/4 v1, 0x1

    .line 242
    if-gtz p0, :cond_6

    .line 243
    .line 244
    move p0, v1

    .line 245
    goto :goto_3

    .line 246
    :cond_6
    move p0, v0

    .line 247
    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    check-cast p2, Ldd1;

    .line 252
    .line 253
    invoke-virtual {p2}, Ldd1;->getReleaseState()Lxi6;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-virtual {p2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-gtz p1, :cond_7

    .line 262
    .line 263
    move v0, v1

    .line 264
    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 269
    .line 270
    .line 271
    move-result p0

    .line 272
    return p0

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
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
