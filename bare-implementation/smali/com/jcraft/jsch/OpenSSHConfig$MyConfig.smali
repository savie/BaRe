.class Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/ConfigRepository$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/OpenSSHConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyConfig"
.end annotation


# instance fields
.field public final a:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/OpenSSHConfig;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->a:Ljava/util/Vector;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/jcraft/jsch/OpenSSHConfig;->a:Ljava/util/Hashtable;

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/Vector;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 25
    .line 26
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-static {p2, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object v0, p1, Lcom/jcraft/jsch/OpenSSHConfig;->b:Ljava/util/Vector;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    if-le v1, v2, :cond_5

    .line 40
    .line 41
    move v1, v2

    .line 42
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ge v1, v3, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    const-string v4, "[ \t]"

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/4 v4, 0x0

    .line 61
    move v5, v4

    .line 62
    move v6, v5

    .line 63
    move v7, v6

    .line 64
    :goto_1
    array-length v8, v3

    .line 65
    if-ge v5, v8, :cond_3

    .line 66
    .line 67
    aget-object v8, v3, v5

    .line 68
    .line 69
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    const-string v9, "!"

    .line 74
    .line 75
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_0

    .line 80
    .line 81
    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    move v9, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_0
    move v9, v4

    .line 92
    :goto_2
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 93
    .line 94
    invoke-static {v8, v10}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-static {v8, p2}, Lcom/jcraft/jsch/Util;->l([B[B)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_2

    .line 103
    .line 104
    if-eqz v9, :cond_1

    .line 105
    .line 106
    move v7, v2

    .line 107
    goto :goto_3

    .line 108
    :cond_1
    move v6, v2

    .line 109
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    if-eqz v6, :cond_4

    .line 113
    .line 114
    if-nez v7, :cond_4

    .line 115
    .line 116
    iget-object v3, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->a:Ljava/util/Vector;

    .line 117
    .line 118
    iget-object v4, p1, Lcom/jcraft/jsch/OpenSSHConfig;->a:Ljava/util/Hashtable;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Ljava/util/Vector;

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_5
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/NumberFormatException;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "Error during parsing of "

    .line 6
    .line 7
    const-string v2, ": "

    .line 8
    .line 9
    invoke-static {v1, p0, v2}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-interface {v0, v1, p0, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->d:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, p1

    .line 17
    :goto_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v1

    .line 26
    :goto_1
    iget-object v4, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->a:Ljava/util/Vector;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x1

    .line 33
    if-ge v3, v5, :cond_4

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/util/Vector;

    .line 40
    .line 41
    move v5, v1

    .line 42
    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-ge v5, v7, :cond_2

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, [Ljava/lang/String;

    .line 53
    .line 54
    aget-object v8, v7, v1

    .line 55
    .line 56
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 57
    .line 58
    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_1

    .line 67
    .line 68
    aget-object v2, v7, v6

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    .line 81
    .line 82
    const-string p0, "SERVERALIVEINTERVAL"

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_5

    .line 89
    .line 90
    const-string p0, "CONNECTTIMEOUT"

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_6

    .line 97
    .line 98
    :cond_5
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    mul-int/lit16 p0, p0, 0x3e8

    .line 103
    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_5

    .line 109
    :catch_0
    move-exception p0

    .line 110
    invoke-static {p1, p0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->b(Ljava/lang/String;Ljava/lang/NumberFormatException;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    :goto_5
    sget-object p0, Lcom/jcraft/jsch/OpenSSHConfig;->c:Ljava/util/Set;

    .line 114
    .line 115
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_b

    .line 120
    .line 121
    if-eqz v2, :cond_b

    .line 122
    .line 123
    const-string p0, "+"

    .line 124
    .line 125
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    const-string v3, "^"

    .line 130
    .line 131
    const-string v4, "-"

    .line 132
    .line 133
    if-nez v0, :cond_7

    .line 134
    .line 135
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_7

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_b

    .line 146
    .line 147
    :cond_7
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    const-string v0, ","

    .line 160
    .line 161
    if-eqz p0, :cond_8

    .line 162
    .line 163
    invoke-static {p1, v0}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    goto :goto_7

    .line 183
    :cond_8
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-eqz p0, :cond_a

    .line 188
    .line 189
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    check-cast p0, Ljava/util/List;

    .line 206
    .line 207
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    array-length v2, p1

    .line 220
    :goto_6
    if-ge v1, v2, :cond_9

    .line 221
    .line 222
    aget-object v3, p1, v1

    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    add-int/lit8 v1, v1, 0x1

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_9
    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    goto :goto_7

    .line 239
    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    if-eqz p0, :cond_b

    .line 244
    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    :cond_b
    :goto_7
    return-object v2
.end method

.method public final getHostname()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Hostname"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPort()I
    .locals 2

    .line 1
    const-string v0, "Port"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-static {v0, p0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->b(Ljava/lang/String;Ljava/lang/NumberFormatException;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return v1
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "User"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "compression.s2c"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "compression.c2s"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    const-string p1, "no"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const-string p0, "zlib@openssh.com,zlib,none"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    :goto_1
    const-string p0, "none,zlib@openssh.com,zlib"

    .line 42
    .line 43
    return-object p0
.end method

.method public final getValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/Vector;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->a:Ljava/util/Vector;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-ge v2, v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/util/Vector;

    .line 27
    .line 28
    move v4, v1

    .line 29
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-ge v4, v5, :cond_1

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, [Ljava/lang/String;

    .line 40
    .line 41
    aget-object v6, v5, v1

    .line 42
    .line 43
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 44
    .line 45
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_0

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    aget-object v5, v5, v6

    .line 57
    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    new-array p0, p0, [Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-object p0
.end method
