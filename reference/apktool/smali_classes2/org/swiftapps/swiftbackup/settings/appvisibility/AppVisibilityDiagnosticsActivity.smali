.class public final Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic O:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public N:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lls;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lls;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ll90;

    .line 11
    .line 12
    const-class v3, Lq00;

    .line 13
    .line 14
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lms;

    .line 19
    .line 20
    invoke-direct {v4, p0, v1}, Lms;-><init>(Lil0;I)V

    .line 21
    .line 22
    .line 23
    new-instance v5, Lns;

    .line 24
    .line 25
    invoke-direct {v5, p0, v1}, Lns;-><init>(Lil0;I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3, v4, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->K:Ll90;

    .line 32
    .line 33
    new-instance v0, Lkf;

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    invoke-direct {v0, p0, v2}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lgv7;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->L:Lgv7;

    .line 45
    .line 46
    new-instance v0, Lov;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Lov;-><init>(I)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lgv7;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->M:Lgv7;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O()Lq00;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lm00;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->L:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lm00;

    .line 8
    .line 9
    return-object p0
.end method

.method public final O()Lq00;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq00;

    .line 8
    .line 9
    return-object p0
.end method

.method public final P(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lm00;->d:Lcom/google/android/material/button/MaterialButton;

    .line 6
    .line 7
    xor-int/lit8 p2, p2, 0x1

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object p2, p2, Lm00;->c:Lcom/google/android/material/button/MaterialButton;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object p2, p2, Lm00;->e:Lcom/google/android/material/button/MaterialButton;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget-object p0, p0, Lm00;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lm00;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lm00;->b:Lw00;

    .line 18
    .line 19
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lix0;

    .line 22
    .line 23
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lnc8;->Z(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lnc8;->a0()V

    .line 41
    .line 42
    .line 43
    const v2, 0x7f130066

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lnc8;->e0(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lm00;->p:Landroidx/core/widget/NestedScrollView;

    .line 54
    .line 55
    const/4 v2, 0x7

    .line 56
    invoke-static {v0, v2}, Lsz8;->b(Landroid/view/View;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v0, v0, Lm00;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    new-instance v2, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 66
    .line 67
    invoke-direct {v2, p0}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->M:Lgv7;

    .line 74
    .line 75
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lt00;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 82
    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lng6;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    instance-of v3, v0, Lcf2;

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    check-cast v0, Lcf2;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    move-object v0, v4

    .line 101
    :goto_0
    if-eqz v0, :cond_2

    .line 102
    .line 103
    iput-boolean v2, v0, Lcf2;->g:Z

    .line 104
    .line 105
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v0, v0, Lm00;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 110
    .line 111
    new-instance v3, Ll00;

    .line 112
    .line 113
    invoke-direct {v3, p0, v2}, Ll00;-><init>(Lil0;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v0, v0, Lm00;->d:Lcom/google/android/material/button/MaterialButton;

    .line 124
    .line 125
    new-instance v3, Lh00;

    .line 126
    .line 127
    invoke-direct {v3, p0, v2}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v0, v0, Lm00;->c:Lcom/google/android/material/button/MaterialButton;

    .line 138
    .line 139
    new-instance v3, Li00;

    .line 140
    .line 141
    invoke-direct {v3, p0, v2}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v0, v0, Lm00;->e:Lcom/google/android/material/button/MaterialButton;

    .line 152
    .line 153
    new-instance v2, Les;

    .line 154
    .line 155
    invoke-direct {v2, p0, v1}, Les;-><init>(Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    if-eqz p1, :cond_3

    .line 162
    .line 163
    const-string v0, "app_visibility_scroll_y"

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    goto :goto_1

    .line 174
    :cond_3
    move-object v0, v4

    .line 175
    :goto_1
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N:Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O()Lq00;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object v0, v0, Lq00;->e:Lex6;

    .line 182
    .line 183
    new-instance v5, Lk00;

    .line 184
    .line 185
    const/4 v11, 0x0

    .line 186
    const/4 v12, 0x0

    .line 187
    const/4 v6, 0x1

    .line 188
    const-class v8, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;

    .line 189
    .line 190
    const-string v9, "renderState"

    .line 191
    .line 192
    const-string v10, "renderState(Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsVM$State;)V"

    .line 193
    .line 194
    move-object v7, p0

    .line 195
    invoke-direct/range {v5 .. v12}, Lk00;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 196
    .line 197
    .line 198
    new-instance p0, Lne5;

    .line 199
    .line 200
    const/4 v2, 0x3

    .line 201
    invoke-direct {p0, v2, v5}, Lne5;-><init>(ILmt3;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v7, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O()Lq00;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    if-eqz p1, :cond_4

    .line 212
    .line 213
    const-string v0, "app_visibility_search_query"

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    :cond_4
    iget-boolean p1, p0, Lq00;->g:Z

    .line 220
    .line 221
    if-eqz p1, :cond_5

    .line 222
    .line 223
    iget-object p1, p0, Lq00;->e:Lex6;

    .line 224
    .line 225
    iget-object p0, p0, Lq00;->f:Ln00;

    .line 226
    .line 227
    invoke-virtual {p1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_5
    iput-boolean v1, p0, Lq00;->g:Z

    .line 232
    .line 233
    iget-object v0, p0, Lq00;->f:Ln00;

    .line 234
    .line 235
    if-nez v4, :cond_6

    .line 236
    .line 237
    const-string v4, ""

    .line 238
    .line 239
    :cond_6
    move-object v2, v4

    .line 240
    const/4 v4, 0x0

    .line 241
    const/16 v5, 0xd

    .line 242
    .line 243
    const/4 v1, 0x0

    .line 244
    const/4 v3, 0x0

    .line 245
    invoke-static/range {v0 .. v5}, Ln00;->a(Ln00;Lv00;Ljava/lang/String;ZLjava/lang/String;I)Ln00;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    iput-object p1, p0, Lq00;->f:Ln00;

    .line 250
    .line 251
    invoke-virtual {p0}, Lq00;->j()V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lm00;->p:Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "app_visibility_scroll_y"

    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O()Lq00;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lq00;->f:Ln00;

    .line 24
    .line 25
    iget-object v0, v0, Ln00;->b:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "app_visibility_search_query"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-super {p0, p1}, Lil0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
