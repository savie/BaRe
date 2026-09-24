.class public Lvr1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static g:J


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Lvr1;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljl4;

    const/4 v1, 0x0

    .line 57
    invoke-direct {v0, v1}, Ljl4;-><init>(I)V

    const/16 v2, 0x8

    .line 58
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, v0, Ljl4;->b:[Ljava/lang/Object;

    .line 59
    new-array v3, v2, [I

    :goto_0
    const/4 v4, -0x1

    if-ge v1, v2, :cond_0

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, v0, Ljl4;->d:Ljava/lang/Object;

    .line 60
    iput v4, v0, Ljl4;->c:I

    .line 61
    iput-object v0, p0, Lvr1;->c:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lvr1;->e:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lvr1;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyr1;Lf64;Ljava/lang/String;Lwz5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lvr1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-wide v0, Lvr1;->g:J

    .line 8
    .line 9
    const-wide/16 v2, 0x1

    .line 10
    .line 11
    add-long/2addr v2, v0

    .line 12
    sput-wide v2, Lvr1;->g:J

    .line 13
    .line 14
    iput-object p2, p0, Lvr1;->c:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p4, p0, Lvr1;->e:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance p4, Lu00;

    .line 19
    .line 20
    iget-object v2, p1, Lyr1;->f:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lub;

    .line 23
    .line 24
    const-string v3, "conn_"

    .line 25
    .line 26
    invoke-static {v0, v1, v3}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x4

    .line 31
    const-string v3, "Connection"

    .line 32
    .line 33
    invoke-direct {p4, v1, v2, v3, v0}, Lu00;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object p4, p0, Lvr1;->f:Ljava/lang/Object;

    .line 37
    .line 38
    const/4 p4, 0x1

    .line 39
    iput p4, p0, Lvr1;->b:I

    .line 40
    .line 41
    new-instance v0, Lnr8;

    .line 42
    .line 43
    move-object v5, p0

    .line 44
    move-object v1, p1

    .line 45
    move-object v2, p2

    .line 46
    move-object v3, p3

    .line 47
    move-object v6, p5

    .line 48
    move-object v4, p6

    .line 49
    invoke-direct/range {v0 .. v6}, Lnr8;-><init>(Lyr1;Lf64;Ljava/lang/String;Ljava/lang/String;Lvr1;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, v5, Lvr1;->d:Ljava/lang/Object;

    .line 53
    .line 54
    return-void
.end method

.method public static synthetic k(Lvr1;Ljava/lang/String;II)V
    .locals 1

    .line 1
    and-int/lit8 v0, p3, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p2, p0, Lvr1;->b:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const-string p3, ""

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const-string p3, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0, p2, p1, p3}, Lvr1;->j(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)I
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    iput p1, p0, Lvr1;->b:I

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ge v0, p1, :cond_0

    .line 16
    .line 17
    iget p1, p0, Lvr1;->b:I

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lvr1;->a(ILjava/lang/CharSequence;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    const/4 p2, 0x6

    .line 26
    const-string v0, "Unexpected EOF during unicode escape"

    .line 27
    .line 28
    invoke-static {p0, v0, p1, p2}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0

    .line 33
    :cond_1
    iget-object v1, p0, Lvr1;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lvr1;->m(ILjava/lang/CharSequence;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    shl-int/lit8 v2, v2, 0xc

    .line 42
    .line 43
    add-int/lit8 v3, p1, 0x1

    .line 44
    .line 45
    invoke-virtual {p0, v3, p2}, Lvr1;->m(ILjava/lang/CharSequence;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    shl-int/lit8 v3, v3, 0x8

    .line 50
    .line 51
    add-int/2addr v2, v3

    .line 52
    add-int/lit8 v3, p1, 0x2

    .line 53
    .line 54
    invoke-virtual {p0, v3, p2}, Lvr1;->m(ILjava/lang/CharSequence;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    shl-int/lit8 v3, v3, 0x4

    .line 59
    .line 60
    add-int/2addr v2, v3

    .line 61
    add-int/lit8 p1, p1, 0x3

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Lvr1;->m(ILjava/lang/CharSequence;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    add-int/2addr p0, v2

    .line 68
    int-to-char p0, p0

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    return v0
.end method

.method public b()Z
    .locals 5

    .line 1
    iget v0, p0, Lvr1;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-object v1, p0, Lvr1;->f:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_4

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v4, 0x20

    .line 23
    .line 24
    if-eq v3, v4, :cond_3

    .line 25
    .line 26
    const/16 v4, 0xa

    .line 27
    .line 28
    if-eq v3, v4, :cond_3

    .line 29
    .line 30
    const/16 v4, 0xd

    .line 31
    .line 32
    if-eq v3, v4, :cond_3

    .line 33
    .line 34
    const/16 v4, 0x9

    .line 35
    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iput v0, p0, Lvr1;->b:I

    .line 40
    .line 41
    const/16 p0, 0x2c

    .line 42
    .line 43
    if-eq v3, p0, :cond_2

    .line 44
    .line 45
    const/16 p0, 0x3a

    .line 46
    .line 47
    if-eq v3, p0, :cond_2

    .line 48
    .line 49
    const/16 p0, 0x5d

    .line 50
    .line 51
    if-eq v3, p0, :cond_2

    .line 52
    .line 53
    const/16 p0, 0x7d

    .line 54
    .line 55
    if-eq v3, p0, :cond_2

    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_2
    return v2

    .line 60
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iput v0, p0, Lvr1;->b:I

    .line 64
    .line 65
    return v2
.end method

.method public c(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lvr1;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu00;

    .line 4
    .line 5
    iget v1, p0, Lvr1;->b:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    if-eq v1, v2, :cond_c

    .line 9
    .line 10
    invoke-virtual {v0}, Lu00;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "closing realtime connection"

    .line 19
    .line 20
    new-array v5, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v4, v5}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput v2, p0, Lvr1;->b:I

    .line 26
    .line 27
    iget-object v0, p0, Lvr1;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lnr8;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lnr8;->c()V

    .line 34
    .line 35
    .line 36
    iput-object v4, p0, Lvr1;->d:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_1
    iget-object p0, p0, Lvr1;->e:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lwz5;

    .line 41
    .line 42
    iget-object v0, p0, Lwz5;->y:Lu00;

    .line 43
    .line 44
    invoke-virtual {v0}, Lu00;->e()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    if-eq p1, v2, :cond_3

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    if-ne p1, v1, :cond_2

    .line 55
    .line 56
    const-string v1, "OTHER"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    throw v4

    .line 60
    :cond_3
    const-string v1, "SERVER_RESET"

    .line 61
    .line 62
    :goto_0
    const-string v5, "Got on disconnect due to "

    .line 63
    .line 64
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-array v5, v3, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v4, v5}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    sget-object v0, Lrz5;->a:Lrz5;

    .line 74
    .line 75
    iput-object v0, p0, Lwz5;->h:Lrz5;

    .line 76
    .line 77
    iput-object v4, p0, Lwz5;->g:Lvr1;

    .line 78
    .line 79
    iget-object v0, p0, Lwz5;->l:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 82
    .line 83
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lwz5;->n:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_6

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Ljava/util/Map$Entry;

    .line 110
    .line 111
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Luz5;

    .line 116
    .line 117
    iget-object v6, v5, Luz5;->b:Ljava/util/HashMap;

    .line 118
    .line 119
    const-string v7, "h"

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_5

    .line 126
    .line 127
    iget-boolean v6, v5, Luz5;->d:Z

    .line 128
    .line 129
    if-eqz v6, :cond_5

    .line 130
    .line 131
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_7

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Luz5;

    .line 153
    .line 154
    iget-object v1, v1, Luz5;->c:Lcl6;

    .line 155
    .line 156
    const-string v5, "disconnected"

    .line 157
    .line 158
    invoke-interface {v1, v5, v4}, Lcl6;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_7
    iget-object v0, p0, Lwz5;->d:Ljava/util/HashSet;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    const-wide/16 v4, 0x0

    .line 169
    .line 170
    if-nez v0, :cond_b

    .line 171
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 173
    .line 174
    .line 175
    move-result-wide v0

    .line 176
    iget-wide v6, p0, Lwz5;->f:J

    .line 177
    .line 178
    sub-long/2addr v0, v6

    .line 179
    cmp-long v6, v6, v4

    .line 180
    .line 181
    if-lez v6, :cond_8

    .line 182
    .line 183
    const-wide/16 v6, 0x7530

    .line 184
    .line 185
    cmp-long v0, v0, v6

    .line 186
    .line 187
    if-lez v0, :cond_8

    .line 188
    .line 189
    move v3, v2

    .line 190
    :cond_8
    if-eq p1, v2, :cond_9

    .line 191
    .line 192
    if-eqz v3, :cond_a

    .line 193
    .line 194
    :cond_9
    iget-object p1, p0, Lwz5;->z:Lln6;

    .line 195
    .line 196
    iput-boolean v2, p1, Lln6;->j:Z

    .line 197
    .line 198
    iput-wide v4, p1, Lln6;->i:J

    .line 199
    .line 200
    :cond_a
    invoke-virtual {p0}, Lwz5;->o()V

    .line 201
    .line 202
    .line 203
    :cond_b
    iput-wide v4, p0, Lwz5;->f:J

    .line 204
    .line 205
    iget-object p0, p0, Lwz5;->a:Lwj6;

    .line 206
    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    sget-object p1, Lvs1;->d:Lm61;

    .line 211
    .line 212
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-virtual {p0, p1, v0}, Lwj6;->p(Lm61;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lwj6;->b:Lis5;

    .line 218
    .line 219
    invoke-static {p1}, Lms8;->v(Laa1;)Ljava/util/HashMap;

    .line 220
    .line 221
    .line 222
    new-instance p1, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lwj6;->e:Lns0;

    .line 228
    .line 229
    sget-object v1, Lgy5;->d:Lgy5;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    new-instance v0, Lns0;

    .line 235
    .line 236
    const/16 v1, 0x11

    .line 237
    .line 238
    invoke-direct {v0, v1}, Lns0;-><init>(I)V

    .line 239
    .line 240
    .line 241
    iput-object v0, p0, Lwj6;->e:Lns0;

    .line 242
    .line 243
    invoke-virtual {p0, p1}, Lwj6;->j(Ljava/util/List;)V

    .line 244
    .line 245
    .line 246
    :cond_c
    return-void
.end method

.method public d(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lvr1;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, p1

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x6

    .line 16
    const/4 v5, 0x0

    .line 17
    if-lt v1, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    move v2, v5

    .line 24
    :goto_0
    if-ge v2, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    add-int v7, p1, v2

    .line 31
    .line 32
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    or-int/lit8 v7, v7, 0x20

    .line 37
    .line 38
    if-ne v6, v7, :cond_0

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p2, "Expected valid boolean literal prefix, but had \'"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lvr1;->i()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 p2, 0x27

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p0, p1, v5, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    throw v3

    .line 70
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    add-int/2addr p2, p1

    .line 75
    iput p2, p0, Lvr1;->b:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    const-string p1, "Unexpected end of boolean literal"

    .line 79
    .line 80
    invoke-static {p0, p1, v5, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    throw v3
.end method

.method public e()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lvr1;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    iget-object v1, p0, Lvr1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    const/16 v2, 0x22

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lvr1;->f(C)V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Lvr1;->b:I

    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    invoke-static {v2, v3, v4, v1}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x1

    .line 24
    const/4 v9, -0x1

    .line 25
    if-eq v5, v9, :cond_c

    .line 26
    .line 27
    move v10, v3

    .line 28
    :goto_0
    if-ge v10, v5, :cond_b

    .line 29
    .line 30
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    const/16 v12, 0x5c

    .line 35
    .line 36
    if-ne v11, v12, :cond_a

    .line 37
    .line 38
    iget v3, p0, Lvr1;->b:I

    .line 39
    .line 40
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    move v11, v7

    .line 45
    :goto_1
    if-eq v5, v2, :cond_8

    .line 46
    .line 47
    const-string v13, "Unexpected EOF"

    .line 48
    .line 49
    if-ne v5, v12, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0, v1, v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v10, v10, 0x1

    .line 55
    .line 56
    invoke-virtual {p0, v10}, Lvr1;->t(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v5, 0x6

    .line 61
    if-eq v3, v9, :cond_4

    .line 62
    .line 63
    add-int/lit8 v10, v3, 0x1

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/16 v11, 0x75

    .line 70
    .line 71
    if-ne v3, v11, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, v10, v1}, Lvr1;->a(ILjava/lang/CharSequence;)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    goto :goto_3

    .line 78
    :cond_0
    if-ge v3, v11, :cond_1

    .line 79
    .line 80
    sget-object v11, Lw41;->a:[C

    .line 81
    .line 82
    aget-char v11, v11, v3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    move v11, v7

    .line 86
    :goto_2
    if-eqz v11, :cond_3

    .line 87
    .line 88
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_3
    invoke-virtual {p0, v10}, Lvr1;->t(I)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eq v3, v9, :cond_2

    .line 96
    .line 97
    :goto_4
    move v10, v3

    .line 98
    move v11, v8

    .line 99
    goto :goto_5

    .line 100
    :cond_2
    invoke-static {p0, v13, v3, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    throw v6

    .line 104
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v1, "Invalid escaped char \'"

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const/16 v1, 0x27

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {p0, v0, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    throw v6

    .line 127
    :cond_4
    const-string v0, "Expected escape sequence to continue, got EOF"

    .line 128
    .line 129
    invoke-static {p0, v0, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 130
    .line 131
    .line 132
    throw v6

    .line 133
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-lt v10, v5, :cond_7

    .line 140
    .line 141
    invoke-virtual {v0, v1, v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v10}, Lvr1;->t(I)I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eq v3, v9, :cond_6

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_6
    invoke-static {p0, v13, v3, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 152
    .line 153
    .line 154
    throw v6

    .line 155
    :cond_7
    :goto_5
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    goto :goto_1

    .line 160
    :cond_8
    if-nez v11, :cond_9

    .line 161
    .line 162
    invoke-virtual {v1, v3, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    goto :goto_6

    .line 171
    :cond_9
    invoke-virtual {v0, v1, v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 179
    .line 180
    .line 181
    move-object v0, v1

    .line 182
    :goto_6
    add-int/2addr v10, v8

    .line 183
    iput v10, p0, Lvr1;->b:I

    .line 184
    .line 185
    return-object v0

    .line 186
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_b
    add-int/lit8 v0, v5, 0x1

    .line 191
    .line 192
    iput v0, p0, Lvr1;->b:I

    .line 193
    .line 194
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    return-object p0

    .line 199
    :cond_c
    invoke-virtual {p0}, Lvr1;->i()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v8, v7}, Lvr1;->l(BZ)V

    .line 203
    .line 204
    .line 205
    throw v6
.end method

.method public f(C)V
    .locals 6

    .line 1
    iget v0, p0, Lvr1;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_4

    .line 6
    .line 7
    iget-object v3, p0, Lvr1;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ljava/lang/String;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v0, v4, :cond_3

    .line 16
    .line 17
    add-int/lit8 v4, v0, 0x1

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v5, 0x20

    .line 24
    .line 25
    if-eq v0, v5, :cond_2

    .line 26
    .line 27
    const/16 v5, 0xa

    .line 28
    .line 29
    if-eq v0, v5, :cond_2

    .line 30
    .line 31
    const/16 v5, 0xd

    .line 32
    .line 33
    if-eq v0, v5, :cond_2

    .line 34
    .line 35
    const/16 v5, 0x9

    .line 36
    .line 37
    if-ne v0, v5, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iput v4, p0, Lvr1;->b:I

    .line 41
    .line 42
    if-ne v0, p1, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Lvr1;->w(C)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_2
    :goto_1
    move v0, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iput v2, p0, Lvr1;->b:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lvr1;->w(C)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_4
    invoke-virtual {p0, p1}, Lvr1;->w(C)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method

.method public g()J
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lvr1;->u()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lvr1;->t(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Lvr1;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string v4, "EOF"

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x6

    .line 23
    const/4 v7, 0x0

    .line 24
    if-ge v1, v3, :cond_1c

    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    if-eq v1, v3, :cond_1c

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/16 v8, 0x22

    .line 34
    .line 35
    if-ne v3, v8, :cond_1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eq v1, v3, :cond_0

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v0, v4, v7, v6}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    throw v5

    .line 51
    :cond_1
    move v3, v7

    .line 52
    :goto_0
    move v12, v1

    .line 53
    move-object/from16 v19, v5

    .line 54
    .line 55
    move v11, v7

    .line 56
    move v13, v11

    .line 57
    move v14, v13

    .line 58
    const-wide/16 v9, 0x0

    .line 59
    .line 60
    const-wide/16 v15, 0x0

    .line 61
    .line 62
    const-wide/16 v17, 0x0

    .line 63
    .line 64
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    move-wide/from16 v20, v15

    .line 69
    .line 70
    const-string v15, "Numeric value overflow"

    .line 71
    .line 72
    if-eq v12, v5, :cond_e

    .line 73
    .line 74
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    const/16 v8, 0x65

    .line 79
    .line 80
    if-eq v5, v8, :cond_2

    .line 81
    .line 82
    const/16 v8, 0x45

    .line 83
    .line 84
    if-ne v5, v8, :cond_4

    .line 85
    .line 86
    :cond_2
    if-nez v13, :cond_4

    .line 87
    .line 88
    if-eq v12, v1, :cond_3

    .line 89
    .line 90
    add-int/lit8 v12, v12, 0x1

    .line 91
    .line 92
    move-wide/from16 v15, v20

    .line 93
    .line 94
    const/16 v8, 0x22

    .line 95
    .line 96
    const/4 v11, 0x1

    .line 97
    const/4 v13, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v2, "Unexpected symbol "

    .line 102
    .line 103
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, " in numeric literal"

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1, v7, v6}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 119
    .line 120
    .line 121
    throw v19

    .line 122
    :cond_4
    const-string v8, "Unexpected symbol \'-\' in numeric literal"

    .line 123
    .line 124
    const/16 v6, 0x2d

    .line 125
    .line 126
    if-ne v5, v6, :cond_6

    .line 127
    .line 128
    if-eqz v13, :cond_6

    .line 129
    .line 130
    if-eq v12, v1, :cond_5

    .line 131
    .line 132
    add-int/lit8 v12, v12, 0x1

    .line 133
    .line 134
    move v11, v7

    .line 135
    :goto_2
    move-wide/from16 v15, v20

    .line 136
    .line 137
    const/4 v6, 0x6

    .line 138
    const/16 v8, 0x22

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    const/4 v5, 0x6

    .line 142
    invoke-static {v0, v8, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    throw v19

    .line 146
    :cond_6
    const/16 v6, 0x2b

    .line 147
    .line 148
    if-ne v5, v6, :cond_8

    .line 149
    .line 150
    if-eqz v13, :cond_8

    .line 151
    .line 152
    if-eq v12, v1, :cond_7

    .line 153
    .line 154
    add-int/lit8 v12, v12, 0x1

    .line 155
    .line 156
    move-wide/from16 v15, v20

    .line 157
    .line 158
    const/4 v6, 0x6

    .line 159
    const/16 v8, 0x22

    .line 160
    .line 161
    const/4 v11, 0x1

    .line 162
    goto :goto_1

    .line 163
    :cond_7
    const-string v1, "Unexpected symbol \'+\' in numeric literal"

    .line 164
    .line 165
    const/4 v6, 0x6

    .line 166
    invoke-static {v0, v1, v7, v6}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 167
    .line 168
    .line 169
    throw v19

    .line 170
    :cond_8
    const/16 v6, 0x2d

    .line 171
    .line 172
    if-ne v5, v6, :cond_a

    .line 173
    .line 174
    if-ne v12, v1, :cond_9

    .line 175
    .line 176
    add-int/lit8 v12, v12, 0x1

    .line 177
    .line 178
    move-wide/from16 v15, v20

    .line 179
    .line 180
    const/4 v6, 0x6

    .line 181
    const/16 v8, 0x22

    .line 182
    .line 183
    const/4 v14, 0x1

    .line 184
    goto :goto_1

    .line 185
    :cond_9
    const/4 v5, 0x6

    .line 186
    invoke-static {v0, v8, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 187
    .line 188
    .line 189
    throw v19

    .line 190
    :cond_a
    invoke-static {v5}, Lz85;->b(C)B

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-nez v6, :cond_e

    .line 195
    .line 196
    add-int/lit8 v12, v12, 0x1

    .line 197
    .line 198
    add-int/lit8 v6, v5, -0x30

    .line 199
    .line 200
    if-ltz v6, :cond_d

    .line 201
    .line 202
    const/16 v8, 0xa

    .line 203
    .line 204
    if-ge v6, v8, :cond_d

    .line 205
    .line 206
    const-wide/16 v22, 0xa

    .line 207
    .line 208
    if-eqz v13, :cond_b

    .line 209
    .line 210
    mul-long v9, v9, v22

    .line 211
    .line 212
    int-to-long v5, v6

    .line 213
    add-long/2addr v9, v5

    .line 214
    goto :goto_2

    .line 215
    :cond_b
    mul-long v17, v17, v22

    .line 216
    .line 217
    int-to-long v5, v6

    .line 218
    sub-long v17, v17, v5

    .line 219
    .line 220
    cmp-long v5, v17, v20

    .line 221
    .line 222
    if-gtz v5, :cond_c

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_c
    const/4 v6, 0x6

    .line 226
    invoke-static {v0, v15, v7, v6}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 227
    .line 228
    .line 229
    throw v19

    .line 230
    :cond_d
    const/4 v6, 0x6

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v2, "Unexpected symbol \'"

    .line 234
    .line 235
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v2, "\' in numeric literal"

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v0, v1, v7, v6}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 251
    .line 252
    .line 253
    throw v19

    .line 254
    :cond_e
    if-eq v12, v1, :cond_f

    .line 255
    .line 256
    const/4 v5, 0x1

    .line 257
    goto :goto_3

    .line 258
    :cond_f
    move v5, v7

    .line 259
    :goto_3
    if-eq v1, v12, :cond_10

    .line 260
    .line 261
    if-eqz v14, :cond_11

    .line 262
    .line 263
    add-int/lit8 v6, v12, -0x1

    .line 264
    .line 265
    if-eq v1, v6, :cond_10

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_10
    const/4 v5, 0x6

    .line 269
    goto/16 :goto_8

    .line 270
    .line 271
    :cond_11
    :goto_4
    if-eqz v3, :cond_14

    .line 272
    .line 273
    if-eqz v5, :cond_13

    .line 274
    .line 275
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    const/16 v2, 0x22

    .line 280
    .line 281
    if-ne v1, v2, :cond_12

    .line 282
    .line 283
    add-int/lit8 v12, v12, 0x1

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_12
    const-string v1, "Expected closing quotation mark"

    .line 287
    .line 288
    const/4 v5, 0x6

    .line 289
    invoke-static {v0, v1, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 290
    .line 291
    .line 292
    throw v19

    .line 293
    :cond_13
    const/4 v5, 0x6

    .line 294
    invoke-static {v0, v4, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 295
    .line 296
    .line 297
    throw v19

    .line 298
    :cond_14
    :goto_5
    iput v12, v0, Lvr1;->b:I

    .line 299
    .line 300
    move-wide/from16 v1, v17

    .line 301
    .line 302
    if-eqz v13, :cond_19

    .line 303
    .line 304
    long-to-double v1, v1

    .line 305
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 306
    .line 307
    if-nez v11, :cond_15

    .line 308
    .line 309
    long-to-double v5, v9

    .line 310
    neg-double v5, v5

    .line 311
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 312
    .line 313
    .line 314
    move-result-wide v3

    .line 315
    goto :goto_6

    .line 316
    :cond_15
    const/4 v5, 0x1

    .line 317
    if-ne v11, v5, :cond_18

    .line 318
    .line 319
    long-to-double v5, v9

    .line 320
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 321
    .line 322
    .line 323
    move-result-wide v3

    .line 324
    :goto_6
    mul-double/2addr v1, v3

    .line 325
    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    .line 326
    .line 327
    cmpl-double v3, v1, v3

    .line 328
    .line 329
    if-gtz v3, :cond_17

    .line 330
    .line 331
    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    .line 332
    .line 333
    cmpg-double v3, v1, v3

    .line 334
    .line 335
    if-ltz v3, :cond_17

    .line 336
    .line 337
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 338
    .line 339
    .line 340
    move-result-wide v3

    .line 341
    cmpg-double v3, v3, v1

    .line 342
    .line 343
    if-nez v3, :cond_16

    .line 344
    .line 345
    double-to-long v10, v1

    .line 346
    goto :goto_7

    .line 347
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v4, "Can\'t convert "

    .line 350
    .line 351
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v1, " to Long"

    .line 358
    .line 359
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    const/4 v5, 0x6

    .line 367
    invoke-static {v0, v1, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 368
    .line 369
    .line 370
    throw v19

    .line 371
    :cond_17
    const/4 v5, 0x6

    .line 372
    invoke-static {v0, v15, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 373
    .line 374
    .line 375
    throw v19

    .line 376
    :cond_18
    invoke-static {}, Lq;->j()V

    .line 377
    .line 378
    .line 379
    return-wide v20

    .line 380
    :cond_19
    move-wide v10, v1

    .line 381
    :goto_7
    if-eqz v14, :cond_1a

    .line 382
    .line 383
    return-wide v10

    .line 384
    :cond_1a
    const-wide/high16 v1, -0x8000000000000000L

    .line 385
    .line 386
    cmp-long v1, v10, v1

    .line 387
    .line 388
    if-eqz v1, :cond_1b

    .line 389
    .line 390
    neg-long v0, v10

    .line 391
    return-wide v0

    .line 392
    :cond_1b
    const/4 v5, 0x6

    .line 393
    invoke-static {v0, v15, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 394
    .line 395
    .line 396
    throw v19

    .line 397
    :goto_8
    const-string v1, "Expected numeric literal"

    .line 398
    .line 399
    invoke-static {v0, v1, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 400
    .line 401
    .line 402
    throw v19

    .line 403
    :cond_1c
    move-object/from16 v19, v5

    .line 404
    .line 405
    move v5, v6

    .line 406
    invoke-static {v0, v4, v7, v5}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 407
    .line 408
    .line 409
    throw v19
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lvr1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lvr1;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lvr1;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lvr1;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    iget-object v1, p0, Lvr1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lvr1;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput-object v3, p0, Lvr1;->d:Ljava/lang/Object;

    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_0
    invoke-virtual {p0}, Lvr1;->u()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ge v2, v4, :cond_7

    .line 31
    .line 32
    const/4 v4, -0x1

    .line 33
    if-eq v2, v4, :cond_7

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {v5}, Lz85;->b(C)B

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v6, 0x1

    .line 44
    if-ne v5, v6, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lvr1;->h()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_1
    const/4 v7, 0x0

    .line 52
    if-nez v5, :cond_6

    .line 53
    .line 54
    move v3, v7

    .line 55
    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {v5}, Lz85;->b(C)B

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_4

    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-lt v2, v5, :cond_2

    .line 72
    .line 73
    iget v3, p0, Lvr1;->b:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lvr1;->t(I)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ne v3, v4, :cond_3

    .line 83
    .line 84
    iput v2, p0, Lvr1;->b:I

    .line 85
    .line 86
    invoke-virtual {v0, v1, v7, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_3
    move v2, v3

    .line 98
    move v3, v6

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    iget v4, p0, Lvr1;->b:I

    .line 101
    .line 102
    if-nez v3, :cond_5

    .line 103
    .line 104
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    .line 122
    .line 123
    move-object v0, v1

    .line 124
    :goto_1
    iput v2, p0, Lvr1;->b:I

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v4, "Expected beginning of the string, but got "

    .line 130
    .line 131
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/4 v1, 0x6

    .line 146
    invoke-static {p0, v0, v7, v1}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 147
    .line 148
    .line 149
    throw v3

    .line 150
    :cond_7
    const-string v0, "EOF"

    .line 151
    .line 152
    const/4 v1, 0x4

    .line 153
    invoke-static {p0, v0, v2, v1}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    throw v3
.end method

.method public j(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p3, ""

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "\n"

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    :goto_0
    const-string v0, " at path: "

    .line 20
    .line 21
    invoke-static {p2, v0}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object v0, p0, Lvr1;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ljl4;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljl4;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object p0, p0, Lvr1;->f:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1, p0, p2}, Lbb9;->d(ILjava/lang/CharSequence;Ljava/lang/String;)Lnj4;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0
.end method

.method public l(BZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lvr1;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Lz85;->H(B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget v1, p0, Lvr1;->b:I

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    add-int/lit8 p2, v1, -0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p2, v1

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    if-gez p2, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    const-string v0, "EOF"

    .line 36
    .line 37
    :goto_2
    const-string v1, ", but had \'"

    .line 38
    .line 39
    const-string v2, "\' instead"

    .line 40
    .line 41
    const-string v3, "Expected "

    .line 42
    .line 43
    invoke-static {v3, p1, v1, v0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v0, 0x4

    .line 48
    invoke-static {p0, p1, p2, v0}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0
.end method

.method public m(ILjava/lang/CharSequence;)I
    .locals 1

    .line 1
    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 p2, 0x30

    .line 6
    .line 7
    if-gt p2, p1, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x3a

    .line 10
    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    sub-int/2addr p1, p2

    .line 14
    return p1

    .line 15
    :cond_0
    const/16 p2, 0x61

    .line 16
    .line 17
    if-gt p2, p1, :cond_1

    .line 18
    .line 19
    const/16 p2, 0x67

    .line 20
    .line 21
    if-ge p1, p2, :cond_1

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x57

    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    const/16 p2, 0x41

    .line 27
    .line 28
    if-gt p2, p1, :cond_2

    .line 29
    .line 30
    const/16 p2, 0x47

    .line 31
    .line 32
    if-ge p1, p2, :cond_2

    .line 33
    .line 34
    add-int/lit8 p1, p1, -0x37

    .line 35
    .line 36
    return p1

    .line 37
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "Invalid toHexChar char \'"

    .line 40
    .line 41
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, "\' in unicode escape"

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 p2, 0x0

    .line 57
    const/4 v0, 0x6

    .line 58
    invoke-static {p0, p1, p2, v0}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    throw p0
.end method

.method public n(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lvr1;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu00;

    .line 4
    .line 5
    invoke-virtual {v0}, Lu00;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "Connection shutdown command received. Shutting down..."

    .line 16
    .line 17
    invoke-virtual {v0, v3, v2, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lvr1;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lwz5;

    .line 23
    .line 24
    iget-object v1, v0, Lwz5;->y:Lu00;

    .line 25
    .line 26
    const-string v2, "Invalid appcheck token"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget v2, v0, Lwz5;->D:I

    .line 35
    .line 36
    int-to-long v3, v2

    .line 37
    const-wide/16 v5, 0x3

    .line 38
    .line 39
    cmp-long v3, v3, v5

    .line 40
    .line 41
    if-gez v3, :cond_1

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    iput v2, v0, Lwz5;->D:I

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "Detected invalid AppCheck token. Reconnecting ("

    .line 50
    .line 51
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v0, v0, Lwz5;->D:I

    .line 55
    .line 56
    int-to-long v2, v0

    .line 57
    sub-long/2addr v5, v2

    .line 58
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, " attempts remaining)"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Lu00;->j(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string v2, "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v1, p1}, Lu00;->j(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string p1, "server_kill"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lwz5;->c(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    const/4 p1, 0x2

    .line 89
    invoke-virtual {p0, p1}, Lvr1;->c(I)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public o(Ljava/util/Map;)V
    .locals 8

    .line 1
    const-string v0, "Got invalid control message: "

    .line 2
    .line 3
    const-string v1, "Ignoring unknown control message: "

    .line 4
    .line 5
    iget-object v2, p0, Lvr1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lu00;

    .line 8
    .line 9
    invoke-virtual {v2}, Lu00;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v6, "Got control message: "

    .line 20
    .line 21
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-array v6, v5, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4, v6}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 v3, 0x2

    .line 41
    :try_start_0
    const-string v6, "t"

    .line 42
    .line 43
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v6, :cond_5

    .line 50
    .line 51
    const-string v0, "s"

    .line 52
    .line 53
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const-string v7, "d"

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    :try_start_1
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lvr1;->n(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string v0, "r"

    .line 74
    .line 75
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lvr1;->s(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    const-string v0, "h"

    .line 92
    .line 93
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/util/Map;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lvr1;->q(Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_3
    invoke-virtual {v2}, Lu00;->e()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-array v0, v5, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-virtual {v2, p1, v4, v0}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    return-void

    .line 125
    :cond_5
    invoke-virtual {v2}, Lu00;->e()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-array v0, v5, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {v2, p1, v4, v0}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    invoke-virtual {p0, v3}, Lvr1;->c(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :goto_0
    invoke-virtual {v2}, Lu00;->e()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v1, "Failed to parse control message: "

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-array v0, v5, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-virtual {v2, p1, v4, v0}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_7
    invoke-virtual {p0, v3}, Lvr1;->c(I)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public p(Ljava/util/Map;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lvr1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lu00;

    .line 8
    .line 9
    invoke-virtual {v2}, Lu00;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v6, "received data message: "

    .line 20
    .line 21
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-array v6, v5, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4, v6}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, v0, Lvr1;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lwz5;

    .line 43
    .line 44
    iget-object v2, v0, Lwz5;->y:Lu00;

    .line 45
    .line 46
    const-string v3, "r"

    .line 47
    .line 48
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const-string v7, "b"

    .line 53
    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    int-to-long v2, v2

    .line 67
    iget-object v0, v0, Lwz5;->l:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lqz5;

    .line 78
    .line 79
    if-eqz v0, :cond_2d

    .line 80
    .line 81
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/util/Map;

    .line 86
    .line 87
    invoke-interface {v0, v1}, Lqz5;->a(Ljava/util/Map;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    const-string v3, "error"

    .line 92
    .line 93
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    goto/16 :goto_12

    .line 100
    .line 101
    :cond_2
    const-string v3, "a"

    .line 102
    .line 103
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_2c

    .line 108
    .line 109
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ljava/lang/String;

    .line 114
    .line 115
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Ljava/util/Map;

    .line 120
    .line 121
    iget-object v6, v0, Lwz5;->a:Lwj6;

    .line 122
    .line 123
    invoke-virtual {v2}, Lu00;->e()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    const-string v8, " "

    .line 128
    .line 129
    if-eqz v7, :cond_3

    .line 130
    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v9, "handleServerMessage: "

    .line 134
    .line 135
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    new-array v9, v5, [Ljava/lang/Object;

    .line 152
    .line 153
    invoke-virtual {v2, v7, v4, v9}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    const-string v7, "d"

    .line 157
    .line 158
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    const-string v10, "t"

    .line 163
    .line 164
    const-string v11, "p"

    .line 165
    .line 166
    const-string v12, "m"

    .line 167
    .line 168
    if-nez v9, :cond_20

    .line 169
    .line 170
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-eqz v9, :cond_4

    .line 175
    .line 176
    goto/16 :goto_c

    .line 177
    .line 178
    :cond_4
    const-string v9, "rm"

    .line 179
    .line 180
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    const-string v14, "s"

    .line 185
    .line 186
    if-eqz v9, :cond_17

    .line 187
    .line 188
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v0}, Lyc9;->h0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    instance-of v9, v1, Ljava/lang/Integer;

    .line 207
    .line 208
    if-eqz v9, :cond_5

    .line 209
    .line 210
    check-cast v1, Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    int-to-long v9, v1

    .line 217
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    goto :goto_0

    .line 222
    :cond_5
    instance-of v9, v1, Ljava/lang/Long;

    .line 223
    .line 224
    if-eqz v9, :cond_6

    .line 225
    .line 226
    check-cast v1, Ljava/lang/Long;

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_6
    move-object v1, v4

    .line 230
    :goto_0
    check-cast v7, Ljava/util/List;

    .line 231
    .line 232
    new-instance v9, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    if-eqz v10, :cond_9

    .line 246
    .line 247
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    check-cast v10, Ljava/util/Map;

    .line 252
    .line 253
    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    check-cast v11, Ljava/lang/String;

    .line 258
    .line 259
    const-string v15, "e"

    .line 260
    .line 261
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v15

    .line 265
    check-cast v15, Ljava/lang/String;

    .line 266
    .line 267
    if-eqz v11, :cond_7

    .line 268
    .line 269
    invoke-static {v11}, Lyc9;->h0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    goto :goto_2

    .line 274
    :cond_7
    move-object v11, v4

    .line 275
    :goto_2
    if-eqz v15, :cond_8

    .line 276
    .line 277
    invoke-static {v15}, Lyc9;->h0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 278
    .line 279
    .line 280
    move-result-object v15

    .line 281
    goto :goto_3

    .line 282
    :cond_8
    move-object v15, v4

    .line 283
    :goto_3
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    new-instance v13, Lff6;

    .line 288
    .line 289
    invoke-direct {v13, v11, v15, v10}, Lff6;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-eqz v7, :cond_a

    .line 301
    .line 302
    invoke-virtual {v2}, Lu00;->e()Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_2d

    .line 307
    .line 308
    const-string v1, "Ignoring empty range merge for path "

    .line 309
    .line 310
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    new-array v1, v5, [Ljava/lang/Object;

    .line 315
    .line 316
    invoke-virtual {v2, v0, v4, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    new-instance v10, Lgy5;

    .line 324
    .line 325
    invoke-direct {v10, v3}, Lgy5;-><init>(Ljava/util/List;)V

    .line 326
    .line 327
    .line 328
    iget-object v0, v6, Lwj6;->i:Lu00;

    .line 329
    .line 330
    invoke-virtual {v0}, Lu00;->e()Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    const-string v3, "onRangeMergeUpdate: "

    .line 335
    .line 336
    if-eqz v2, :cond_b

    .line 337
    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    new-array v7, v5, [Ljava/lang/Object;

    .line 351
    .line 352
    invoke-virtual {v0, v2, v4, v7}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    :cond_b
    iget-object v2, v6, Lwj6;->k:Lu00;

    .line 356
    .line 357
    invoke-virtual {v2}, Lu00;->e()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-eqz v2, :cond_c

    .line 362
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    new-array v3, v5, [Ljava/lang/Object;

    .line 382
    .line 383
    invoke-virtual {v0, v2, v4, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-eqz v3, :cond_d

    .line 404
    .line 405
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    check-cast v3, Lff6;

    .line 410
    .line 411
    new-instance v4, Lef6;

    .line 412
    .line 413
    invoke-direct {v4, v3}, Lef6;-><init>(Lff6;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    goto :goto_4

    .line 420
    :cond_d
    iget-object v8, v6, Lwj6;->n:Lbv7;

    .line 421
    .line 422
    if-eqz v1, :cond_12

    .line 423
    .line 424
    new-instance v9, Lhx7;

    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 427
    .line 428
    .line 429
    move-result-wide v1

    .line 430
    invoke-direct {v9, v1, v2}, Lhx7;-><init>(J)V

    .line 431
    .line 432
    .line 433
    iget-object v1, v8, Lbv7;->c:Ljava/util/HashMap;

    .line 434
    .line 435
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    check-cast v1, Lqc6;

    .line 440
    .line 441
    if-eqz v1, :cond_11

    .line 442
    .line 443
    iget-object v2, v1, Lqc6;->a:Lgy5;

    .line 444
    .line 445
    invoke-virtual {v10, v2}, Lgy5;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    invoke-static {v3}, Lzm5;->s(Z)V

    .line 450
    .line 451
    .line 452
    iget-object v3, v8, Lbv7;->a:Lua4;

    .line 453
    .line 454
    invoke-virtual {v3, v2}, Lua4;->e(Lgy5;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    check-cast v2, Llu7;

    .line 459
    .line 460
    if-eqz v2, :cond_e

    .line 461
    .line 462
    const/4 v3, 0x1

    .line 463
    goto :goto_5

    .line 464
    :cond_e
    move v3, v5

    .line 465
    :goto_5
    const-string v4, "Missing sync point for query tag that we\'re tracking"

    .line 466
    .line 467
    invoke-static {v4, v3}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v1}, Llu7;->h(Lqc6;)Lik8;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    if-eqz v1, :cond_f

    .line 475
    .line 476
    const/4 v5, 0x1

    .line 477
    :cond_f
    const-string v2, "Missing view for query tag that we\'re tracking"

    .line 478
    .line 479
    invoke-static {v2, v5}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 480
    .line 481
    .line 482
    iget-object v1, v1, Lik8;->c:Lib;

    .line 483
    .line 484
    iget-object v1, v1, Lib;->c:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v1, Lgz0;

    .line 487
    .line 488
    iget-object v1, v1, Lgz0;->a:Lsb4;

    .line 489
    .line 490
    iget-object v1, v1, Lsb4;->a:Lqn5;

    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    move-object v11, v1

    .line 497
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-eqz v1, :cond_10

    .line 502
    .line 503
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    check-cast v1, Lef6;

    .line 508
    .line 509
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    sget-object v2, Lgy5;->d:Lgy5;

    .line 513
    .line 514
    iget-object v3, v1, Lef6;->c:Lqn5;

    .line 515
    .line 516
    invoke-virtual {v1, v2, v11, v3}, Lef6;->a(Lgy5;Lqn5;Lqn5;)Lqn5;

    .line 517
    .line 518
    .line 519
    move-result-object v11

    .line 520
    goto :goto_6

    .line 521
    :cond_10
    iget-object v0, v8, Lbv7;->g:Leo5;

    .line 522
    .line 523
    new-instance v7, Lnu7;

    .line 524
    .line 525
    const/4 v12, 0x1

    .line 526
    invoke-direct/range {v7 .. v12}, Lnu7;-><init>(Lbv7;Lhx7;Lgy5;Ljava/lang/Object;I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v7}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    check-cast v0, Ljava/util/List;

    .line 534
    .line 535
    goto :goto_8

    .line 536
    :cond_11
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 537
    .line 538
    goto :goto_8

    .line 539
    :cond_12
    iget-object v1, v8, Lbv7;->a:Lua4;

    .line 540
    .line 541
    invoke-virtual {v1, v10}, Lua4;->e(Lgy5;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    check-cast v1, Llu7;

    .line 546
    .line 547
    if-nez v1, :cond_13

    .line 548
    .line 549
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 550
    .line 551
    goto :goto_8

    .line 552
    :cond_13
    invoke-virtual {v1}, Llu7;->d()Lik8;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    if-eqz v1, :cond_15

    .line 557
    .line 558
    iget-object v1, v1, Lik8;->c:Lib;

    .line 559
    .line 560
    iget-object v1, v1, Lib;->c:Ljava/lang/Object;

    .line 561
    .line 562
    check-cast v1, Lgz0;

    .line 563
    .line 564
    iget-object v1, v1, Lgz0;->a:Lsb4;

    .line 565
    .line 566
    iget-object v1, v1, Lsb4;->a:Lqn5;

    .line 567
    .line 568
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 573
    .line 574
    .line 575
    move-result v2

    .line 576
    if-eqz v2, :cond_14

    .line 577
    .line 578
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    check-cast v2, Lef6;

    .line 583
    .line 584
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    sget-object v3, Lgy5;->d:Lgy5;

    .line 588
    .line 589
    iget-object v4, v2, Lef6;->c:Lqn5;

    .line 590
    .line 591
    invoke-virtual {v2, v3, v1, v4}, Lef6;->a(Lgy5;Lqn5;Lqn5;)Lqn5;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    goto :goto_7

    .line 596
    :cond_14
    invoke-virtual {v8, v10, v1}, Lbv7;->g(Lgy5;Lqn5;)Ljava/util/List;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    goto :goto_8

    .line 601
    :cond_15
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 602
    .line 603
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-lez v1, :cond_16

    .line 608
    .line 609
    invoke-virtual {v6, v10}, Lwj6;->m(Lgy5;)Lgy5;

    .line 610
    .line 611
    .line 612
    :cond_16
    invoke-virtual {v6, v0}, Lwj6;->j(Ljava/util/List;)V

    .line 613
    .line 614
    .line 615
    return-void

    .line 616
    :cond_17
    const-string v8, "c"

    .line 617
    .line 618
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v8

    .line 622
    if-eqz v8, :cond_1c

    .line 623
    .line 624
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    check-cast v1, Ljava/lang/String;

    .line 629
    .line 630
    invoke-static {v1}, Lyc9;->h0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    iget-object v3, v0, Lwz5;->p:Ljava/util/HashMap;

    .line 635
    .line 636
    invoke-virtual {v2}, Lu00;->e()Z

    .line 637
    .line 638
    .line 639
    move-result v6

    .line 640
    if-eqz v6, :cond_18

    .line 641
    .line 642
    new-instance v6, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    const-string v7, "removing all listens at path "

    .line 645
    .line 646
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    new-array v5, v5, [Ljava/lang/Object;

    .line 657
    .line 658
    invoke-virtual {v2, v6, v4, v5}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 659
    .line 660
    .line 661
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    .line 662
    .line 663
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    :cond_19
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 675
    .line 676
    .line 677
    move-result v6

    .line 678
    if-eqz v6, :cond_1a

    .line 679
    .line 680
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v6

    .line 684
    check-cast v6, Ljava/util/Map$Entry;

    .line 685
    .line 686
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v7

    .line 690
    check-cast v7, Lvz5;

    .line 691
    .line 692
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v6

    .line 696
    check-cast v6, Ltz5;

    .line 697
    .line 698
    iget-object v7, v7, Lvz5;->a:Ljava/util/ArrayList;

    .line 699
    .line 700
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v7

    .line 704
    if-eqz v7, :cond_19

    .line 705
    .line 706
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    goto :goto_9

    .line 710
    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 715
    .line 716
    .line 717
    move-result v5

    .line 718
    if-eqz v5, :cond_1b

    .line 719
    .line 720
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v5

    .line 724
    check-cast v5, Ltz5;

    .line 725
    .line 726
    iget-object v5, v5, Ltz5;->b:Lvz5;

    .line 727
    .line 728
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    goto :goto_a

    .line 732
    :cond_1b
    invoke-virtual {v0}, Lwz5;->b()V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 740
    .line 741
    .line 742
    move-result v1

    .line 743
    if-eqz v1, :cond_2d

    .line 744
    .line 745
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    check-cast v1, Ltz5;

    .line 750
    .line 751
    iget-object v1, v1, Ltz5;->a:Lro;

    .line 752
    .line 753
    const-string v2, "permission_denied"

    .line 754
    .line 755
    invoke-virtual {v1, v2, v4}, Lro;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    goto :goto_b

    .line 759
    :cond_1c
    const-string v8, "ac"

    .line 760
    .line 761
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    move-result v8

    .line 765
    const/4 v9, 0x2

    .line 766
    const-string v10, ")"

    .line 767
    .line 768
    const-string v11, " ("

    .line 769
    .line 770
    if-eqz v8, :cond_1d

    .line 771
    .line 772
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    check-cast v3, Ljava/lang/String;

    .line 777
    .line 778
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    check-cast v1, Ljava/lang/String;

    .line 783
    .line 784
    const-string v7, "Auth token revoked: "

    .line 785
    .line 786
    invoke-static {v7, v3, v11, v1, v10}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    new-array v3, v5, [Ljava/lang/Object;

    .line 791
    .line 792
    invoke-virtual {v2, v1, v4, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 793
    .line 794
    .line 795
    iput-object v4, v0, Lwz5;->q:Ljava/lang/String;

    .line 796
    .line 797
    const/4 v1, 0x1

    .line 798
    iput-boolean v1, v0, Lwz5;->r:Z

    .line 799
    .line 800
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 801
    .line 802
    .line 803
    sget-object v1, Lvs1;->c:Lm61;

    .line 804
    .line 805
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 806
    .line 807
    invoke-virtual {v6, v1, v2}, Lwj6;->p(Lm61;Ljava/lang/Object;)V

    .line 808
    .line 809
    .line 810
    iget-object v0, v0, Lwz5;->g:Lvr1;

    .line 811
    .line 812
    invoke-virtual {v0, v9}, Lvr1;->c(I)V

    .line 813
    .line 814
    .line 815
    return-void

    .line 816
    :cond_1d
    const-string v6, "apc"

    .line 817
    .line 818
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    move-result v6

    .line 822
    if-eqz v6, :cond_1e

    .line 823
    .line 824
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    check-cast v3, Ljava/lang/String;

    .line 829
    .line 830
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    check-cast v1, Ljava/lang/String;

    .line 835
    .line 836
    const-string v6, "App check token revoked: "

    .line 837
    .line 838
    invoke-static {v6, v3, v11, v1, v10}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    new-array v3, v5, [Ljava/lang/Object;

    .line 843
    .line 844
    invoke-virtual {v2, v1, v4, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 845
    .line 846
    .line 847
    iput-object v4, v0, Lwz5;->s:Ljava/lang/String;

    .line 848
    .line 849
    const/4 v1, 0x1

    .line 850
    iput-boolean v1, v0, Lwz5;->t:Z

    .line 851
    .line 852
    return-void

    .line 853
    :cond_1e
    const-string v0, "sd"

    .line 854
    .line 855
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    if-eqz v0, :cond_1f

    .line 860
    .line 861
    const-string v0, "msg"

    .line 862
    .line 863
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    check-cast v0, Ljava/lang/String;

    .line 868
    .line 869
    iget-object v1, v2, Lu00;->b:Ljava/lang/Object;

    .line 870
    .line 871
    check-cast v1, Lub;

    .line 872
    .line 873
    iget-object v3, v2, Lu00;->c:Ljava/lang/Object;

    .line 874
    .line 875
    check-cast v3, Ljava/lang/String;

    .line 876
    .line 877
    new-array v4, v5, [Ljava/lang/Object;

    .line 878
    .line 879
    invoke-virtual {v2, v0, v4}, Lu00;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 884
    .line 885
    .line 886
    invoke-virtual {v1, v9, v3, v0}, Lub;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    return-void

    .line 890
    :cond_1f
    invoke-virtual {v2}, Lu00;->e()Z

    .line 891
    .line 892
    .line 893
    move-result v0

    .line 894
    if-eqz v0, :cond_2d

    .line 895
    .line 896
    const-string v0, "Unrecognized action from server: "

    .line 897
    .line 898
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    new-array v1, v5, [Ljava/lang/Object;

    .line 903
    .line 904
    invoke-virtual {v2, v0, v4, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 905
    .line 906
    .line 907
    return-void

    .line 908
    :cond_20
    :goto_c
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    check-cast v3, Ljava/lang/String;

    .line 917
    .line 918
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v7

    .line 922
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    instance-of v9, v1, Ljava/lang/Integer;

    .line 927
    .line 928
    if-eqz v9, :cond_21

    .line 929
    .line 930
    check-cast v1, Ljava/lang/Integer;

    .line 931
    .line 932
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 933
    .line 934
    .line 935
    move-result v1

    .line 936
    int-to-long v9, v1

    .line 937
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    goto :goto_d

    .line 942
    :cond_21
    instance-of v9, v1, Ljava/lang/Long;

    .line 943
    .line 944
    if-eqz v9, :cond_22

    .line 945
    .line 946
    check-cast v1, Ljava/lang/Long;

    .line 947
    .line 948
    goto :goto_d

    .line 949
    :cond_22
    move-object v1, v4

    .line 950
    :goto_d
    if-eqz v0, :cond_23

    .line 951
    .line 952
    instance-of v9, v7, Ljava/util/Map;

    .line 953
    .line 954
    if-eqz v9, :cond_23

    .line 955
    .line 956
    move-object v9, v7

    .line 957
    check-cast v9, Ljava/util/Map;

    .line 958
    .line 959
    invoke-interface {v9}, Ljava/util/Map;->size()I

    .line 960
    .line 961
    .line 962
    move-result v9

    .line 963
    if-nez v9, :cond_23

    .line 964
    .line 965
    invoke-virtual {v2}, Lu00;->e()Z

    .line 966
    .line 967
    .line 968
    move-result v0

    .line 969
    if-eqz v0, :cond_2d

    .line 970
    .line 971
    const-string v0, "ignoring empty merge for path "

    .line 972
    .line 973
    invoke-static {v0, v3}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    new-array v1, v5, [Ljava/lang/Object;

    .line 978
    .line 979
    invoke-virtual {v2, v0, v4, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 980
    .line 981
    .line 982
    goto/16 :goto_12

    .line 983
    .line 984
    :cond_23
    invoke-static {v3}, Lyc9;->h0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 985
    .line 986
    .line 987
    move-result-object v2

    .line 988
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 989
    .line 990
    .line 991
    new-instance v12, Lgy5;

    .line 992
    .line 993
    invoke-direct {v12, v2}, Lgy5;-><init>(Ljava/util/List;)V

    .line 994
    .line 995
    .line 996
    iget-object v2, v6, Lwj6;->i:Lu00;

    .line 997
    .line 998
    invoke-virtual {v2}, Lu00;->e()Z

    .line 999
    .line 1000
    .line 1001
    move-result v3

    .line 1002
    const-string v9, "onDataUpdate: "

    .line 1003
    .line 1004
    if-eqz v3, :cond_24

    .line 1005
    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v3

    .line 1018
    new-array v10, v5, [Ljava/lang/Object;

    .line 1019
    .line 1020
    invoke-virtual {v2, v3, v4, v10}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1021
    .line 1022
    .line 1023
    :cond_24
    iget-object v3, v6, Lwj6;->k:Lu00;

    .line 1024
    .line 1025
    invoke-virtual {v3}, Lu00;->e()Z

    .line 1026
    .line 1027
    .line 1028
    move-result v3

    .line 1029
    if-eqz v3, :cond_25

    .line 1030
    .line 1031
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v3

    .line 1049
    new-array v5, v5, [Ljava/lang/Object;

    .line 1050
    .line 1051
    invoke-virtual {v2, v3, v4, v5}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1052
    .line 1053
    .line 1054
    :cond_25
    if-eqz v1, :cond_28

    .line 1055
    .line 1056
    :try_start_0
    new-instance v11, Lhx7;

    .line 1057
    .line 1058
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1059
    .line 1060
    .line 1061
    move-result-wide v3

    .line 1062
    invoke-direct {v11, v3, v4}, Lhx7;-><init>(J)V

    .line 1063
    .line 1064
    .line 1065
    if-eqz v0, :cond_27

    .line 1066
    .line 1067
    new-instance v13, Ljava/util/HashMap;

    .line 1068
    .line 1069
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1070
    .line 1071
    .line 1072
    check-cast v7, Ljava/util/Map;

    .line 1073
    .line 1074
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v0

    .line 1082
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1083
    .line 1084
    .line 1085
    move-result v1

    .line 1086
    if-eqz v1, :cond_26

    .line 1087
    .line 1088
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    check-cast v1, Ljava/util/Map$Entry;

    .line 1093
    .line 1094
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v3

    .line 1098
    sget-object v4, Lqv2;->e:Lqv2;

    .line 1099
    .line 1100
    invoke-static {v3, v4}, Lxh8;->a(Ljava/lang/Object;Lqn5;)Lqn5;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v3

    .line 1104
    new-instance v4, Lgy5;

    .line 1105
    .line 1106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    check-cast v1, Ljava/lang/String;

    .line 1111
    .line 1112
    invoke-direct {v4, v1}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v13, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    goto :goto_e

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    goto/16 :goto_11

    .line 1121
    .line 1122
    :cond_26
    iget-object v10, v6, Lwj6;->n:Lbv7;

    .line 1123
    .line 1124
    iget-object v0, v10, Lbv7;->g:Leo5;

    .line 1125
    .line 1126
    new-instance v9, Lnu7;

    .line 1127
    .line 1128
    const/4 v14, 0x0

    .line 1129
    invoke-direct/range {v9 .. v14}, Lnu7;-><init>(Lbv7;Lhx7;Lgy5;Ljava/lang/Object;I)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v0, v9}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    check-cast v0, Ljava/util/List;

    .line 1137
    .line 1138
    goto :goto_10

    .line 1139
    :cond_27
    sget-object v0, Lqv2;->e:Lqv2;

    .line 1140
    .line 1141
    invoke-static {v7, v0}, Lxh8;->a(Ljava/lang/Object;Lqn5;)Lqn5;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v13

    .line 1145
    iget-object v10, v6, Lwj6;->n:Lbv7;

    .line 1146
    .line 1147
    iget-object v0, v10, Lbv7;->g:Leo5;

    .line 1148
    .line 1149
    new-instance v9, Lnu7;

    .line 1150
    .line 1151
    const/4 v14, 0x1

    .line 1152
    invoke-direct/range {v9 .. v14}, Lnu7;-><init>(Lbv7;Lhx7;Lgy5;Ljava/lang/Object;I)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v0, v9}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    check-cast v0, Ljava/util/List;

    .line 1160
    .line 1161
    goto :goto_10

    .line 1162
    :cond_28
    if-eqz v0, :cond_2a

    .line 1163
    .line 1164
    new-instance v0, Ljava/util/HashMap;

    .line 1165
    .line 1166
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1167
    .line 1168
    .line 1169
    check-cast v7, Ljava/util/Map;

    .line 1170
    .line 1171
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v1

    .line 1175
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v1

    .line 1179
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1180
    .line 1181
    .line 1182
    move-result v3

    .line 1183
    if-eqz v3, :cond_29

    .line 1184
    .line 1185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v3

    .line 1189
    check-cast v3, Ljava/util/Map$Entry;

    .line 1190
    .line 1191
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v4

    .line 1195
    sget-object v5, Lqv2;->e:Lqv2;

    .line 1196
    .line 1197
    invoke-static {v4, v5}, Lxh8;->a(Ljava/lang/Object;Lqn5;)Lqn5;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v4

    .line 1201
    new-instance v5, Lgy5;

    .line 1202
    .line 1203
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v3

    .line 1207
    check-cast v3, Ljava/lang/String;

    .line 1208
    .line 1209
    invoke-direct {v5, v3}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    goto :goto_f

    .line 1216
    :cond_29
    iget-object v1, v6, Lwj6;->n:Lbv7;

    .line 1217
    .line 1218
    iget-object v3, v1, Lbv7;->g:Leo5;

    .line 1219
    .line 1220
    new-instance v4, Lwu7;

    .line 1221
    .line 1222
    invoke-direct {v4, v1, v0, v12}, Lwu7;-><init>(Lbv7;Ljava/util/HashMap;Lgy5;)V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v3, v4}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v0

    .line 1229
    check-cast v0, Ljava/util/List;

    .line 1230
    .line 1231
    goto :goto_10

    .line 1232
    :cond_2a
    sget-object v0, Lqv2;->e:Lqv2;

    .line 1233
    .line 1234
    invoke-static {v7, v0}, Lxh8;->a(Ljava/lang/Object;Lqn5;)Lqn5;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    iget-object v1, v6, Lwj6;->n:Lbv7;

    .line 1239
    .line 1240
    invoke-virtual {v1, v12, v0}, Lbv7;->g(Lgy5;Lqn5;)Ljava/util/List;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1245
    .line 1246
    .line 1247
    move-result v1

    .line 1248
    if-lez v1, :cond_2b

    .line 1249
    .line 1250
    invoke-virtual {v6, v12}, Lwj6;->m(Lgy5;)Lgy5;

    .line 1251
    .line 1252
    .line 1253
    :cond_2b
    invoke-virtual {v6, v0}, Lwj6;->j(Ljava/util/List;)V
    :try_end_0
    .catch Lxc2; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    .line 1255
    .line 1256
    goto :goto_12

    .line 1257
    :goto_11
    const-string v1, "FIREBASE INTERNAL ERROR"

    .line 1258
    .line 1259
    invoke-virtual {v2, v1, v0}, Lu00;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1260
    .line 1261
    .line 1262
    goto :goto_12

    .line 1263
    :cond_2c
    invoke-virtual {v2}, Lu00;->e()Z

    .line 1264
    .line 1265
    .line 1266
    move-result v0

    .line 1267
    if-eqz v0, :cond_2d

    .line 1268
    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    const-string v3, "Ignoring unknown message: "

    .line 1272
    .line 1273
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v0

    .line 1283
    new-array v1, v5, [Ljava/lang/Object;

    .line 1284
    .line 1285
    invoke-virtual {v2, v0, v4, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1286
    .line 1287
    .line 1288
    :cond_2d
    :goto_12
    return-void
.end method

.method public q(Ljava/util/Map;)V
    .locals 11

    .line 1
    const-string v0, "ts"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-string v2, "h"

    .line 14
    .line 15
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p0, Lvr1;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Lwz5;

    .line 24
    .line 25
    iput-object v2, v3, Lwz5;->c:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "s"

    .line 28
    .line 29
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/String;

    .line 34
    .line 35
    iget v4, p0, Lvr1;->b:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-ne v4, v5, :cond_c

    .line 39
    .line 40
    iget-object v4, p0, Lvr1;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Lnr8;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lvr1;->f:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Lu00;

    .line 50
    .line 51
    invoke-virtual {v4}, Lu00;->e()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    const-string v6, "realtime connection established"

    .line 60
    .line 61
    new-array v9, v8, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {v4, v6, v7, v9}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    const/4 v4, 0x2

    .line 67
    iput v4, p0, Lvr1;->b:I

    .line 68
    .line 69
    iget-object p0, v3, Lwz5;->a:Lwj6;

    .line 70
    .line 71
    iget-object v4, v3, Lwz5;->y:Lu00;

    .line 72
    .line 73
    invoke-virtual {v4}, Lu00;->e()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    const-string v6, "onReady"

    .line 80
    .line 81
    new-array v9, v8, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v4, v6, v7, v9}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v9

    .line 90
    iput-wide v9, v3, Lwz5;->f:J

    .line 91
    .line 92
    invoke-virtual {v4}, Lu00;->e()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    const-string v6, "handling timestamp"

    .line 99
    .line 100
    new-array v9, v8, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {v4, v6, v7, v9}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v9

    .line 109
    sub-long/2addr v0, v9

    .line 110
    new-instance v6, Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v9, "serverTimeOffset"

    .line 116
    .line 117
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Ljava/util/Map$Entry;

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v6}, Lm61;->b(Ljava/lang/String;)Lm61;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p0, v6, v1}, Lwj6;->p(Lm61;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    iget-boolean v0, v3, Lwz5;->e:Z

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    new-instance v0, Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v1, v3, Lwz5;->u:Lyr1;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v6, "sdk.android."

    .line 182
    .line 183
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const/16 v6, 0x2e

    .line 187
    .line 188
    const/16 v9, 0x2d

    .line 189
    .line 190
    const-string v10, "22.0.1"

    .line 191
    .line 192
    invoke-virtual {v10, v6, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Lu00;->e()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_4

    .line 215
    .line 216
    const-string v1, "Sending first connection stats"

    .line 217
    .line 218
    new-array v6, v8, [Ljava/lang/Object;

    .line 219
    .line 220
    invoke-virtual {v4, v1, v7, v6}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_5

    .line 228
    .line 229
    new-instance v1, Ljava/util/HashMap;

    .line 230
    .line 231
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v6, "c"

    .line 235
    .line 236
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    new-instance v0, Lpz5;

    .line 240
    .line 241
    invoke-direct {v0, v3}, Lpz5;-><init>(Lwz5;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v2, v8, v1, v0}, Lwz5;->n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_5
    invoke-virtual {v4}, Lu00;->e()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_6

    .line 253
    .line 254
    const-string v0, "Not sending stats because stats are empty"

    .line 255
    .line 256
    new-array v1, v8, [Ljava/lang/Object;

    .line 257
    .line 258
    invoke-virtual {v4, v0, v7, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    :cond_6
    :goto_1
    invoke-virtual {v4}, Lu00;->e()Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_7

    .line 266
    .line 267
    const-string v0, "calling restore tokens"

    .line 268
    .line 269
    new-array v1, v8, [Ljava/lang/Object;

    .line 270
    .line 271
    invoke-virtual {v4, v0, v7, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    :cond_7
    iget-object v0, v3, Lwz5;->h:Lrz5;

    .line 275
    .line 276
    sget-object v1, Lrz5;->c:Lrz5;

    .line 277
    .line 278
    if-ne v0, v1, :cond_8

    .line 279
    .line 280
    move v1, v5

    .line 281
    goto :goto_2

    .line 282
    :cond_8
    move v1, v8

    .line 283
    :goto_2
    const-string v2, "Wanted to restore tokens, but was in wrong state: %s"

    .line 284
    .line 285
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v1, v2, v0}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, v3, Lwz5;->q:Ljava/lang/String;

    .line 293
    .line 294
    if-eqz v0, :cond_a

    .line 295
    .line 296
    invoke-virtual {v4}, Lu00;->e()Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_9

    .line 301
    .line 302
    const-string v0, "Restoring auth."

    .line 303
    .line 304
    new-array v1, v8, [Ljava/lang/Object;

    .line 305
    .line 306
    invoke-virtual {v4, v0, v7, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :cond_9
    sget-object v0, Lrz5;->d:Lrz5;

    .line 310
    .line 311
    iput-object v0, v3, Lwz5;->h:Lrz5;

    .line 312
    .line 313
    invoke-virtual {v3, v5}, Lwz5;->j(Z)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_a
    invoke-virtual {v4}, Lu00;->e()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_b

    .line 322
    .line 323
    const-string v0, "Not restoring auth because auth token is null."

    .line 324
    .line 325
    new-array v1, v8, [Ljava/lang/Object;

    .line 326
    .line 327
    invoke-virtual {v4, v0, v7, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_b
    sget-object v0, Lrz5;->e:Lrz5;

    .line 331
    .line 332
    iput-object v0, v3, Lwz5;->h:Lrz5;

    .line 333
    .line 334
    invoke-virtual {v3, v5}, Lwz5;->i(Z)V

    .line 335
    .line 336
    .line 337
    :goto_3
    iput-boolean v8, v3, Lwz5;->e:Z

    .line 338
    .line 339
    iput-object p1, v3, Lwz5;->A:Ljava/lang/String;

    .line 340
    .line 341
    sget-object p1, Lvs1;->d:Lm61;

    .line 342
    .line 343
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 344
    .line 345
    invoke-virtual {p0, p1, v0}, Lwj6;->p(Lm61;Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :cond_c
    return-void
.end method

.method public r(Ljava/util/HashMap;)V
    .locals 8

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    iget-object v1, p0, Lvr1;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lu00;

    .line 6
    .line 7
    const-string v2, "Failed to parse server message: missing message type:"

    .line 8
    .line 9
    const-string v3, "Ignoring unknown server message type: "

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    :try_start_0
    const-string v7, "t"

    .line 15
    .line 16
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    check-cast v7, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v7, :cond_3

    .line 23
    .line 24
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/util/Map;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lvr1;->p(Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v2, "c"

    .line 43
    .line 44
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/util/Map;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lvr1;->o(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-virtual {v1}, Lu00;->e()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-array v0, v6, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v1, p1, v5, v0}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void

    .line 76
    :cond_3
    invoke-virtual {v1}, Lu00;->e()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-array v0, v6, [Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {v1, p1, v5, v0}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    invoke-virtual {p0, v4}, Lvr1;->c(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :goto_0
    invoke-virtual {v1}, Lu00;->e()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v2, "Failed to parse server message: "

    .line 116
    .line 117
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-array v0, v6, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {v1, p1, v5, v0}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-virtual {p0, v4}, Lvr1;->c(I)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lvr1;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu00;

    .line 4
    .line 5
    invoke-virtual {v0}, Lu00;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Got a reset; killing connection to "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lvr1;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lf64;

    .line 21
    .line 22
    iget-object v2, v2, Lf64;->a:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "; Updating internalHost to "

    .line 25
    .line 26
    invoke-static {v1, v2, v3, p1}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v1, v3, v2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lvr1;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lwz5;

    .line 40
    .line 41
    iput-object p1, v0, Lwz5;->c:Ljava/lang/String;

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lvr1;->c(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public t(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lvr1;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ge p1, p0, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lvr1;->a:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "JsonReader(source=\'"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lvr1;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "\', currentPosition="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget p0, p0, Lvr1;->b:I

    .line 31
    .line 32
    const/16 v1, 0x29

    .line 33
    .line 34
    invoke-static {v0, p0, v1}, Leq3;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public u()I
    .locals 4

    .line 1
    iget v0, p0, Lvr1;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Lvr1;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v0, v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x20

    .line 22
    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    if-eq v2, v3, :cond_1

    .line 28
    .line 29
    const/16 v3, 0xd

    .line 30
    .line 31
    if-eq v2, v3, :cond_1

    .line 32
    .line 33
    const/16 v3, 0x9

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iput v0, p0, Lvr1;->b:I

    .line 41
    .line 42
    return v0
.end method

.method public v()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lvr1;->u()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lvr1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x2c

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget v0, p0, Lvr1;->b:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Lvr1;->b:I

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    :goto_0
    return v3
.end method

.method public w(C)V
    .locals 4

    .line 1
    iget v0, p0, Lvr1;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/16 v3, 0x22

    .line 8
    .line 9
    if-ne p1, v3, :cond_0

    .line 10
    .line 11
    add-int/lit8 v3, v0, -0x1

    .line 12
    .line 13
    :try_start_0
    iput v3, p0, Lvr1;->b:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lvr1;->i()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput v0, p0, Lvr1;->b:I

    .line 20
    .line 21
    const-string v0, "null"

    .line 22
    .line 23
    invoke-static {v3, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget p1, p0, Lvr1;->b:I

    .line 30
    .line 31
    sub-int/2addr p1, v2

    .line 32
    const-string v0, "Use \'coerceInputValues = true\' in \'Json {}\' builder to coerce nulls if property has a default value."

    .line 33
    .line 34
    const-string v2, "Expected string literal but \'null\' literal was found"

    .line 35
    .line 36
    invoke-virtual {p0, p1, v2, v0}, Lvr1;->j(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    iput v0, p0, Lvr1;->b:I

    .line 42
    .line 43
    throw p1

    .line 44
    :cond_0
    invoke-static {p1}, Lz85;->b(C)B

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1, v2}, Lvr1;->l(BZ)V

    .line 49
    .line 50
    .line 51
    throw v1
.end method
