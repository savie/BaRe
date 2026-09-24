.class public abstract Lmm0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public a:I

.field public b:Lkm2;

.field public c:Le66;

.field public d:Landroid/graphics/drawable/BitmapDrawable;

.field public e:I

.field public f:Z

.field public k:I

.field public n:I

.field public p:Ljo4;

.field public q:Z

.field public r:Landroid/graphics/drawable/Drawable;

.field public t:Lou5;

.field public x:Liz0;

.field public y:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkm2;->c:Ljm2;

    .line 5
    .line 6
    iput-object v0, p0, Lmm0;->b:Lkm2;

    .line 7
    .line 8
    sget-object v0, Le66;->c:Le66;

    .line 9
    .line 10
    iput-object v0, p0, Lmm0;->c:Le66;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lmm0;->f:Z

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lmm0;->k:I

    .line 17
    .line 18
    iput v1, p0, Lmm0;->n:I

    .line 19
    .line 20
    sget-object v1, Ltv2;->b:Ltv2;

    .line 21
    .line 22
    iput-object v1, p0, Lmm0;->p:Ljo4;

    .line 23
    .line 24
    new-instance v1, Lou5;

    .line 25
    .line 26
    invoke-direct {v1}, Lou5;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lmm0;->t:Lou5;

    .line 30
    .line 31
    new-instance v1, Liz0;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v2}, Ldg7;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lmm0;->x:Liz0;

    .line 38
    .line 39
    const-class v1, Ljava/lang/Object;

    .line 40
    .line 41
    iput-object v1, p0, Lmm0;->y:Ljava/lang/Class;

    .line 42
    .line 43
    iput-boolean v0, p0, Lmm0;->I:Z

    .line 44
    .line 45
    return-void
.end method

