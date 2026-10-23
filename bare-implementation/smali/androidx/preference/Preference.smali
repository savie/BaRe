.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field public G:Landroid/os/Bundle;

.field public H:Z

.field public final I:Z

.field public J:Z

.field public final K:Ljava/lang/String;

.field public final L:Ljava/lang/Object;

.field public M:Z

.field public N:Z

.field public O:Z

.field public final P:Z

.field public final Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public final U:Z

.field public final V:Z

.field public W:I

.field public X:I

.field public Y:Lf46;

.field public Z:Ljava/util/ArrayList;

.field public final a:Landroid/content/Context;

.field public a0:Landroidx/preference/PreferenceGroup;

.field public b:Lh46;

.field public b0:Z

.field public c:J

.field public c0:Lu36;

.field public d:Z

.field public d0:Lv36;

.field public e:Llr1;

.field public final e0:Lju0;

.field public f:Lt36;

.field public k:I

.field public n:Ljava/lang/CharSequence;

.field public p:Ljava/lang/CharSequence;

.field public q:I

.field public r:Landroid/graphics/drawable/Drawable;

.field public final t:Ljava/lang/String;

.field public x:Landroid/content/Intent;

.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404c0

    const v1, 0x101008e

    .line 351
    invoke-static {p1, v0, v1}, Lx13;->q(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Landroidx/preference/Preference;->k:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroidx/preference/Preference;->H:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Landroidx/preference/Preference;->I:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Landroidx/preference/Preference;->J:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Landroidx/preference/Preference;->M:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Landroidx/preference/Preference;->N:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Landroidx/preference/Preference;->O:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Landroidx/preference/Preference;->P:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Landroidx/preference/Preference;->Q:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Landroidx/preference/Preference;->S:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Landroidx/preference/Preference;->V:Z

    .line 29
    .line 30
    const v2, 0x7f0d013a

    .line 31
    .line 32
    .line 33
    iput v2, p0, Landroidx/preference/Preference;->W:I

    .line 34
    .line 35
    new-instance v3, Lju0;

    .line 36
    .line 37
    invoke-direct {v3, p0, v1}, Lju0;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Landroidx/preference/Preference;->e0:Lju0;

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 43
    .line 44
    sget-object v3, Lde6;->g:[I

    .line 45
    .line 46
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/16 p2, 0x17

    .line 51
    .line 52
    const/4 p3, 0x0

    .line 53
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iput p2, p0, Landroidx/preference/Preference;->q:I

    .line 62
    .line 63
    const/16 p2, 0x1a

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-nez p2, :cond_0

    .line 70
    .line 71
    const/4 p2, 0x6

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :cond_0
    iput-object p2, p0, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 77
    .line 78
    const/16 p2, 0x22

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-nez p2, :cond_1

    .line 85
    .line 86
    const/4 p2, 0x4

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    :cond_1
    iput-object p2, p0, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 92
    .line 93
    const/16 p2, 0x21

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-nez p2, :cond_2

    .line 100
    .line 101
    const/4 p2, 0x7

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    :cond_2
    iput-object p2, p0, Landroidx/preference/Preference;->p:Ljava/lang/CharSequence;

    .line 107
    .line 108
    const/16 p2, 0x8

    .line 109
    .line 110
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    const/16 p4, 0x1c

    .line 115
    .line 116
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    iput p2, p0, Landroidx/preference/Preference;->k:I

    .line 121
    .line 122
    const/16 p2, 0x16

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    if-nez p2, :cond_3

    .line 129
    .line 130
    const/16 p2, 0xd

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    :cond_3
    iput-object p2, p0, Landroidx/preference/Preference;->y:Ljava/lang/String;

    .line 137
    .line 138
    const/4 p2, 0x3

    .line 139
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    const/16 p4, 0x1b

    .line 144
    .line 145
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    iput p2, p0, Landroidx/preference/Preference;->W:I

    .line 150
    .line 151
    const/16 p2, 0x9

    .line 152
    .line 153
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    const/16 p4, 0x23

    .line 158
    .line 159
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    iput p2, p0, Landroidx/preference/Preference;->X:I

    .line 164
    .line 165
    const/4 p2, 0x2

    .line 166
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    const/16 p4, 0x15

    .line 171
    .line 172
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    iput-boolean p2, p0, Landroidx/preference/Preference;->H:Z

    .line 177
    .line 178
    const/4 p2, 0x5

    .line 179
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    const/16 p4, 0x1e

    .line 184
    .line 185
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    iput-boolean p2, p0, Landroidx/preference/Preference;->I:Z

    .line 190
    .line 191
    const/16 p4, 0x1d

    .line 192
    .line 193
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 198
    .line 199
    .line 200
    move-result p4

    .line 201
    iput-boolean p4, p0, Landroidx/preference/Preference;->J:Z

    .line 202
    .line 203
    const/16 p4, 0x13

    .line 204
    .line 205
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p4

    .line 209
    if-nez p4, :cond_4

    .line 210
    .line 211
    const/16 p4, 0xa

    .line 212
    .line 213
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p4

    .line 217
    :cond_4
    iput-object p4, p0, Landroidx/preference/Preference;->K:Ljava/lang/String;

    .line 218
    .line 219
    const/16 p4, 0x10

    .line 220
    .line 221
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 226
    .line 227
    .line 228
    move-result p4

    .line 229
    iput-boolean p4, p0, Landroidx/preference/Preference;->P:Z

    .line 230
    .line 231
    const/16 p4, 0x11

    .line 232
    .line 233
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    iput-boolean p2, p0, Landroidx/preference/Preference;->Q:Z

    .line 242
    .line 243
    const/16 p2, 0x12

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 246
    .line 247
    .line 248
    move-result p4

    .line 249
    if-eqz p4, :cond_5

    .line 250
    .line 251
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->r(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    iput-object p2, p0, Landroidx/preference/Preference;->L:Ljava/lang/Object;

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_5
    const/16 p2, 0xb

    .line 259
    .line 260
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 261
    .line 262
    .line 263
    move-result p4

    .line 264
    if-eqz p4, :cond_6

    .line 265
    .line 266
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->r(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    iput-object p2, p0, Landroidx/preference/Preference;->L:Ljava/lang/Object;

    .line 271
    .line 272
    :cond_6
    :goto_0
    const/16 p2, 0xc

    .line 273
    .line 274
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    const/16 p4, 0x1f

    .line 279
    .line 280
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 281
    .line 282
    .line 283
    move-result p2

    .line 284
    iput-boolean p2, p0, Landroidx/preference/Preference;->V:Z

    .line 285
    .line 286
    const/16 p2, 0x20

    .line 287
    .line 288
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 289
    .line 290
    .line 291
    move-result p4

    .line 292
    iput-boolean p4, p0, Landroidx/preference/Preference;->R:Z

    .line 293
    .line 294
    if-eqz p4, :cond_7

    .line 295
    .line 296
    const/16 p4, 0xe

    .line 297
    .line 298
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 299
    .line 300
    .line 301
    move-result p4

    .line 302
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 303
    .line 304
    .line 305
    move-result p2

    .line 306
    iput-boolean p2, p0, Landroidx/preference/Preference;->S:Z

    .line 307
    .line 308
    :cond_7
    const/16 p2, 0xf

    .line 309
    .line 310
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    const/16 p4, 0x18

    .line 315
    .line 316
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 317
    .line 318
    .line 319
    move-result p2

    .line 320
    iput-boolean p2, p0, Landroidx/preference/Preference;->T:Z

    .line 321
    .line 322
    const/16 p2, 0x19

    .line 323
    .line 324
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 325
    .line 326
    .line 327
    move-result p4

    .line 328
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    iput-boolean p2, p0, Landroidx/preference/Preference;->O:Z

    .line 333
    .line 334
    const/16 p2, 0x14

    .line 335
    .line 336
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 337
    .line 338
    .line 339
    move-result p3

    .line 340
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 341
    .line 342
    .line 343
    move-result p2

    .line 344
    iput-boolean p2, p0, Landroidx/preference/Preference;->U:Z

    .line 345
    .line 346
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 347
    .line 348
    .line 349
    return-void
.end method

.method public static A(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1, p1}, Landroidx/preference/Preference;->A(Landroid/view/View;Z)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public B(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->d0:Lv36;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/preference/Preference;->p:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/preference/Preference;->p:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    const-string p0, "Preference already has a SummaryProvider set."

    .line 20
    .line 21
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final C(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->O:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/preference/Preference;->O:Z

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/preference/Preference;->Y:Lf46;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lf46;->h:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object p0, p0, Lf46;->i:Lw7;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public E()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lh46;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/preference/Preference;->J:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final a(Ljava/io/Serializable;)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/preference/Preference;->e:Llr1;

    .line 6
    .line 7
    if-eqz v2, :cond_7

    .line 8
    .line 9
    instance-of v3, v1, Ljava/lang/Boolean;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    check-cast v1, Ljava/lang/Boolean;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v4

    .line 18
    :goto_0
    if-eqz v1, :cond_6

    .line 19
    .line 20
    const-string v3, "config_backup_app_cache"

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    sget-object v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v1, v4

    .line 43
    :goto_1
    invoke-virtual {v2}, Llr1;->r()Lmr1;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2}, Llr1;->r()Lmr1;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    :cond_2
    move-object/from16 v19, v4

    .line 66
    .line 67
    const v22, 0xdfff

    .line 68
    .line 69
    .line 70
    const/16 v23, 0x0

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v12, 0x0

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/4 v15, 0x0

    .line 82
    const/16 v16, 0x0

    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    const/16 v18, 0x0

    .line 87
    .line 88
    const/16 v20, 0x0

    .line 89
    .line 90
    const/16 v21, 0x0

    .line 91
    .line 92
    invoke-static/range {v5 .. v23}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    const-string v3, "config_restore_ssaids"

    .line 101
    .line 102
    invoke-static {v0, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    sget-object v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    move-object v1, v4

    .line 121
    :goto_2
    invoke-virtual {v2}, Llr1;->r()Lmr1;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v2}, Llr1;->r()Lmr1;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    :cond_5
    move-object/from16 v17, v4

    .line 144
    .line 145
    const v22, 0xf7ff

    .line 146
    .line 147
    .line 148
    const/16 v23, 0x0

    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    const/4 v7, 0x0

    .line 152
    const/4 v8, 0x0

    .line 153
    const/4 v9, 0x0

    .line 154
    const/4 v10, 0x0

    .line 155
    const/4 v11, 0x0

    .line 156
    const/4 v12, 0x0

    .line 157
    const/4 v13, 0x0

    .line 158
    const/4 v14, 0x0

    .line 159
    const/4 v15, 0x0

    .line 160
    const/16 v16, 0x0

    .line 161
    .line 162
    const/16 v18, 0x0

    .line 163
    .line 164
    const/16 v19, 0x0

    .line 165
    .line 166
    const/16 v20, 0x0

    .line 167
    .line 168
    const/16 v21, 0x0

    .line 169
    .line 170
    invoke-static/range {v5 .. v23}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_6
    const/4 v0, 0x0

    .line 179
    return v0

    .line 180
    :cond_7
    :goto_3
    const/4 v0, 0x1

    .line 181
    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/preference/Preference;->b0:Z

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->s(Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p0, p0, Landroidx/preference/Preference;->b0:Z

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p0, "Derived class did not call super.onRestoreInstanceState()"

    .line 27
    .line 28
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/preference/Preference;->b0:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->t()Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-boolean p0, p0, Landroidx/preference/Preference;->b0:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "Derived class did not call super.onSaveInstanceState()"

    .line 27
    .line 28
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Landroidx/preference/Preference;

    .line 2
    .line 3
    iget v0, p0, Landroidx/preference/Preference;->k:I

    .line 4
    .line 5
    iget v1, p1, Landroidx/preference/Preference;->k:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    if-nez p0, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_2
    if-nez v0, :cond_3

    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    return p0

    .line 27
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p1, p1, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/preference/Preference;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lh46;

    .line 9
    .line 10
    invoke-virtual {v0}, Lh46;->b()Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->d0:Lv36;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lv36;->j(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->p:Ljava/lang/CharSequence;

    .line 11
    .line 12
    return-object p0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/preference/Preference;->M:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Landroidx/preference/Preference;->N:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->Y:Lf46;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lf46;->f:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lhg6;->a:Lig6;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, p0, v1, v2}, Lig6;->d(Ljava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/preference/Preference;->Z:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/preference/Preference;

    .line 18
    .line 19
    iget-boolean v3, v2, Landroidx/preference/Preference;->M:Z

    .line 20
    .line 21
    if-ne v3, p1, :cond_1

    .line 22
    .line 23
    xor-int/lit8 v3, p1, 0x1

    .line 24
    .line 25
    iput-boolean v3, v2, Landroidx/preference/Preference;->M:Z

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/preference/Preference;->E()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->i(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/preference/Preference;->h()V

    .line 35
    .line 36
    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->K:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/preference/Preference;->b:Lh46;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, v1, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->G(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    if-eqz v2, :cond_5

    .line 26
    .line 27
    iget-object v0, v2, Landroidx/preference/Preference;->Z:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, v2, Landroidx/preference/Preference;->Z:Ljava/util/ArrayList;

    .line 37
    .line 38
    :cond_3
    iget-object v0, v2, Landroidx/preference/Preference;->Z:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroidx/preference/Preference;->E()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-boolean v1, p0, Landroidx/preference/Preference;->M:Z

    .line 48
    .line 49
    if-ne v1, v0, :cond_4

    .line 50
    .line 51
    xor-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    iput-boolean v0, p0, Landroidx/preference/Preference;->M:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/preference/Preference;->E()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->i(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_1
    return-void

    .line 66
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v2, "Dependency \""

    .line 69
    .line 70
    const-string v3, "\" not found for preference \""

    .line 71
    .line 72
    invoke-static {v2, v0, v3}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, "\" (title: \""

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p0, "\""

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v1
.end method

.method public final k(Lh46;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->b:Lh46;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/preference/Preference;->d:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-wide v0, p1, Lh46;->b:J

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    add-long/2addr v2, v0

    .line 13
    iput-wide v2, p1, Lh46;->b:J

    .line 14
    .line 15
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iput-wide v0, p0, Landroidx/preference/Preference;->c:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->F()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/preference/Preference;->b:Lh46;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lh46;->b()Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object p1, v0

    .line 39
    :goto_1
    iget-object v1, p0, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->u(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/preference/Preference;->L:Ljava/lang/Object;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->u(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    return-void
.end method

.method public l(Lk46;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lfh6;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/preference/Preference;->e0:Lju0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 10
    .line 11
    .line 12
    const v2, 0x1020010

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lk46;->r(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/TextView;

    .line 20
    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/preference/Preference;->f()Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    move-object v2, v4

    .line 55
    :goto_0
    const v5, 0x1020016

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v5}, Lk46;->r(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Landroid/widget/TextView;

    .line 63
    .line 64
    iget-boolean v6, p0, Landroidx/preference/Preference;->I:Z

    .line 65
    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    iget-object v7, p0, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 69
    .line 70
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-nez v8, :cond_3

    .line 75
    .line 76
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-boolean v7, p0, Landroidx/preference/Preference;->R:Z

    .line 83
    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    iget-boolean v7, p0, Landroidx/preference/Preference;->S:Z

    .line 87
    .line 88
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 89
    .line 90
    .line 91
    :cond_2
    if-nez v6, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_4

    .line 98
    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_1
    const v2, 0x1020006

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v2}, Lk46;->r(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroid/widget/ImageView;

    .line 120
    .line 121
    const/4 v5, 0x4

    .line 122
    if-eqz v2, :cond_a

    .line 123
    .line 124
    iget v7, p0, Landroidx/preference/Preference;->q:I

    .line 125
    .line 126
    if-nez v7, :cond_5

    .line 127
    .line 128
    iget-object v8, p0, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    if-eqz v8, :cond_7

    .line 131
    .line 132
    :cond_5
    iget-object v8, p0, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    if-nez v8, :cond_6

    .line 135
    .line 136
    iget-object v8, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {v8, v7}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    iput-object v7, p0, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    :cond_6
    iget-object v7, p0, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 145
    .line 146
    if-eqz v7, :cond_7

    .line 147
    .line 148
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    iget-object v7, p0, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    if-eqz v7, :cond_8

    .line 154
    .line 155
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    iget-boolean v7, p0, Landroidx/preference/Preference;->T:Z

    .line 160
    .line 161
    if-eqz v7, :cond_9

    .line 162
    .line 163
    move v7, v5

    .line 164
    goto :goto_2

    .line 165
    :cond_9
    move v7, v3

    .line 166
    :goto_2
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    :cond_a
    :goto_3
    const v2, 0x7f0a0268

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v2}, Lk46;->r(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-nez v2, :cond_b

    .line 177
    .line 178
    const v2, 0x102003e

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v2}, Lk46;->r(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    :cond_b
    if-eqz v2, :cond_e

    .line 186
    .line 187
    iget-object v7, p0, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 188
    .line 189
    if-eqz v7, :cond_c

    .line 190
    .line 191
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_c
    iget-boolean v1, p0, Landroidx/preference/Preference;->T:Z

    .line 196
    .line 197
    if-eqz v1, :cond_d

    .line 198
    .line 199
    move v3, v5

    .line 200
    :cond_d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    :cond_e
    :goto_4
    iget-boolean v1, p0, Landroidx/preference/Preference;->V:Z

    .line 204
    .line 205
    if-eqz v1, :cond_f

    .line 206
    .line 207
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-static {v0, v1}, Landroidx/preference/Preference;->A(Landroid/view/View;Z)V

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_f
    const/4 v1, 0x1

    .line 216
    invoke-static {v0, v1}, Landroidx/preference/Preference;->A(Landroid/view/View;Z)V

    .line 217
    .line 218
    .line 219
    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 223
    .line 224
    .line 225
    iget-boolean v1, p0, Landroidx/preference/Preference;->P:Z

    .line 226
    .line 227
    iput-boolean v1, p1, Lk46;->x:Z

    .line 228
    .line 229
    iget-boolean v1, p0, Landroidx/preference/Preference;->Q:Z

    .line 230
    .line 231
    iput-boolean v1, p1, Lk46;->y:Z

    .line 232
    .line 233
    iget-boolean p1, p0, Landroidx/preference/Preference;->U:Z

    .line 234
    .line 235
    if-eqz p1, :cond_10

    .line 236
    .line 237
    iget-object v1, p0, Landroidx/preference/Preference;->c0:Lu36;

    .line 238
    .line 239
    if-nez v1, :cond_10

    .line 240
    .line 241
    new-instance v1, Lu36;

    .line 242
    .line 243
    invoke-direct {v1, p0}, Lu36;-><init>(Landroidx/preference/Preference;)V

    .line 244
    .line 245
    .line 246
    iput-object v1, p0, Landroidx/preference/Preference;->c0:Lu36;

    .line 247
    .line 248
    :cond_10
    if-eqz p1, :cond_11

    .line 249
    .line 250
    iget-object p0, p0, Landroidx/preference/Preference;->c0:Lu36;

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_11
    move-object p0, v4

    .line 254
    :goto_6
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 258
    .line 259
    .line 260
    if-eqz p1, :cond_12

    .line 261
    .line 262
    if-nez v6, :cond_12

    .line 263
    .line 264
    sget-object p0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 265
    .line 266
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    .line 268
    .line 269
    :cond_12
    return-void
.end method

.method public o()V
    .locals 0

    .line 1
    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->K:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/preference/Preference;->b:Lh46;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v1, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->G(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v2, Landroidx/preference/Preference;->Z:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public r(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public s(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->b0:Z

    .line 3
    .line 4
    sget-object p0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 5
    .line 6
    if-eq p1, p0, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p0, "Wrong state class -- expecting Preference State"

    .line 12
    .line 13
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public t()Landroid/os/Parcelable;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->b0:Z

    .line 3
    .line 4
    sget-object p0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 5
    .line 6
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x20

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->f()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-lez p0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    add-int/lit8 p0, p0, -0x1

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public u(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public w(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_6

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/preference/Preference;->I:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/preference/Preference;->f:Lt36;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1, p0}, Lt36;->d(Landroidx/preference/Preference;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Landroidx/preference/Preference;->b:Lh46;

    .line 29
    .line 30
    if-eqz p1, :cond_5

    .line 31
    .line 32
    iget-object p1, p1, Lh46;->h:Lc46;

    .line 33
    .line 34
    if-eqz p1, :cond_5

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/preference/Preference;->y:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    move-object v1, p1

    .line 41
    :goto_0
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/fragment/app/o;->getParentFragment()Landroidx/fragment/app/o;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string v1, "PreferenceFragment"

    .line 49
    .line 50
    const-string v2, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    .line 51
    .line 52
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, p0, Landroidx/preference/Preference;->G:Landroid/os/Bundle;

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    new-instance v2, Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Landroidx/preference/Preference;->G:Landroid/os/Bundle;

    .line 69
    .line 70
    :cond_3
    iget-object p0, p0, Landroidx/preference/Preference;->G:Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/fragment/app/z;->H()Lor3;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lor3;->a(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Landroidx/fragment/app/o;->setArguments(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroidx/fragment/app/o;->setTargetFragment(Landroidx/fragment/app/o;)V

    .line 91
    .line 92
    .line 93
    new-instance p0, Landroidx/fragment/app/a;

    .line 94
    .line 95
    invoke-direct {p0, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/fragment/app/o;->requireView()Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/a;->j(ILandroidx/fragment/app/o;)V

    .line 113
    .line 114
    .line 115
    iget-boolean p1, p0, Landroidx/fragment/app/a;->h:Z

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Landroidx/fragment/app/a;->g:Z

    .line 121
    .line 122
    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Landroidx/fragment/app/a;->i:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/a;->e()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_4
    const-string p0, "This FragmentTransaction is not allowed to be added to the back stack."

    .line 130
    .line 131
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_5
    iget-object p1, p0, Landroidx/preference/Preference;->x:Landroid/content/Intent;

    .line 136
    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    iget-object p0, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_1
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lh46;

    .line 21
    .line 22
    invoke-virtual {v0}, Lh46;->a()Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Landroidx/preference/Preference;->b:Lh46;

    .line 32
    .line 33
    iget-boolean p0, p0, Lh46;->e:Z

    .line 34
    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/preference/Preference;->H:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/preference/Preference;->E()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->i(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
