.class public final synthetic Lq93;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ls93;

.field public final synthetic b:Ljava/text/Collator;


# direct methods
.method public synthetic constructor <init>(Ls93;Ljava/text/Collator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq93;->a:Ls93;

    .line 5
    .line 6
    iput-object p2, p0, Lq93;->b:Ljava/text/Collator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Lq63;

    .line 2
    .line 3
    check-cast p2, Lq63;

    .line 4
    .line 5
    iget-object v0, p0, Lq93;->a:Ls93;

    .line 6
    .line 7
    iget-boolean v1, v0, Ls93;->c:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lq63;->x()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p2}, Lq63;->x()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eq v1, v3, :cond_0

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    goto :goto_4

    .line 25
    :cond_0
    iget-boolean v1, v0, Ls93;->d:Z

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_7

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const-string v5, "."

    .line 50
    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    invoke-static {v1, v5, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v1, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    move v1, v2

    .line 63
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lq63;->p()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p2}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v6}, Ljava/io/File;->isHidden()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_4

    .line 83
    .line 84
    invoke-static {v4, v5, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move v4, v3

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    :goto_2
    move v4, v2

    .line 94
    :goto_3
    if-eq v1, v4, :cond_7

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    :cond_5
    return v2

    .line 99
    :cond_6
    :goto_4
    const/4 p0, -0x1

    .line 100
    return p0

    .line 101
    :cond_7
    iget-object v0, v0, Ls93;->a:Lr93;

    .line 102
    .line 103
    sget-object v1, Lt93;->a:[I

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    aget v0, v1, v0

    .line 110
    .line 111
    iget-object p0, p0, Lq93;->b:Ljava/text/Collator;

    .line 112
    .line 113
    if-eq v0, v2, :cond_10

    .line 114
    .line 115
    const/4 v1, 0x2

    .line 116
    if-eq v0, v1, :cond_c

    .line 117
    .line 118
    const/4 v1, 0x3

    .line 119
    if-eq v0, v1, :cond_a

    .line 120
    .line 121
    const/4 v1, 0x4

    .line 122
    if-ne v0, v1, :cond_9

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Lod2;->f(Lq63;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {p2}, Lod2;->f(Lq63;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    return v0

    .line 145
    :cond_8
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p2}, Lq63;->p()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_11

    .line 158
    .line 159
    return v0

    .line 160
    :cond_9
    invoke-static {}, Lq;->j()V

    .line 161
    .line 162
    .line 163
    return v3

    .line 164
    :cond_a
    invoke-virtual {p1}, Lq63;->z()J

    .line 165
    .line 166
    .line 167
    move-result-wide v0

    .line 168
    invoke-virtual {p2}, Lq63;->z()J

    .line 169
    .line 170
    .line 171
    move-result-wide v2

    .line 172
    invoke-static {v0, v1, v2, v3}, Lpe4;->g(JJ)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_b

    .line 177
    .line 178
    return v0

    .line 179
    :cond_b
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p2}, Lq63;->p()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_11

    .line 192
    .line 193
    return v0

    .line 194
    :cond_c
    invoke-virtual {p1}, Lq63;->y()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    const-wide/16 v1, 0x0

    .line 199
    .line 200
    if-eqz v0, :cond_d

    .line 201
    .line 202
    invoke-virtual {p1}, Lq63;->A()J

    .line 203
    .line 204
    .line 205
    move-result-wide v3

    .line 206
    goto :goto_5

    .line 207
    :cond_d
    move-wide v3, v1

    .line 208
    :goto_5
    invoke-virtual {p2}, Lq63;->y()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_e

    .line 213
    .line 214
    invoke-virtual {p2}, Lq63;->A()J

    .line 215
    .line 216
    .line 217
    move-result-wide v1

    .line 218
    :cond_e
    invoke-static {v3, v4, v1, v2}, Lpe4;->g(JJ)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_f

    .line 223
    .line 224
    return v0

    .line 225
    :cond_f
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p2}, Lq63;->p()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_11

    .line 238
    .line 239
    return v0

    .line 240
    :cond_10
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p2}, Lq63;->p()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_11

    .line 253
    .line 254
    return v0

    .line 255
    :cond_11
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p2}, Lq63;->v()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    return p0
.end method