.method public static h(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method


# virtual methods
.method public a(Lmm0;)Lmm0;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lmm0;->a(Lmm0;)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget v0, p1, Lmm0;->a:I

    .line 15
    .line 16
    iget v0, p1, Lmm0;->a:I

    .line 17
    .line 18
    const/high16 v1, 0x100000

    .line 19
    .line 20
    invoke-static {v0, v1}, Lmm0;->h(II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p1, Lmm0;->J:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lmm0;->J:Z

    .line 29
    .line 30
    :cond_1
    iget v0, p1, Lmm0;->a:I

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-static {v0, v1}, Lmm0;->h(II)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p1, Lmm0;->b:Lkm2;

    .line 40
    .line 41
    iput-object v0, p0, Lmm0;->b:Lkm2;

    .line 42
    .line 43
    :cond_2
    iget v0, p1, Lmm0;->a:I

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-static {v0, v1}, Lmm0;->h(II)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p1, Lmm0;->c:Le66;

    .line 54
    .line 55
    iput-object v0, p0, Lmm0;->c:Le66;

    .line 56
    .line 57
    :cond_3
    iget v0, p1, Lmm0;->a:I

    .line 58
    .line 59
    const/16 v1, 0x10

    .line 60
    .line 61
    invoke-static {v0, v1}, Lmm0;->h(II)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget v0, p0, Lmm0;->a:I

    .line 68
    .line 69
    and-int/lit8 v0, v0, -0x21

    .line 70
    .line 71
    iput v0, p0, Lmm0;->a:I

    .line 72
    .line 73
    :cond_4
    iget v0, p1, Lmm0;->a:I

    .line 74
    .line 75
    const/16 v1, 0x20

    .line 76
    .line 77
    invoke-static {v0, v1}, Lmm0;->h(II)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    iget v0, p0, Lmm0;->a:I

    .line 84
    .line 85
    and-int/lit8 v0, v0, -0x11

    .line 86
    .line 87
    iput v0, p0, Lmm0;->a:I

    .line 88
    .line 89
    :cond_5
    iget v0, p1, Lmm0;->a:I

    .line 90
    .line 91
    const/16 v1, 0x40

    .line 92
    .line 93
    invoke-static {v0, v1}, Lmm0;->h(II)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    iget-object v0, p1, Lmm0;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    .line 101
    iput-object v0, p0, Lmm0;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lmm0;->e:I

    .line 105
    .line 106
    iget v0, p0, Lmm0;->a:I

    .line 107
    .line 108
    and-int/lit16 v0, v0, -0x81

    .line 109
    .line 110
    iput v0, p0, Lmm0;->a:I

    .line 111
    .line 112
    :cond_6
    iget v0, p1, Lmm0;->a:I

    .line 113
    .line 114
    const/16 v1, 0x80

    .line 115
    .line 116
    invoke-static {v0, v1}, Lmm0;->h(II)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const/4 v1, 0x0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    iget v0, p1, Lmm0;->e:I

    .line 124
    .line 125
    iput v0, p0, Lmm0;->e:I

    .line 126
    .line 127
    iput-object v1, p0, Lmm0;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 128
    .line 129
    iget v0, p0, Lmm0;->a:I

    .line 130
    .line 131
    and-int/lit8 v0, v0, -0x41

    .line 132
    .line 133
    iput v0, p0, Lmm0;->a:I

    .line 134
    .line 135
    :cond_7
    iget v0, p1, Lmm0;->a:I

    .line 136
    .line 137
    const/16 v2, 0x100

    .line 138
    .line 139
    invoke-static {v0, v2}, Lmm0;->h(II)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    iget-boolean v0, p1, Lmm0;->f:Z

    .line 146
    .line 147
    iput-boolean v0, p0, Lmm0;->f:Z

    .line 148
    .line 149
    :cond_8
    iget v0, p1, Lmm0;->a:I

    .line 150
    .line 151
    const/16 v2, 0x200

    .line 152
    .line 153
    invoke-static {v0, v2}, Lmm0;->h(II)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    iget v0, p1, Lmm0;->n:I

    .line 160
    .line 161
    iput v0, p0, Lmm0;->n:I

    .line 162
    .line 163
    iget v0, p1, Lmm0;->k:I

    .line 164
    .line 165
    iput v0, p0, Lmm0;->k:I

    .line 166
    .line 167
    :cond_9
    iget v0, p1, Lmm0;->a:I

    .line 168
    .line 169
    const/16 v2, 0x400

    .line 170
    .line 171
    invoke-static {v0, v2}, Lmm0;->h(II)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_a

    .line 176
    .line 177
    iget-object v0, p1, Lmm0;->p:Ljo4;

    .line 178
    .line 179
    iput-object v0, p0, Lmm0;->p:Ljo4;

    .line 180
    .line 181
    :cond_a
    iget v0, p1, Lmm0;->a:I

    .line 182
    .line 183
    const/16 v2, 0x1000

    .line 184
    .line 185
    invoke-static {v0, v2}, Lmm0;->h(II)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_b

    .line 190
    .line 191
    iget-object v0, p1, Lmm0;->y:Ljava/lang/Class;

    .line 192
    .line 193
    iput-object v0, p0, Lmm0;->y:Ljava/lang/Class;

    .line 194
    .line 195
    :cond_b
    iget v0, p1, Lmm0;->a:I

    .line 196
    .line 197
    const/16 v2, 0x2000

    .line 198
    .line 199
    invoke-static {v0, v2}, Lmm0;->h(II)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_c

    .line 204
    .line 205
    iget-object v0, p1, Lmm0;->r:Landroid/graphics/drawable/Drawable;

    .line 206
    .line 207
    iput-object v0, p0, Lmm0;->r:Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    iget v0, p0, Lmm0;->a:I

    .line 210
    .line 211
    and-int/lit16 v0, v0, -0x4001

    .line 212
    .line 213
    iput v0, p0, Lmm0;->a:I

    .line 214
    .line 215
    :cond_c
    iget v0, p1, Lmm0;->a:I

    .line 216
    .line 217
    const/16 v2, 0x4000

    .line 218
    .line 219
    invoke-static {v0, v2}, Lmm0;->h(II)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_d

    .line 224
    .line 225
    iput-object v1, p0, Lmm0;->r:Landroid/graphics/drawable/Drawable;

    .line 226
    .line 227
    iget v0, p0, Lmm0;->a:I

    .line 228
    .line 229
    and-int/lit16 v0, v0, -0x2001

    .line 230
    .line 231
    iput v0, p0, Lmm0;->a:I

    .line 232
    .line 233
    :cond_d
    iget v0, p1, Lmm0;->a:I

    .line 234
    .line 235
    const/high16 v1, 0x20000

    .line 236
    .line 237
    invoke-static {v0, v1}, Lmm0;->h(II)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_e

    .line 242
    .line 243
    iget-boolean v0, p1, Lmm0;->q:Z

    .line 244
    .line 245
    iput-boolean v0, p0, Lmm0;->q:Z

    .line 246
    .line 247
    :cond_e
    iget v0, p1, Lmm0;->a:I

    .line 248
    .line 249
    const/16 v1, 0x800

    .line 250
    .line 251
    invoke-static {v0, v1}, Lmm0;->h(II)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_f

    .line 256
    .line 257
    iget-object v0, p0, Lmm0;->x:Liz0;

    .line 258
    .line 259
    iget-object v1, p1, Lmm0;->x:Liz0;

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Lk50;->putAll(Ljava/util/Map;)V

    .line 262
    .line 263
    .line 264
    iget-boolean v0, p1, Lmm0;->I:Z

    .line 265
    .line 266
    iput-boolean v0, p0, Lmm0;->I:Z

    .line 267
    .line 268
    :cond_f
    iget v0, p0, Lmm0;->a:I

    .line 269
    .line 270
    iget v1, p1, Lmm0;->a:I

    .line 271
    .line 272
    or-int/2addr v0, v1

    .line 273
    iput v0, p0, Lmm0;->a:I

    .line 274
    .line 275
    iget-object v0, p0, Lmm0;->t:Lou5;

    .line 276
    .line 277
    iget-object p1, p1, Lmm0;->t:Lou5;

    .line 278
    .line 279
    iget-object v0, v0, Lou5;->b:Liz0;

    .line 280
    .line 281
    iget-object p1, p1, Lou5;->b:Liz0;

    .line 282
    .line 283
    invoke-virtual {v0, p1}, Liz0;->h(Lk50;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Lmm0;->o()V

    .line 287
    .line 288
    .line 289
    return-object p0
.end method

.method public b()Lmm0;
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmm0;

    .line 6
    .line 7
    new-instance v1, Lou5;

    .line 8
    .line 9
    invoke-direct {v1}, Lou5;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lmm0;->t:Lou5;

    .line 13
    .line 14
    iget-object v2, p0, Lmm0;->t:Lou5;

    .line 15
    .line 16
    iget-object v1, v1, Lou5;->b:Liz0;

    .line 17
    .line 18
    iget-object v2, v2, Lou5;->b:Liz0;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Liz0;->h(Lk50;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Liz0;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2}, Ldg7;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lmm0;->x:Liz0;

    .line 30
    .line 31
    iget-object p0, p0, Lmm0;->x:Liz0;

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Lk50;->putAll(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    iput-boolean v2, v0, Lmm0;->G:Z

    .line 37
    .line 38
    iput-boolean v2, v0, Lmm0;->H:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    return-object v0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method

.method public final c(Ljava/lang/Class;)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lmm0;->c(Ljava/lang/Class;)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iput-object p1, p0, Lmm0;->y:Ljava/lang/Class;

    .line 15
    .line 16
    iget p1, p0, Lmm0;->a:I

    .line 17
    .line 18
    or-int/lit16 p1, p1, 0x1000

    .line 19
    .line 20
    iput p1, p0, Lmm0;->a:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lmm0;->o()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final d(Lkm2;)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lmm0;->d(Lkm2;)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iput-object p1, p0, Lmm0;->b:Lkm2;

    .line 15
    .line 16
    iget p1, p0, Lmm0;->a:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x4

    .line 19
    .line 20
    iput p1, p0, Lmm0;->a:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lmm0;->o()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lmm0;->e(Landroid/graphics/drawable/Drawable;)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iput-object p1, p0, Lmm0;->r:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget p1, p0, Lmm0;->a:I

    .line 17
    .line 18
    or-int/lit16 p1, p1, 0x2000

    .line 19
    .line 20
    and-int/lit16 p1, p1, -0x4001

    .line 21
    .line 22
    iput p1, p0, Lmm0;->a:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lmm0;->o()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lmm0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lmm0;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmm0;->f(Lmm0;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final f(Lmm0;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lmm0;->e:I

    .line 13
    .line 14
    iget v1, p1, Lmm0;->e:I

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lmm0;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 19
    .line 20
    iget-object v1, p1, Lmm0;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lxh8;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lmm0;->r:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    iget-object v1, p1, Lmm0;->r:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lxh8;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-boolean v0, p0, Lmm0;->f:Z

    .line 39
    .line 40
    iget-boolean v1, p1, Lmm0;->f:Z

    .line 41
    .line 42
    if-ne v0, v1, :cond_0

    .line 43
    .line 44
    iget v0, p0, Lmm0;->k:I

    .line 45
    .line 46
    iget v1, p1, Lmm0;->k:I

    .line 47
    .line 48
    if-ne v0, v1, :cond_0

    .line 49
    .line 50
    iget v0, p0, Lmm0;->n:I

    .line 51
    .line 52
    iget v1, p1, Lmm0;->n:I

    .line 53
    .line 54
    if-ne v0, v1, :cond_0

    .line 55
    .line 56
    iget-boolean v0, p0, Lmm0;->q:Z

    .line 57
    .line 58
    iget-boolean v1, p1, Lmm0;->q:Z

    .line 59
    .line 60
    if-ne v0, v1, :cond_0

    .line 61
    .line 62
    iget-object v0, p0, Lmm0;->b:Lkm2;

    .line 63
    .line 64
    iget-object v1, p1, Lmm0;->b:Lkm2;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    iget-object v0, p0, Lmm0;->c:Le66;

    .line 73
    .line 74
    iget-object v1, p1, Lmm0;->c:Le66;

    .line 75
    .line 76
    if-ne v0, v1, :cond_0

    .line 77
    .line 78
    iget-object v0, p0, Lmm0;->t:Lou5;

    .line 79
    .line 80
    iget-object v1, p1, Lmm0;->t:Lou5;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lou5;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    iget-object v0, p0, Lmm0;->x:Liz0;

    .line 89
    .line 90
    iget-object v1, p1, Lmm0;->x:Liz0;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ldg7;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    iget-object v0, p0, Lmm0;->y:Ljava/lang/Class;

    .line 99
    .line 100
    iget-object v1, p1, Lmm0;->y:Ljava/lang/Class;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    .line 108
    iget-object p0, p0, Lmm0;->p:Ljo4;

    .line 109
    .line 110
    iget-object p1, p1, Lmm0;->p:Ljo4;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_0

    .line 117
    .line 118
    const/4 p0, 0x1

    .line 119
    return p0

    .line 120
    :cond_0
    const/4 p0, 0x0

    .line 121
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1, v0}, Lxh8;->r(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, Lxh8;->r(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v2}, Lxh8;->s(ILjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v3, p0, Lmm0;->e:I

    .line 24
    .line 25
    invoke-static {v3, v0}, Lxh8;->r(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v3, p0, Lmm0;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    .line 31
    invoke-static {v0, v3}, Lxh8;->s(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v1, v0}, Lxh8;->r(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v3, p0, Lmm0;->r:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    invoke-static {v0, v3}, Lxh8;->s(ILjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-boolean v3, p0, Lmm0;->f:Z

    .line 46
    .line 47
    invoke-static {v3, v0}, Lxh8;->r(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget v3, p0, Lmm0;->k:I

    .line 52
    .line 53
    invoke-static {v3, v0}, Lxh8;->r(II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget v3, p0, Lmm0;->n:I

    .line 58
    .line 59
    invoke-static {v3, v0}, Lxh8;->r(II)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-boolean v3, p0, Lmm0;->q:Z

    .line 64
    .line 65
    invoke-static {v3, v0}, Lxh8;->r(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-static {v3, v0}, Lxh8;->r(II)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {v1, v0}, Lxh8;->r(II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v1, v0}, Lxh8;->r(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v1, p0, Lmm0;->b:Lkm2;

    .line 83
    .line 84
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object v1, p0, Lmm0;->c:Le66;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v1, p0, Lmm0;->t:Lou5;

    .line 95
    .line 96
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-object v1, p0, Lmm0;->x:Liz0;

    .line 101
    .line 102
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iget-object v1, p0, Lmm0;->y:Ljava/lang/Class;

    .line 107
    .line 108
    invoke-static {v0, v1}, Lxh8;->s(ILjava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object p0, p0, Lmm0;->p:Ljo4;

    .line 113
    .line 114
    invoke-static {v0, p0}, Lxh8;->s(ILjava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    invoke-static {p0, v2}, Lxh8;->s(ILjava/lang/Object;)I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    return p0
.end method

.method public final i(Lso2;Lpr0;)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lmm0;->i(Lso2;Lpr0;)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v0, Lso2;->f:Liu5;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lmm0;->p(Liu5;Ljava/lang/Object;)Lmm0;

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p2, p1}, Lmm0;->t(Ll98;Z)Lmm0;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final j(II)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lmm0;->j(II)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iput p1, p0, Lmm0;->n:I

    .line 15
    .line 16
    iput p2, p0, Lmm0;->k:I

    .line 17
    .line 18
    iget p1, p0, Lmm0;->a:I

    .line 19
    .line 20
    or-int/lit16 p1, p1, 0x200

    .line 21
    .line 22
    iput p1, p0, Lmm0;->a:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lmm0;->o()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final k()Lmm0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lmm0;->k()Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const v0, 0x7f080208

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lmm0;->e:I

    .line 18
    .line 19
    iget v0, p0, Lmm0;->a:I

    .line 20
    .line 21
    or-int/lit16 v0, v0, 0x80

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lmm0;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 25
    .line 26
    and-int/lit8 v0, v0, -0x41

    .line 27
    .line 28
    iput v0, p0, Lmm0;->a:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lmm0;->o()V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public final l(Landroid/graphics/drawable/BitmapDrawable;)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lmm0;->l(Landroid/graphics/drawable/BitmapDrawable;)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iput-object p1, p0, Lmm0;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    .line 16
    iget p1, p0, Lmm0;->a:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x40

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lmm0;->e:I

    .line 22
    .line 23
    and-int/lit16 p1, p1, -0x81

    .line 24
    .line 25
    iput p1, p0, Lmm0;->a:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lmm0;->o()V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public final m(Le66;)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lmm0;->m(Le66;)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iput-object p1, p0, Lmm0;->c:Le66;

    .line 15
    .line 16
    iget p1, p0, Lmm0;->a:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x8

    .line 19
    .line 20
    iput p1, p0, Lmm0;->a:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lmm0;->o()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final n(Lso2;Lpr0;Z)Lmm0;
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lmm0;->s(Lso2;Lpr0;)Lmm0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmm0;->i(Lso2;Lpr0;)Lmm0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lmm0;->I:Z

    .line 14
    .line 15
    return-object p0
.end method

.method public final o()V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmm0;->G:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "You cannot modify locked T, consider clone()"

    .line 7
    .line 8
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final p(Liu5;Ljava/lang/Object;)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lmm0;->p(Liu5;Ljava/lang/Object;)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {p1}, Lms8;->i(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lmm0;->t:Lou5;

    .line 18
    .line 19
    iget-object v0, v0, Lou5;->b:Liz0;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Liz0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lmm0;->o()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final q(Lnr5;)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lmm0;->q(Lnr5;)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iput-object p1, p0, Lmm0;->p:Ljo4;

    .line 15
    .line 16
    iget p1, p0, Lmm0;->a:I

    .line 17
    .line 18
    or-int/lit16 p1, p1, 0x400

    .line 19
    .line 20
    iput p1, p0, Lmm0;->a:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lmm0;->o()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final r()Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lmm0;->r()Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lmm0;->f:Z

    .line 16
    .line 17
    iget v0, p0, Lmm0;->a:I

    .line 18
    .line 19
    or-int/lit16 v0, v0, 0x100

    .line 20
    .line 21
    iput v0, p0, Lmm0;->a:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lmm0;->o()V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final s(Lso2;Lpr0;)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lmm0;->s(Lso2;Lpr0;)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v0, Lso2;->f:Liu5;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lmm0;->p(Liu5;Ljava/lang/Object;)Lmm0;

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p2, p1}, Lmm0;->t(Ll98;Z)Lmm0;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final t(Ll98;Z)Lmm0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lmm0;->t(Ll98;Z)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lzo2;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Lzo2;-><init>(Ll98;Z)V

    .line 17
    .line 18
    .line 19
    const-class v1, Landroid/graphics/Bitmap;

    .line 20
    .line 21
    invoke-virtual {p0, v1, p1, p2}, Lmm0;->u(Ljava/lang/Class;Ll98;Z)Lmm0;

    .line 22
    .line 23
    .line 24
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0, p2}, Lmm0;->u(Ljava/lang/Class;Ll98;Z)Lmm0;

    .line 27
    .line 28
    .line 29
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    .line 31
    invoke-virtual {p0, v1, v0, p2}, Lmm0;->u(Ljava/lang/Class;Ll98;Z)Lmm0;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lhx3;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lhx3;-><init>(Ll98;)V

    .line 37
    .line 38
    .line 39
    const-class p1, Lfx3;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0, p2}, Lmm0;->u(Ljava/lang/Class;Ll98;Z)Lmm0;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lmm0;->o()V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public final u(Ljava/lang/Class;Ll98;Z)Lmm0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lmm0;->u(Ljava/lang/Class;Ll98;Z)Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {p2}, Lms8;->i(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lmm0;->x:Liz0;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Liz0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lmm0;->a:I

    .line 23
    .line 24
    const p2, 0x10800

    .line 25
    .line 26
    .line 27
    or-int/2addr p2, p1

    .line 28
    iput p2, p0, Lmm0;->a:I

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lmm0;->I:Z

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    const p2, 0x30800

    .line 36
    .line 37
    .line 38
    or-int/2addr p1, p2

    .line 39
    iput p1, p0, Lmm0;->a:I

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lmm0;->q:Z

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lmm0;->o()V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public final v()Lmm0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmm0;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lmm0;->b()Lmm0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lmm0;->v()Lmm0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lmm0;->J:Z

    .line 16
    .line 17
    iget v0, p0, Lmm0;->a:I

    .line 18
    .line 19
    const/high16 v1, 0x100000

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    iput v0, p0, Lmm0;->a:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lmm0;->o()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method
