.class public final Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic V:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public R:Z

.field public final S:Lgv7;

.field public T:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

.field public final U:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lms;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, p0, v1}, Lms;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ll90;

    .line 11
    .line 12
    const-class v3, Lqq1;

    .line 13
    .line 14
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lns;

    .line 19
    .line 20
    invoke-direct {v4, p0, v1}, Lns;-><init>(Lil0;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lz20;

    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    invoke-direct {v1, p0, v5}, Lz20;-><init>(Lil0;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3, v4, v0, v1}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->P:Ll90;

    .line 33
    .line 34
    new-instance v0, Lek;

    .line 35
    .line 36
    const/16 v1, 0x11

    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lgv7;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->Q:Lgv7;

    .line 47
    .line 48
    new-instance v0, Lgq1;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-direct {v0, p0, v1}, Lgq1;-><init>(Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;I)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lgv7;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->S:Lgv7;

    .line 60
    .line 61
    sget-object v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;->Hide:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 62
    .line 63
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->T:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 64
    .line 65
    new-instance v0, Lbh;

    .line 66
    .line 67
    const/16 v1, 0xc

    .line 68
    .line 69
    invoke-direct {v0, p0, v1}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lgv7;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U:Lgv7;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final U()Lkq1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->Q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkq1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final V()Lqq1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqq1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_2

    .line 7
    .line 8
    if-eqz p3, :cond_2

    .line 9
    .line 10
    const-string v0, "extra_config_settings"

    .line 11
    .line 12
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v1, "extra_config_settings_delete"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->minusSettings(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0, v2}, Lqq1;->l(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3, v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->plusSettings(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0, v2}, Lqq1;->l(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lsa1;->onActivityResult(IILandroid/content/Intent;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lkq1;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ldk;

    .line 16
    .line 17
    const/16 v2, 0x12

    .line 18
    .line 19
    invoke-direct {v1, v0, v2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2, v1}, Lil0;->L(ZLbt3;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lmp6;->a:Lmp6;

    .line 27
    .line 28
    invoke-static {}, Lmp6;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 39
    .line 40
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    sget-object v3, Lzn4;->a:Lzn4;

    .line 47
    .line 48
    new-instance v3, Lb56;

    .line 49
    .line 50
    invoke-direct {v3, v0, v2}, Lb56;-><init>(Lk28;I)V

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lzn4;->e(Lbt3;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    const-string v5, "extra_config"

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move-object v3, v4

    .line 74
    :goto_0
    check-cast v3, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    move v6, v5

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move v6, v2

    .line 82
    :goto_1
    iput-boolean v6, v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->R:Z

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    iget-object v7, v6, Lqq1;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 89
    .line 90
    if-nez v7, :cond_4

    .line 91
    .line 92
    iput-object v3, v6, Lqq1;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 93
    .line 94
    :cond_4
    if-eqz v3, :cond_5

    .line 95
    .line 96
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 97
    .line 98
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const-string v6, "Opened config edit screen to edit \'"

    .line 107
    .line 108
    const-string v7, "\'"

    .line 109
    .line 110
    invoke-static {v6, v3, v7}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    const/4 v12, 0x4

    .line 115
    const/4 v13, 0x0

    .line 116
    const/4 v11, 0x0

    .line 117
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 122
    .line 123
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    const/16 v18, 0x4

    .line 128
    .line 129
    const/16 v19, 0x0

    .line 130
    .line 131
    const-string v16, "Opened config edit screen to create a new config"

    .line 132
    .line 133
    const/16 v17, 0x0

    .line 134
    .line 135
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iget-object v3, v3, Lkq1;->b:Lw00;

    .line 143
    .line 144
    iget-object v3, v3, Lw00;->c:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v3, Lix0;

    .line 147
    .line 148
    iget-object v3, v3, Lix0;->c:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lzm;->getSupportActionBar()Lnc8;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    const/4 v7, 0x3

    .line 160
    if-eqz v6, :cond_7

    .line 161
    .line 162
    invoke-virtual {v6, v5}, Lnc8;->Z(Z)V

    .line 163
    .line 164
    .line 165
    iget-boolean v8, v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->R:Z

    .line 166
    .line 167
    if-eqz v8, :cond_6

    .line 168
    .line 169
    const v8, 0x7f13031d

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    const v8, 0x7f1303b1

    .line 174
    .line 175
    .line 176
    :goto_3
    invoke-virtual {v6, v8}, Lnc8;->e0(I)V

    .line 177
    .line 178
    .line 179
    new-instance v6, Lgs;

    .line 180
    .line 181
    invoke-direct {v6, v0, v7}, Lgs;-><init>(Ljava/lang/Object;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    :cond_7
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    iget-object v3, v3, Lkq1;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 192
    .line 193
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    iget-object v6, v6, Lqq1;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 198
    .line 199
    if-eqz v6, :cond_8

    .line 200
    .line 201
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->get_name()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    goto :goto_4

    .line 206
    :cond_8
    move-object v6, v4

    .line 207
    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    new-instance v6, Ljq1;

    .line 211
    .line 212
    invoke-direct {v6, v0, v2}, Ljq1;-><init>(Lil0;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    .line 217
    .line 218
    new-instance v6, Llf;

    .line 219
    .line 220
    const/16 v8, 0xe

    .line 221
    .line 222
    invoke-direct {v6, v0, v8}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 223
    .line 224
    .line 225
    new-instance v8, Lkl8;

    .line 226
    .line 227
    invoke-direct {v8, v3, v6}, Lkl8;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Llf;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    iget-object v3, v3, Lkq1;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    const/4 v6, 0x7

    .line 240
    invoke-static {v3, v6}, Lsz8;->b(Landroid/view/View;I)V

    .line 241
    .line 242
    .line 243
    new-instance v6, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 244
    .line 245
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-direct {v6, v8}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 256
    .line 257
    .line 258
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->S:Lgv7;

    .line 259
    .line 260
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    check-cast v6, Lpq1;

    .line 265
    .line 266
    iput-boolean v5, v6, Lgm7;->k:Z

    .line 267
    .line 268
    new-instance v8, Lh01;

    .line 269
    .line 270
    invoke-direct {v8, v0, v5}, Lh01;-><init>(Ljava/lang/Object;I)V

    .line 271
    .line 272
    .line 273
    iput-object v8, v6, Lgm7;->j:Lqt3;

    .line 274
    .line 275
    new-instance v8, Le7;

    .line 276
    .line 277
    const/16 v9, 0x8

    .line 278
    .line 279
    invoke-direct {v8, v0, v9}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 280
    .line 281
    .line 282
    iput-object v8, v6, Lpq1;->m:Le7;

    .line 283
    .line 284
    new-instance v8, Lzs;

    .line 285
    .line 286
    const/4 v10, 0x5

    .line 287
    invoke-direct {v8, v0, v10}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 288
    .line 289
    .line 290
    iput-object v8, v6, Lpq1;->n:Lzs;

    .line 291
    .line 292
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    iget-object v3, v3, Lkq1;->d:Lcom/google/android/material/button/MaterialButton;

    .line 300
    .line 301
    new-instance v6, Lxd1;

    .line 302
    .line 303
    const/4 v8, 0x2

    .line 304
    invoke-direct {v6, v0, v8}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    iget-boolean v6, v3, Lqq1;->e:Z

    .line 315
    .line 316
    if-eqz v6, :cond_9

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_9
    iput-boolean v5, v3, Lqq1;->e:Z

    .line 320
    .line 321
    invoke-virtual {v3}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-virtual {v3, v5, v2}, Lqq1;->l(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getVp()Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-nez v1, :cond_b

    .line 333
    .line 334
    sget-object v1, Lre3;->a:Lzc2;

    .line 335
    .line 336
    iget-object v1, v3, La55;->b:Ljava/lang/String;

    .line 337
    .line 338
    sget-object v2, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 339
    .line 340
    if-eqz v2, :cond_a

    .line 341
    .line 342
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->getSize()Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v3, "configs="

    .line 349
    .line 350
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    new-instance v3, Lqe3;

    .line 361
    .line 362
    invoke-direct {v3, v1, v2}, Lqe3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :try_start_0
    invoke-virtual {v3}, Lqe3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .line 367
    .line 368
    :catch_0
    :cond_b
    :goto_5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    iget-object v1, v1, Lqq1;->g:Lgv7;

    .line 373
    .line 374
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    check-cast v1, Lex6;

    .line 379
    .line 380
    new-instance v2, Lw20;

    .line 381
    .line 382
    invoke-direct {v2, v0, v9}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 383
    .line 384
    .line 385
    new-instance v3, Lwb1;

    .line 386
    .line 387
    invoke-direct {v3, v7, v2}, Lwb1;-><init>(ILmt3;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v0, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    iget-object v1, v1, Lqq1;->h:Lgv7;

    .line 398
    .line 399
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    check-cast v1, Lex6;

    .line 404
    .line 405
    new-instance v2, Lc7;

    .line 406
    .line 407
    const/16 v3, 0xc

    .line 408
    .line 409
    invoke-direct {v2, v0, v3}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 410
    .line 411
    .line 412
    new-instance v3, Lwb1;

    .line 413
    .line 414
    invoke-direct {v3, v7, v2}, Lwb1;-><init>(ILmt3;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v0, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 418
    .line 419
    .line 420
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0f000d

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0054

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0a0054

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lgq1;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Lgq1;-><init>(Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const v2, 0x7f1301ef

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v2, v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method
