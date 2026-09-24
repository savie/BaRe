.class public abstract Lyz4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/LinkedHashSet;

.field public static final c:Lai6;

.field public static final d:Lai6;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ldd1;->SFTP:Ldd1;

    .line 2
    .line 3
    sget-object v1, Ldd1;->FTP:Ldd1;

    .line 4
    .line 5
    sget-object v2, Ldd1;->WebDav:Ldd1;

    .line 6
    .line 7
    sget-object v3, Ldd1;->S3:Ldd1;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Ldd1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lyz4;->a:Ljava/util/Set;

    .line 18
    .line 19
    sget-object v1, Ldd1;->SMB:Ldd1;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lsz8;->S(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lyz4;->b:Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    new-instance v0, Lai6;

    .line 28
    .line 29
    const-string v1, "\\d{1,3}(\\.\\d{1,3}){3}"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lai6;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lyz4;->c:Lai6;

    .line 35
    .line 36
    new-instance v0, Lai6;

    .line 37
    .line 38
    const-string v1, "[0-9a-fA-F:.]+"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lai6;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lyz4;->d:Lai6;

    .line 44
    .line 45
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {p0}, Lyz4;->c(Ljava/lang/String;)Lvz4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_12

    .line 7
    .line 8
    iget-object p0, p0, Lvz4;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, ".local"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {p0, v1, v2}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_0
    move v1, v0

    .line 22
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge v1, v3, :cond_11

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/16 v4, 0x2e

    .line 33
    .line 34
    if-eq v3, v4, :cond_2

    .line 35
    .line 36
    const/16 v4, 0x3a

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    sget-object v1, Lyz4;->c:Lai6;

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const-string v3, ":"

    .line 51
    .line 52
    invoke-static {p0, v3, v0}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    sget-object v3, Lyz4;->d:Lai6;

    .line 59
    .line 60
    invoke-virtual {v3, p0}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    move v3, v2

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v3, v0

    .line 69
    :goto_2
    const/4 v4, 0x0

    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_4
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 76
    .line 77
    .line 78
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    goto :goto_3

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    new-instance v1, Lbn6;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    move-object p0, v1

    .line 87
    :goto_3
    nop

    .line 88
    instance-of v1, p0, Lbn6;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    move-object v4, p0

    .line 94
    :goto_4
    check-cast v4, Ljava/net/InetAddress;

    .line 95
    .line 96
    :goto_5
    if-nez v4, :cond_6

    .line 97
    .line 98
    goto/16 :goto_a

    .line 99
    .line 100
    :cond_6
    instance-of p0, v4, Ljava/net/Inet4Address;

    .line 101
    .line 102
    const/16 v1, 0xfe

    .line 103
    .line 104
    if-eqz p0, :cond_f

    .line 105
    .line 106
    check-cast v4, Ljava/net/Inet4Address;

    .line 107
    .line 108
    const/16 p0, 0xff

    .line 109
    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v4}, Ljava/net/Inet4Address;->getAddress()[B

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    new-instance v5, Ljava/util/ArrayList;

    .line 122
    .line 123
    array-length v6, v4

    .line 124
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .line 126
    .line 127
    array-length v6, v4

    .line 128
    move v7, v0

    .line 129
    :goto_6
    if-ge v7, v6, :cond_7

    .line 130
    .line 131
    aget-byte v8, v4, v7

    .line 132
    .line 133
    and-int/2addr v8, p0

    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    add-int/lit8 v7, v7, 0x1

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_7
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    const/16 v6, 0xa

    .line 165
    .line 166
    if-ne p0, v6, :cond_8

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_8
    const/16 v6, 0x64

    .line 170
    .line 171
    if-ne p0, v6, :cond_9

    .line 172
    .line 173
    const/16 v6, 0x40

    .line 174
    .line 175
    if-gt v6, v4, :cond_9

    .line 176
    .line 177
    const/16 v6, 0x80

    .line 178
    .line 179
    if-ge v4, v6, :cond_9

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_9
    const/16 v6, 0xa9

    .line 183
    .line 184
    if-ne p0, v6, :cond_a

    .line 185
    .line 186
    if-ne v4, v1, :cond_a

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_a
    const/16 v1, 0xac

    .line 190
    .line 191
    if-ne p0, v1, :cond_b

    .line 192
    .line 193
    const/16 v1, 0x10

    .line 194
    .line 195
    if-gt v1, v4, :cond_b

    .line 196
    .line 197
    const/16 v1, 0x20

    .line 198
    .line 199
    if-ge v4, v1, :cond_b

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_b
    const/16 v1, 0xc0

    .line 203
    .line 204
    if-ne p0, v1, :cond_c

    .line 205
    .line 206
    const/16 v1, 0xa8

    .line 207
    .line 208
    if-ne v4, v1, :cond_c

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_c
    const/16 v1, 0xe0

    .line 212
    .line 213
    if-gt v1, p0, :cond_d

    .line 214
    .line 215
    const/16 v1, 0xf0

    .line 216
    .line 217
    if-ge p0, v1, :cond_d

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_d
    filled-new-array {v3, v3, v3, v3}, [Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    if-eqz p0, :cond_10

    .line 233
    .line 234
    :cond_e
    :goto_7
    move v0, v2

    .line 235
    goto :goto_8

    .line 236
    :cond_f
    instance-of p0, v4, Ljava/net/Inet6Address;

    .line 237
    .line 238
    if-eqz p0, :cond_10

    .line 239
    .line 240
    check-cast v4, Ljava/net/Inet6Address;

    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    if-nez p0, :cond_e

    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    if-nez p0, :cond_e

    .line 253
    .line 254
    invoke-virtual {v4}, Ljava/net/Inet6Address;->getAddress()[B

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    aget-byte p0, p0, v0

    .line 259
    .line 260
    and-int/2addr p0, v1

    .line 261
    const/16 v1, 0xfc

    .line 262
    .line 263
    if-ne p0, v1, :cond_10

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_10
    :goto_8
    return v0

    .line 267
    :cond_11
    :goto_9
    return v2

    .line 268
    :cond_12
    :goto_a
    return v0
.end method

.method public static b(Ldd1;Ljava/lang/String;II)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/16 v1, 0x25

    .line 6
    .line 7
    if-lt p2, v1, :cond_2

    .line 8
    .line 9
    if-lt p3, v1, :cond_2

    .line 10
    .line 11
    sget-object p2, Ldd1;->SMB:Ldd1;

    .line 12
    .line 13
    if-ne p0, p2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lyz4;->a(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    sget-object p2, Lyz4;->a:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    invoke-static {p1}, Lyz4;->a(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_2
    return v0
.end method

.method public static c(Ljava/lang/String;)Lvz4;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    const-string v1, ""

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    move-object p0, v1

    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_2
    const-string v2, "://"

    .line 28
    .line 29
    const/4 v3, 0x6

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static {p0, v2, v4, v4, v3}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ltz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x3

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move-object v3, v0

    .line 58
    :goto_1
    const-string v2, "/"

    .line 59
    .line 60
    invoke-static {p0, v2, p0}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v2, "?"

    .line 65
    .line 66
    invoke-static {p0, v2, p0}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v2, "#"

    .line 71
    .line 72
    invoke-static {p0, v2, p0}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string v2, "@"

    .line 77
    .line 78
    invoke-static {p0, v2, p0}, Lnq7;->A0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string v2, "["

    .line 91
    .line 92
    invoke-static {p0, v2, v4}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    const/16 v6, 0xa

    .line 97
    .line 98
    const-string v7, ":"

    .line 99
    .line 100
    if-eqz v5, :cond_4

    .line 101
    .line 102
    invoke-static {p0, v2, p0}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string v2, "]"

    .line 107
    .line 108
    invoke-static {p0, v2, p0}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {p0, v2, v1}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0, v7}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v6, p0}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    move-object v1, p0

    .line 125
    move-object p0, v4

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    move v1, v4

    .line 128
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-ge v4, v2, :cond_6

    .line 133
    .line 134
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    const/16 v5, 0x3a

    .line 139
    .line 140
    if-ne v2, v5, :cond_5

    .line 141
    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 143
    .line 144
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    const/4 v2, 0x1

    .line 148
    if-ne v1, v2, :cond_7

    .line 149
    .line 150
    invoke-static {p0, v7, p0}, Lnq7;->A0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v6, v1}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-eqz v1, :cond_8

    .line 159
    .line 160
    invoke-static {p0, v7, p0}, Lnq7;->F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    goto :goto_3

    .line 165
    :cond_7
    move-object v1, v0

    .line 166
    :cond_8
    :goto_3
    const-string v2, "%"

    .line 167
    .line 168
    invoke-static {p0, v2, p0}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-lez v2, :cond_9

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_9
    move-object p0, v0

    .line 188
    :goto_4
    if-eqz p0, :cond_a

    .line 189
    .line 190
    new-instance v0, Lvz4;

    .line 191
    .line 192
    invoke-direct {v0, v1, p0, v3}, Lvz4;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_a
    :goto_5
    return-object v0
.end method
