.class public Lf46;
.super Lhg6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Landroidx/preference/PreferenceGroup;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/os/Handler;

.field public final i:Lw7;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lhg6;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw7;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, v1}, Lw7;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lf46;->i:Lw7;

    .line 11
    .line 12
    iput-object p1, p0, Lf46;->d:Landroidx/preference/PreferenceGroup;

    .line 13
    .line 14
    new-instance v0, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lf46;->h:Landroid/os/Handler;

    .line 24
    .line 25
    iput-object p0, p1, Landroidx/preference/Preference;->Y:Lf46;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lf46;->e:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lf46;->f:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lf46;->g:Ljava/util/ArrayList;

    .line 47
    .line 48
    iget-boolean p1, p1, Landroidx/preference/PreferenceScreen;->l0:Z

    .line 49
    .line 50
    iget-object v0, p0, Lhg6;->a:Lig6;

    .line 51
    .line 52
    invoke-virtual {v0}, Lig6;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    iput-boolean p1, p0, Lhg6;->b:Z

    .line 59
    .line 60
    invoke-virtual {p0}, Lf46;->o()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    const-string p0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    .line 65
    .line 66
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    throw p0
.end method


# virtual methods
.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lf46;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c(I)J
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhg6;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 p0, -0x1

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lf46;->m(I)Landroidx/preference/Preference;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->d()J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public final d(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lf46;->m(I)Landroidx/preference/Preference;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Le46;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Le46;-><init>(Landroidx/preference/Preference;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lf46;->g:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return p1
.end method

.method public bridge synthetic h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Lk46;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lf46;->n(Lk46;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Lfh6;
    .locals 4

    .line 1
    iget-object p0, p0, Lf46;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Le46;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    sget-object v2, Lde6;->a:[I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const v3, 0x1080062

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Le46;->a:I

    .line 50
    .line 51
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    const v0, 0x1020018

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget p0, p0, Le46;->b:I

    .line 78
    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const/16 p0, 0x8

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_0
    new-instance p0, Lk46;

    .line 91
    .line 92
    invoke-direct {p0, p1}, Lk46;-><init>(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    return-object p0
.end method

.method public final k(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Landroidx/preference/PreferenceGroup;->g0:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    move v5, v4

    .line 20
    :goto_0
    const/4 v6, 0x0

    .line 21
    const v7, 0x7fffffff

    .line 22
    .line 23
    .line 24
    if-ge v4, v2, :cond_a

    .line 25
    .line 26
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->H(I)Landroidx/preference/Preference;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    iget-boolean v9, v8, Landroidx/preference/Preference;->O:Z

    .line 31
    .line 32
    if-nez v9, :cond_0

    .line 33
    .line 34
    goto :goto_7

    .line 35
    :cond_0
    iget v9, p1, Landroidx/preference/PreferenceGroup;->k0:I

    .line 36
    .line 37
    if-eq v9, v7, :cond_2

    .line 38
    .line 39
    if-ge v5, v9, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :goto_2
    instance-of v9, v8, Landroidx/preference/PreferenceGroup;

    .line 50
    .line 51
    if-nez v9, :cond_3

    .line 52
    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_7

    .line 56
    :cond_3
    check-cast v8, Landroidx/preference/PreferenceGroup;

    .line 57
    .line 58
    instance-of v9, v8, Landroidx/preference/PreferenceScreen;

    .line 59
    .line 60
    if-eqz v9, :cond_4

    .line 61
    .line 62
    goto :goto_7

    .line 63
    :cond_4
    iget v9, p1, Landroidx/preference/PreferenceGroup;->k0:I

    .line 64
    .line 65
    if-eq v9, v7, :cond_6

    .line 66
    .line 67
    iget v9, v8, Landroidx/preference/PreferenceGroup;->k0:I

    .line 68
    .line 69
    if-ne v9, v7, :cond_5

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_5
    const-string p0, "Nesting an expandable group inside of another expandable group is not supported!"

    .line 73
    .line 74
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v6

    .line 78
    :cond_6
    :goto_3
    invoke-virtual {p0, v8}, Lf46;->k(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_9

    .line 91
    .line 92
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    check-cast v8, Landroidx/preference/Preference;

    .line 97
    .line 98
    iget v9, p1, Landroidx/preference/PreferenceGroup;->k0:I

    .line 99
    .line 100
    if-eq v9, v7, :cond_8

    .line 101
    .line 102
    if-ge v5, v9, :cond_7

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_7
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_8
    :goto_5
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_a
    iget v2, p1, Landroidx/preference/PreferenceGroup;->k0:I

    .line 119
    .line 120
    if-eq v2, v7, :cond_13

    .line 121
    .line 122
    if-le v5, v2, :cond_13

    .line 123
    .line 124
    new-instance v2, Lh03;

    .line 125
    .line 126
    iget-object v4, p1, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 127
    .line 128
    iget-wide v7, p1, Landroidx/preference/Preference;->c:J

    .line 129
    .line 130
    invoke-direct {v2, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    const v4, 0x7f0d009b

    .line 134
    .line 135
    .line 136
    iput v4, v2, Landroidx/preference/Preference;->W:I

    .line 137
    .line 138
    iget-object v4, v2, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 139
    .line 140
    const v5, 0x7f0800c6

    .line 141
    .line 142
    .line 143
    invoke-static {v4, v5}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    iget-object v10, v2, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 148
    .line 149
    if-eq v10, v9, :cond_b

    .line 150
    .line 151
    iput-object v9, v2, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    iput v3, v2, Landroidx/preference/Preference;->q:I

    .line 154
    .line 155
    invoke-virtual {v2}, Landroidx/preference/Preference;->h()V

    .line 156
    .line 157
    .line 158
    :cond_b
    iput v5, v2, Landroidx/preference/Preference;->q:I

    .line 159
    .line 160
    const v3, 0x7f130229

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget-object v5, v2, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 168
    .line 169
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-nez v5, :cond_c

    .line 174
    .line 175
    iput-object v3, v2, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 176
    .line 177
    invoke-virtual {v2}, Landroidx/preference/Preference;->h()V

    .line 178
    .line 179
    .line 180
    :cond_c
    iget v3, v2, Landroidx/preference/Preference;->k:I

    .line 181
    .line 182
    const/16 v5, 0x3e7

    .line 183
    .line 184
    if-eq v5, v3, :cond_d

    .line 185
    .line 186
    iput v5, v2, Landroidx/preference/Preference;->k:I

    .line 187
    .line 188
    iget-object v3, v2, Landroidx/preference/Preference;->Y:Lf46;

    .line 189
    .line 190
    if-eqz v3, :cond_d

    .line 191
    .line 192
    iget-object v5, v3, Lf46;->h:Landroid/os/Handler;

    .line 193
    .line 194
    iget-object v3, v3, Lf46;->i:Lw7;

    .line 195
    .line 196
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    .line 201
    .line 202
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    :cond_e
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_12

    .line 216
    .line 217
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Landroidx/preference/Preference;

    .line 222
    .line 223
    iget-object v9, v5, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 224
    .line 225
    instance-of v10, v5, Landroidx/preference/PreferenceGroup;

    .line 226
    .line 227
    if-eqz v10, :cond_f

    .line 228
    .line 229
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    if-nez v11, :cond_f

    .line 234
    .line 235
    move-object v11, v5

    .line 236
    check-cast v11, Landroidx/preference/PreferenceGroup;

    .line 237
    .line 238
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :cond_f
    iget-object v11, v5, Landroidx/preference/Preference;->a0:Landroidx/preference/PreferenceGroup;

    .line 242
    .line 243
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    if-eqz v11, :cond_10

    .line 248
    .line 249
    if-eqz v10, :cond_e

    .line 250
    .line 251
    check-cast v5, Landroidx/preference/PreferenceGroup;

    .line 252
    .line 253
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_10
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-nez v5, :cond_e

    .line 262
    .line 263
    if-nez v6, :cond_11

    .line 264
    .line 265
    move-object v6, v9

    .line 266
    goto :goto_8

    .line 267
    :cond_11
    const v5, 0x7f13054c

    .line 268
    .line 269
    .line 270
    filled-new-array {v6, v9}, [Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    move-object v6, v5

    .line 279
    goto :goto_8

    .line 280
    :cond_12
    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    const-wide/32 v3, 0xf4240

    .line 284
    .line 285
    .line 286
    add-long/2addr v7, v3

    .line 287
    iput-wide v7, v2, Lh03;->f0:J

    .line 288
    .line 289
    new-instance v1, Lix0;

    .line 290
    .line 291
    invoke-direct {v1, p0, p1}, Lix0;-><init>(Lf46;Landroidx/preference/PreferenceGroup;)V

    .line 292
    .line 293
    .line 294
    iput-object v1, v2, Landroidx/preference/Preference;->f:Lt36;

    .line 295
    .line 296
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    :cond_13
    return-object v0
.end method

.method public final l(Ljava/util/ArrayList;Landroidx/preference/PreferenceGroup;)V
    .locals 5

    .line 1
    monitor-enter p2

    .line 2
    :try_start_0
    iget-object v0, p2, Landroidx/preference/PreferenceGroup;->g0:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p2, Landroidx/preference/PreferenceGroup;->g0:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->H(I)Landroidx/preference/Preference;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    new-instance v3, Le46;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Le46;-><init>(Landroidx/preference/Preference;)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lf46;->g:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    iget-object v4, p0, Lf46;->g:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    move-object v3, v2

    .line 47
    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 48
    .line 49
    instance-of v4, v3, Landroidx/preference/PreferenceScreen;

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, p1, v3}, Lf46;->l(Ljava/util/ArrayList;Landroidx/preference/PreferenceGroup;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iput-object p0, v2, Landroidx/preference/Preference;->Y:Lf46;

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0
.end method

.method public final m(I)Landroidx/preference/Preference;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lf46;->f:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lf46;->f:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroidx/preference/Preference;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public n(Lk46;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lf46;->m(I)Landroidx/preference/Preference;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p2, p1, Lk46;->v:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    iget-object v0, p1, Lfh6;->a:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p1, Lk46;->u:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    sget-object v1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const v0, 0x1020016

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lk46;->r(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->l(Lk46;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf46;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/preference/Preference;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-object v2, v1, Landroidx/preference/Preference;->Y:Lf46;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lf46;->e:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lf46;->e:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v0, p0, Lf46;->d:Landroidx/preference/PreferenceGroup;

    .line 37
    .line 38
    invoke-virtual {p0, v1, v0}, Lf46;->l(Ljava/util/ArrayList;Landroidx/preference/PreferenceGroup;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lf46;->k(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lf46;->f:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p0}, Lhg6;->e()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lf46;->e:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroidx/preference/Preference;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    return-void
.end method
