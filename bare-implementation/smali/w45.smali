.class public final Lw45;
.super Lwa;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Leu4;


# instance fields
.field public final G:Ljava/text/NumberFormat;

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:Ljava/lang/CharSequence;

.field public M:Z

.field public N:Lv45;

.field public final n:Lio1;

.field public p:Landroid/widget/ProgressBar;

.field public q:Landroid/widget/TextView;

.field public r:I

.field public t:Landroid/widget/TextView;

.field public x:Ljava/lang/String;

.field public y:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lio1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lwa;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lw45;->n:Lio1;

    .line 9
    .line 10
    const-string p1, "%1d/%2d"

    .line 11
    .line 12
    iput-object p1, p0, Lw45;->x:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lw45;->G:Ljava/text/NumberFormat;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw45;->p:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lw45;->r:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-super {p0, p1}, Lwa;->i(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lw45;->q:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object p1, p0, Lw45;->L:Ljava/lang/CharSequence;

    .line 27
    .line 28
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget v0, p0, Lw45;->r:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lw45;->N:Lv45;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lw45;->N:Lv45;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lw45;->M:Z

    .line 2
    .line 3
    iget-object p0, p0, Lw45;->p:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iput p1, p0, Lw45;->H:I

    .line 2
    .line 3
    iget-object v0, p0, Lw45;->p:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lw45;->j()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    iput p1, p0, Lw45;->I:I

    .line 2
    .line 3
    iget-object v0, p0, Lw45;->p:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lw45;->j()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw45;->x:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lw45;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lw45;->n:Lio1;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lw45;->r:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    iget-object v4, p0, Lwa;->k:Lua;

    .line 12
    .line 13
    const-string v5, "Missing required view with ID: "

    .line 14
    .line 15
    const v6, 0x7f0a03a4

    .line 16
    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    new-instance v1, Lv45;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lv45;-><init>(Lw45;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lw45;->N:Lv45;

    .line 27
    .line 28
    const v1, 0x7f0d001e

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/ProgressBar;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const v6, 0x7f0a03ab

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    const v6, 0x7f0a03ac

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    check-cast v7, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v7, :cond_0

    .line 64
    .line 65
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 66
    .line 67
    iput-object v1, p0, Lw45;->p:Landroid/widget/ProgressBar;

    .line 68
    .line 69
    iput-object v2, p0, Lw45;->t:Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v7, p0, Lw45;->y:Landroid/widget/TextView;

    .line 72
    .line 73
    iput-object v0, v4, Lua;->g:Landroid/view/View;

    .line 74
    .line 75
    iput-boolean v3, v4, Lua;->h:Z

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    const v1, 0x7f0d0153

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const v1, 0x7f0a00cd

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Landroid/widget/LinearLayout;

    .line 109
    .line 110
    if-eqz v2, :cond_9

    .line 111
    .line 112
    const v1, 0x7f0a0323

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroid/widget/TextView;

    .line 120
    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    invoke-static {v0, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Landroid/widget/ProgressBar;

    .line 128
    .line 129
    if-eqz v1, :cond_a

    .line 130
    .line 131
    check-cast v0, Landroid/widget/FrameLayout;

    .line 132
    .line 133
    iput-object v1, p0, Lw45;->p:Landroid/widget/ProgressBar;

    .line 134
    .line 135
    iput-object v2, p0, Lw45;->q:Landroid/widget/TextView;

    .line 136
    .line 137
    iput-object v0, v4, Lua;->g:Landroid/view/View;

    .line 138
    .line 139
    iput-boolean v3, v4, Lua;->h:Z

    .line 140
    .line 141
    :goto_0
    iget v0, p0, Lw45;->H:I

    .line 142
    .line 143
    if-lez v0, :cond_2

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lw45;->l(I)V

    .line 146
    .line 147
    .line 148
    :cond_2
    iget v0, p0, Lw45;->I:I

    .line 149
    .line 150
    if-lez v0, :cond_3

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lw45;->m(I)V

    .line 153
    .line 154
    .line 155
    :cond_3
    iget v0, p0, Lw45;->J:I

    .line 156
    .line 157
    if-lez v0, :cond_5

    .line 158
    .line 159
    iget-object v1, p0, Lw45;->p:Landroid/widget/ProgressBar;

    .line 160
    .line 161
    if-eqz v1, :cond_4

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lw45;->j()V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    add-int/2addr v0, v0

    .line 171
    iput v0, p0, Lw45;->J:I

    .line 172
    .line 173
    :cond_5
    :goto_1
    iget v0, p0, Lw45;->K:I

    .line 174
    .line 175
    if-lez v0, :cond_7

    .line 176
    .line 177
    iget-object v1, p0, Lw45;->p:Landroid/widget/ProgressBar;

    .line 178
    .line 179
    if-eqz v1, :cond_6

    .line 180
    .line 181
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lw45;->j()V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_6
    add-int/2addr v0, v0

    .line 189
    iput v0, p0, Lw45;->K:I

    .line 190
    .line 191
    :cond_7
    :goto_2
    iget-object v0, p0, Lw45;->L:Ljava/lang/CharSequence;

    .line 192
    .line 193
    if-eqz v0, :cond_8

    .line 194
    .line 195
    invoke-virtual {p0, v0}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    :cond_8
    iget-boolean v0, p0, Lw45;->M:Z

    .line 199
    .line 200
    invoke-virtual {p0, v0}, Lw45;->k(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lw45;->j()V

    .line 204
    .line 205
    .line 206
    invoke-super {p0, p1}, Lwa;->onCreate(Landroid/os/Bundle;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_9
    move v6, v1

    .line 211
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public final onLifecycleDestroy()V
    .locals 0
    .annotation runtime Lct5;
        value = .enum Lrt4;->ON_DESTROY:Lrt4;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lho;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw45;->n:Lio1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lho1;->getLifecycle()Lhu4;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Lhu4;->a(Leu4;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 11
    .line 12
    .line 13
    const v1, 0x7f090003

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f090002

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v2, 0x7f0a009a

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lho;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    const v2, 0x102000b

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lho;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v2, p0, Lw45;->q:Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v2, p0, Lw45;->t:Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v2, p0, Lw45;->y:Landroid/widget/TextView;

    .line 70
    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    const/4 v1, -0x1

    .line 77
    invoke-virtual {p0, v1}, Lwa;->f(I)Landroid/widget/Button;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    const/4 v1, -0x2

    .line 87
    invoke-virtual {p0, v1}, Lwa;->f(I)Landroid/widget/Button;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    .line 95
    .line 96
    :cond_6
    const/4 v1, -0x3

    .line 97
    invoke-virtual {p0, v1}, Lwa;->f(I)Landroid/widget/Button;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-eqz p0, :cond_7

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    return-void
.end method
