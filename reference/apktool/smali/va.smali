.class public Lva;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILf1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lll2;->a(Lf1;)Lhl2;

    move-result-object p2

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    iput p1, p0, Lva;->a:I

    return-void

    :cond_0
    const-string p0, "digest == null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-static {p1, v0}, Lwa;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lva;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lra;

    .line 5
    .line 6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 7
    .line 8
    invoke-static {p1, p2}, Lwa;->h(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lra;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lva;->b:Ljava/lang/Object;

    .line 19
    .line 20
    iput p2, p0, Lva;->a:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a([B[B)[B
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lva;->a:I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    array-length v0, p2

    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0, p1, p2}, Lva;->b(I[B[B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "wrong address length"

    .line 19
    .line 20
    :goto_0
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_1
    const-string p0, "wrong key length"

    .line 25
    .line 26
    goto :goto_0
.end method

.method public b(I[B[B)[B
    .locals 3

    .line 1
    int-to-long v0, p1

    .line 2
    iget p1, p0, Lva;->a:I

    .line 3
    .line 4
    invoke-static {p1, v0, v1}, Ljd4;->J(IJ)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lva;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lhl2;

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p0, v0, v2, v1}, Lhl2;->update([BII)V

    .line 15
    .line 16
    .line 17
    array-length v0, p2

    .line 18
    invoke-interface {p0, p2, v2, v0}, Lhl2;->update([BII)V

    .line 19
    .line 20
    .line 21
    array-length p2, p3

    .line 22
    invoke-interface {p0, p3, v2, p2}, Lhl2;->update([BII)V

    .line 23
    .line 24
    .line 25
    new-array p2, p1, [B

    .line 26
    .line 27
    instance-of p3, p0, Llr6;

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    check-cast p0, Llr6;

    .line 32
    .line 33
    invoke-virtual {p0, p2, v2, p1}, Llr6;->l([BII)V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :cond_0
    invoke-interface {p0, p2, v2}, Lhl2;->doFinal([BI)I

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

.method public c()Lwa;
    .locals 11

    .line 1
    new-instance v0, Lwa;

    .line 2
    .line 3
    iget-object v1, p0, Lva;->b:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v3, v1

    .line 6
    check-cast v3, Lra;

    .line 7
    .line 8
    iget-object v1, v3, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 9
    .line 10
    iget-object v4, v3, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 11
    .line 12
    iget p0, p0, Lva;->a:I

    .line 13
    .line 14
    invoke-direct {v0, v1, p0}, Lwa;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, v3, Lra;->e:Landroid/view/View;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iget-object v8, v0, Lwa;->k:Lua;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iput-object p0, v8, Lua;->w:Landroid/view/View;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, v3, Lra;->d:Ljava/lang/CharSequence;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    iput-object p0, v8, Lua;->d:Ljava/lang/CharSequence;

    .line 32
    .line 33
    iget-object v2, v8, Lua;->u:Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p0, v3, Lra;->c:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    iput-object p0, v8, Lua;->s:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    iget-object v2, v8, Lua;->t:Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v8, Lua;->t:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    iget-object p0, v3, Lra;->f:Ljava/lang/CharSequence;

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    iput-object p0, v8, Lua;->e:Ljava/lang/CharSequence;

    .line 63
    .line 64
    iget-object v2, v8, Lua;->v:Landroid/widget/TextView;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object p0, v3, Lra;->g:Ljava/lang/CharSequence;

    .line 72
    .line 73
    if-nez p0, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/4 v2, -0x1

    .line 77
    iget-object v5, v3, Lra;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    .line 79
    invoke-virtual {v8, v2, p0, v5}, Lua;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object p0, v3, Lra;->i:Ljava/lang/CharSequence;

    .line 83
    .line 84
    if-nez p0, :cond_5

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    const/4 v2, -0x2

    .line 88
    iget-object v5, v3, Lra;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 89
    .line 90
    invoke-virtual {v8, v2, p0, v5}, Lua;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    iget-object p0, v3, Lra;->k:Ljava/lang/CharSequence;

    .line 94
    .line 95
    if-nez p0, :cond_6

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    const/4 v2, -0x3

    .line 99
    iget-object v5, v3, Lra;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    .line 101
    invoke-virtual {v8, v2, p0, v5}, Lua;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    :goto_3
    iget-object p0, v3, Lra;->p:[Ljava/lang/CharSequence;

    .line 105
    .line 106
    const/4 v9, 0x1

    .line 107
    const/4 v10, 0x0

    .line 108
    if-nez p0, :cond_7

    .line 109
    .line 110
    iget-object p0, v3, Lra;->q:Landroid/widget/ListAdapter;

    .line 111
    .line 112
    if-eqz p0, :cond_f

    .line 113
    .line 114
    :cond_7
    iget-object p0, v3, Lra;->b:Landroid/view/LayoutInflater;

    .line 115
    .line 116
    iget v2, v8, Lua;->A:I

    .line 117
    .line 118
    invoke-virtual {p0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    move-object v7, p0

    .line 123
    check-cast v7, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 124
    .line 125
    iget-boolean p0, v3, Lra;->u:Z

    .line 126
    .line 127
    if-eqz p0, :cond_8

    .line 128
    .line 129
    new-instance v2, Loa;

    .line 130
    .line 131
    iget v5, v8, Lua;->B:I

    .line 132
    .line 133
    iget-object v6, v3, Lra;->p:[Ljava/lang/CharSequence;

    .line 134
    .line 135
    invoke-direct/range {v2 .. v7}, Loa;-><init>(Lra;Landroid/view/ContextThemeWrapper;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_8
    iget-boolean p0, v3, Lra;->v:Z

    .line 140
    .line 141
    if-eqz p0, :cond_9

    .line 142
    .line 143
    iget p0, v8, Lua;->C:I

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_9
    iget p0, v8, Lua;->D:I

    .line 147
    .line 148
    :goto_4
    iget-object v2, v3, Lra;->q:Landroid/widget/ListAdapter;

    .line 149
    .line 150
    if-eqz v2, :cond_a

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_a
    new-instance v2, Lta;

    .line 154
    .line 155
    const v5, 0x1020014

    .line 156
    .line 157
    .line 158
    iget-object v6, v3, Lra;->p:[Ljava/lang/CharSequence;

    .line 159
    .line 160
    invoke-direct {v2, v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :goto_5
    iput-object v2, v8, Lua;->x:Landroid/widget/ListAdapter;

    .line 164
    .line 165
    iget p0, v3, Lra;->w:I

    .line 166
    .line 167
    iput p0, v8, Lua;->y:I

    .line 168
    .line 169
    iget-object p0, v3, Lra;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 170
    .line 171
    if-eqz p0, :cond_b

    .line 172
    .line 173
    new-instance p0, Lpa;

    .line 174
    .line 175
    invoke-direct {p0, v3, v8}, Lpa;-><init>(Lra;Lua;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_b
    iget-object p0, v3, Lra;->x:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 183
    .line 184
    if-eqz p0, :cond_c

    .line 185
    .line 186
    new-instance p0, Lqa;

    .line 187
    .line 188
    invoke-direct {p0, v3, v7, v8}, Lqa;-><init>(Lra;Landroidx/appcompat/app/AlertController$RecycleListView;Lua;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    .line 193
    .line 194
    :cond_c
    :goto_6
    iget-boolean p0, v3, Lra;->v:Z

    .line 195
    .line 196
    if-eqz p0, :cond_d

    .line 197
    .line 198
    invoke-virtual {v7, v9}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_d
    iget-boolean p0, v3, Lra;->u:Z

    .line 203
    .line 204
    if-eqz p0, :cond_e

    .line 205
    .line 206
    const/4 p0, 0x2

    .line 207
    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 208
    .line 209
    .line 210
    :cond_e
    :goto_7
    iput-object v7, v8, Lua;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 211
    .line 212
    :cond_f
    iget-object p0, v3, Lra;->s:Landroid/view/View;

    .line 213
    .line 214
    if-eqz p0, :cond_10

    .line 215
    .line 216
    iput-object p0, v8, Lua;->g:Landroid/view/View;

    .line 217
    .line 218
    iput-boolean v1, v8, Lua;->h:Z

    .line 219
    .line 220
    :cond_10
    iget-boolean p0, v3, Lra;->m:Z

    .line 221
    .line 222
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 223
    .line 224
    .line 225
    iget-boolean p0, v3, Lra;->m:Z

    .line 226
    .line 227
    if-eqz p0, :cond_11

    .line 228
    .line 229
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 230
    .line 231
    .line 232
    :cond_11
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 233
    .line 234
    .line 235
    iget-object p0, v3, Lra;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 236
    .line 237
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 238
    .line 239
    .line 240
    iget-object p0, v3, Lra;->o:Lgc5;

    .line 241
    .line 242
    if-eqz p0, :cond_12

    .line 243
    .line 244
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 245
    .line 246
    .line 247
    :cond_12
    return-object v0
.end method

.method public d(I)Lva;
    .locals 2

    .line 1
    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lra;

    .line 4
    .line 5
    iget-object v1, v0, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 12
    .line 13
    return-object p0
.end method

.method public e([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lva;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lra;

    .line 4
    .line 5
    iput-object p1, p0, Lra;->p:[Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p3, p0, Lra;->x:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 8
    .line 9
    iput-object p2, p0, Lra;->t:[Z

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lra;->u:Z

    .line 13
    .line 14
    return-void
.end method

.method public f(ILandroid/content/DialogInterface$OnClickListener;)Lva;
    .locals 2

    .line 1
    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lra;

    .line 4
    .line 5
    iget-object v1, v0, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, v0, Lra;->i:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iput-object p2, v0, Lra;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 14
    .line 15
    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lva;
    .locals 1

    .line 1
    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lra;

    .line 4
    .line 5
    iput-object p1, v0, Lra;->i:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, v0, Lra;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    .line 9
    return-object p0
.end method

.method public i(ILandroid/content/DialogInterface$OnClickListener;)Lva;
    .locals 2

    .line 1
    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lra;

    .line 4
    .line 5
    iget-object v1, v0, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, v0, Lra;->g:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iput-object p2, v0, Lra;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 14
    .line 15
    return-object p0
.end method

.method public j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lva;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lra;

    .line 4
    .line 5
    iput-object p1, p0, Lra;->g:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lra;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    .line 9
    return-void
.end method

.method public k([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lva;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lra;

    .line 4
    .line 5
    iput-object p1, p0, Lra;->p:[Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p3, p0, Lra;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    .line 9
    iput p2, p0, Lra;->w:I

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lra;->v:Z

    .line 13
    .line 14
    return-void
.end method

.method public l(I)Lva;
    .locals 2

    .line 1
    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lra;

    .line 4
    .line 5
    iget-object v1, v0, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, v0, Lra;->d:Ljava/lang/CharSequence;

    .line 12
    .line 13
    return-object p0
.end method

.method public m()Lwa;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lva;->c()Lwa;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
