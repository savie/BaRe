.class public final Lm37;
.super Lrl0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrl0<",
        "Ln37;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ll90;

.field public final d:Lgv7;

.field public final e:Lcr3;

.field public final f:Lcr3;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lrl0;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ll37;

    .line 6
    .line 7
    const-string v5, "getCtx()Lorg/swiftapps/swiftbackup/home/HomeActivity;"

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const-class v3, Lm37;

    .line 11
    .line 12
    const-string v4, "ctx"

    .line 13
    .line 14
    move-object v2, p0

    .line 15
    invoke-direct/range {v1 .. v6}, Ld96;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lu30;

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    invoke-direct {p0, v1, v0}, Lu30;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lys4;->c:Lys4;

    .line 25
    .line 26
    invoke-static {v1, p0}, Ljd4;->x(Lys4;Lbt3;)Los4;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-class v1, Lq47;

    .line 31
    .line 32
    invoke-static {v1}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v3, Lv30;

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    invoke-direct {v3, p0, v4}, Lv30;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lw30;

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    invoke-direct {v4, p0, v5}, Lw30;-><init>(Los4;I)V

    .line 46
    .line 47
    .line 48
    new-instance v6, Lx30;

    .line 49
    .line 50
    invoke-direct {v6, v2, p0, v5}, Lx30;-><init>(Lrl0;Los4;I)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Ll90;

    .line 54
    .line 55
    invoke-direct {p0, v1, v3, v6, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 56
    .line 57
    .line 58
    iput-object p0, v2, Lm37;->c:Ll90;

    .line 59
    .line 60
    new-instance p0, Lto5;

    .line 61
    .line 62
    const/4 v1, 0x6

    .line 63
    invoke-direct {p0, v2, v1}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lgv7;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lgv7;-><init>(Lbt3;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, v2, Lm37;->d:Lgv7;

    .line 72
    .line 73
    new-instance p0, Lt37;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lmb;

    .line 79
    .line 80
    invoke-direct {v1, v2}, Lmb;-><init>(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1, p0}, Landroidx/fragment/app/o;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Lcr3;

    .line 88
    .line 89
    iput-object p0, v2, Lm37;->e:Lcr3;

    .line 90
    .line 91
    new-instance p0, Lg37;

    .line 92
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lnb;

    .line 97
    .line 98
    invoke-direct {v1, v2, v0}, Lnb;-><init>(Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1, p0}, Landroidx/fragment/app/o;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Lcr3;

    .line 106
    .line 107
    iput-object p0, v2, Lm37;->f:Lcr3;

    .line 108
    .line 109
    iput-boolean v5, v2, Lm37;->k:Z

    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public final i()Lorg/swiftapps/swiftbackup/home/HomeActivity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 9
    .line 10
    return-object p0
.end method

.method public final j()Ley2;
    .locals 0

    .line 1
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Ln37;

    .line 7
    .line 8
    iget-object p0, p0, Ln37;->d:Ley2;

    .line 9
    .line 10
    return-object p0
.end method

.method public final k()Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Ln37;

    .line 7
    .line 8
    iget-object p0, p0, Ln37;->n:Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    return-object p0
.end method

.method public final l()Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;
    .locals 0

    .line 1
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Ln37;

    .line 7
    .line 8
    iget-object p0, p0, Ln37;->k:Li75;

    .line 9
    .line 10
    iget-object p0, p0, Li75;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 13
    .line 14
    return-object p0
.end method

.method public final m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lw44;->e:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 10
    .line 11
    return-object p0
.end method

.method public final n()Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Ln37;

    .line 7
    .line 8
    iget-object p0, p0, Ln37;->f:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 9
    .line 10
    return-object p0
.end method

.method public final o()Lj57;
    .locals 0

    .line 1
    iget-object p0, p0, Lm37;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lj57;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/o;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x2

    .line 5
    if-eq p1, p2, :cond_1

    .line 6
    .line 7
    const/4 p2, 0x3

    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Ldz5;->a:Ldz5;

    .line 12
    .line 13
    invoke-static {}, Ldz5;->g()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object p1, Lzn4;->a:Lzn4;

    .line 24
    .line 25
    new-instance p1, Lxq4;

    .line 26
    .line 27
    const/16 p2, 0xd

    .line 28
    .line 29
    invoke-direct {p1, p0, p2}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    sget-object p1, Ldz5;->a:Ldz5;

    .line 37
    .line 38
    invoke-static {}, Ldz5;->m()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget-object p1, Lzn4;->a:Lzn4;

    .line 49
    .line 50
    new-instance p1, Las4;

    .line 51
    .line 52
    const/16 p2, 0xe

    .line 53
    .line 54
    invoke-direct {p1, p0, p2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0d0163

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0a00e4

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v5, v2

    .line 24
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const-string v3, "Missing required view with ID: "

    .line 28
    .line 29
    if-eqz v5, :cond_5

    .line 30
    .line 31
    const v1, 0x7f0a01b9

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    move-object v6, v4

    .line 39
    check-cast v6, Lcom/google/android/material/card/MaterialCardView;

    .line 40
    .line 41
    if-eqz v6, :cond_5

    .line 42
    .line 43
    const v1, 0x7f0a0209

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_5

    .line 51
    .line 52
    invoke-static {v4}, Ley2;->a(Landroid/view/View;)Ley2;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const v1, 0x7f0a03a8

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_5

    .line 64
    .line 65
    check-cast v4, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 66
    .line 67
    new-instance v8, Lix0;

    .line 68
    .line 69
    const/4 v1, 0x6

    .line 70
    invoke-direct {v8, v1, v4, v4}, Lix0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const v1, 0x7f0a040d

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    move-object v9, v4

    .line 81
    check-cast v9, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 82
    .line 83
    if-eqz v9, :cond_5

    .line 84
    .line 85
    const v1, 0x7f0a0420

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    const v1, 0x7f0a011e

    .line 95
    .line 96
    .line 97
    invoke-static {v4, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 102
    .line 103
    if-eqz v10, :cond_4

    .line 104
    .line 105
    const v1, 0x7f0a0154

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    if-eqz v11, :cond_4

    .line 113
    .line 114
    invoke-static {v11}, Lgm1;->a(Landroid/view/View;)Lgm1;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const v11, 0x7f0a0422

    .line 119
    .line 120
    .line 121
    invoke-static {v4, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    if-eqz v12, :cond_3

    .line 126
    .line 127
    const v11, 0x7f0a0423

    .line 128
    .line 129
    .line 130
    invoke-static {v4, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    check-cast v13, Lorg/swiftapps/swiftbackup/views/SwiftSegmentConstraintLayout;

    .line 135
    .line 136
    if-eqz v13, :cond_3

    .line 137
    .line 138
    const v11, 0x7f0a0426

    .line 139
    .line 140
    .line 141
    invoke-static {v4, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    check-cast v13, Landroid/widget/LinearLayout;

    .line 146
    .line 147
    if-eqz v13, :cond_3

    .line 148
    .line 149
    const v11, 0x7f0a0497

    .line 150
    .line 151
    .line 152
    invoke-static {v4, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    check-cast v13, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 157
    .line 158
    if-eqz v13, :cond_3

    .line 159
    .line 160
    const v11, 0x7f0a04de

    .line 161
    .line 162
    .line 163
    invoke-static {v4, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    if-eqz v14, :cond_3

    .line 168
    .line 169
    invoke-static {v14}, Lgm1;->a(Landroid/view/View;)Lgm1;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    const v14, 0x7f0a054c

    .line 174
    .line 175
    .line 176
    invoke-static {v4, v14}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    check-cast v15, Landroid/widget/TextView;

    .line 181
    .line 182
    if-eqz v15, :cond_2

    .line 183
    .line 184
    const v14, 0x7f0a054d

    .line 185
    .line 186
    .line 187
    invoke-static {v4, v14}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v15

    .line 191
    check-cast v15, Landroid/widget/TextView;

    .line 192
    .line 193
    if-eqz v15, :cond_2

    .line 194
    .line 195
    const v14, 0x7f0a0590

    .line 196
    .line 197
    .line 198
    invoke-static {v4, v14}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    check-cast v15, Landroid/widget/TextView;

    .line 203
    .line 204
    if-eqz v15, :cond_2

    .line 205
    .line 206
    new-instance v14, Li75;

    .line 207
    .line 208
    check-cast v4, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 209
    .line 210
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 211
    .line 212
    .line 213
    iput-object v4, v14, Li75;->a:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v10, v14, Li75;->b:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v1, v14, Li75;->c:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v12, v14, Li75;->d:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object v13, v14, Li75;->e:Ljava/lang/Object;

    .line 222
    .line 223
    iput-object v11, v14, Li75;->f:Ljava/lang/Object;

    .line 224
    .line 225
    iput-object v15, v14, Li75;->k:Ljava/lang/Object;

    .line 226
    .line 227
    const v1, 0x7f0a0421

    .line 228
    .line 229
    .line 230
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    move-object v11, v4

    .line 235
    check-cast v11, Landroidx/core/widget/NestedScrollView;

    .line 236
    .line 237
    if-eqz v11, :cond_5

    .line 238
    .line 239
    const v1, 0x7f0a0424

    .line 240
    .line 241
    .line 242
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    if-eqz v4, :cond_5

    .line 247
    .line 248
    const v1, 0x7f0a02a1

    .line 249
    .line 250
    .line 251
    invoke-static {v4, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    check-cast v10, Landroid/widget/ImageView;

    .line 256
    .line 257
    if-eqz v10, :cond_1

    .line 258
    .line 259
    move-object v1, v4

    .line 260
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 261
    .line 262
    const v10, 0x7f0a05ba

    .line 263
    .line 264
    .line 265
    invoke-static {v4, v10}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    check-cast v12, Landroid/widget/TextView;

    .line 270
    .line 271
    if-eqz v12, :cond_0

    .line 272
    .line 273
    new-instance v4, Lw00;

    .line 274
    .line 275
    const/16 v10, 0x9

    .line 276
    .line 277
    invoke-direct {v4, v10, v1, v12}, Lw00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    const v1, 0x7f0a0591

    .line 281
    .line 282
    .line 283
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    move-object v13, v10

    .line 288
    check-cast v13, Landroid/widget/TextView;

    .line 289
    .line 290
    if-eqz v13, :cond_5

    .line 291
    .line 292
    new-instance v3, Ln37;

    .line 293
    .line 294
    check-cast v0, Landroid/widget/FrameLayout;

    .line 295
    .line 296
    move-object v12, v4

    .line 297
    move-object v10, v14

    .line 298
    move-object v4, v0

    .line 299
    invoke-direct/range {v3 .. v13}, Ln37;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/card/MaterialCardView;Ley2;Lix0;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Li75;Landroidx/core/widget/NestedScrollView;Lw00;Landroid/widget/TextView;)V

    .line 300
    .line 301
    .line 302
    move-object/from16 v0, p0

    .line 303
    .line 304
    iput-object v3, v0, Lrl0;->b:Ljk8;

    .line 305
    .line 306
    invoke-virtual {v3}, Ln37;->getRoot()Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    return-object v0

    .line 314
    :cond_0
    move v1, v10

    .line 315
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    return-object v2

    .line 331
    :cond_2
    move v1, v14

    .line 332
    goto :goto_0

    .line 333
    :cond_3
    move v1, v11

    .line 334
    :cond_4
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    return-object v2

    .line 350
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-object v2
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lc64;->m:Lix6;

    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lm37;->k:Z

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "app_locale"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v1, "prefs"

    .line 32
    .line 33
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    :goto_0
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-static {v2}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lis4;->a()Ljava/util/Locale;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lis4;->a()Ljava/util/Locale;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :goto_2
    iget-object v2, v0, Lq47;->g:Ljava/util/Locale;

    .line 64
    .line 65
    invoke-static {v2, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    iget-object v2, v0, La55;->b:Ljava/lang/String;

    .line 72
    .line 73
    const-string v3, "Locale changed, refreshing views"

    .line 74
    .line 75
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iput-object v1, v0, Lq47;->g:Ljava/util/Locale;

    .line 79
    .line 80
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Lh47;

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-direct {v1, v0, v2}, Lh47;-><init>(Lq47;Z)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    sget-object v0, Lzn4;->a:Lzn4;

    .line 95
    .line 96
    new-instance v0, Lu14;

    .line 97
    .line 98
    const/16 v1, 0x9

    .line 99
    .line 100
    invoke-direct {v0, p0, v1}, Lu14;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v1, 0x1f4

    .line 104
    .line 105
    invoke-static {v1, v2, v0}, Lzn4;->f(JLbt3;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isAdded()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v0, v0, Lw44;->c:Lx44;

    .line 123
    .line 124
    iget-object v0, v0, Lx44;->a:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 127
    .line 128
    const v1, 0x7f0a0421

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftOnScrollTargetViewId(I)V

    .line 132
    .line 133
    .line 134
    :cond_5
    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lm37;->k:Z

    .line 136
    .line 137
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lm37;->l()Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lh00;

    .line 9
    .line 10
    const/16 v3, 0xc

    .line 11
    .line 12
    invoke-direct {v1, p0, v3}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast v0, Ln37;

    .line 24
    .line 25
    iget-object v0, v0, Ln37;->k:Li75;

    .line 26
    .line 27
    iget-object v1, v0, Li75;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 30
    .line 31
    iget-object v0, v0, Li75;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Landroid/view/View;

    .line 34
    .line 35
    new-instance v4, Lgs;

    .line 36
    .line 37
    const/16 v5, 0x9

    .line 38
    .line 39
    invoke-direct {v4, p0, v5}, Lgs;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0, v4}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->b(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    check-cast v0, Ln37;

    .line 51
    .line 52
    iget-object v0, v0, Ln37;->k:Li75;

    .line 53
    .line 54
    iget-object v0, v0, Li75;->f:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lgm1;

    .line 57
    .line 58
    iget-object v1, v0, Lgm1;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Landroid/widget/ImageView;

    .line 61
    .line 62
    const v4, 0x7f0800b7

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lgm1;->e:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Landroid/widget/TextView;

    .line 71
    .line 72
    const v4, 0x7f13053e

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v0, Lgm1;->a:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 81
    .line 82
    new-instance v1, Lg7;

    .line 83
    .line 84
    const/16 v4, 0xe

    .line 85
    .line 86
    invoke-direct {v1, p0, v4}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    check-cast v0, Ln37;

    .line 98
    .line 99
    iget-object v0, v0, Ln37;->k:Li75;

    .line 100
    .line 101
    iget-object v0, v0, Li75;->c:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lgm1;

    .line 104
    .line 105
    iget-object v1, v0, Lgm1;->c:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v1, Landroid/widget/ImageView;

    .line 108
    .line 109
    const v5, 0x7f0800cc

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lgm1;->e:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v1, Landroid/widget/TextView;

    .line 118
    .line 119
    const v5, 0x7f1300fc

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v0, Lgm1;->a:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 128
    .line 129
    new-instance v1, Lh7;

    .line 130
    .line 131
    invoke-direct {v1, p0, v4}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    check-cast v0, Ln37;

    .line 143
    .line 144
    iget-object v0, v0, Ln37;->k:Li75;

    .line 145
    .line 146
    iget-object v0, v0, Li75;->k:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Landroid/widget/TextView;

    .line 149
    .line 150
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/GlobalScheduleError;->Companion:Lyy3;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    sget-object v1, Lw14;->a:Lgv7;

    .line 156
    .line 157
    new-instance v1, Lxy3;

    .line 158
    .line 159
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v5, "GsonHelper"

    .line 163
    .line 164
    const-string v6, "fromPrefs"

    .line 165
    .line 166
    const/4 v7, 0x0

    .line 167
    invoke-static {v5, v6, v7, v1, v3}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/GlobalScheduleError;

    .line 172
    .line 173
    const/4 v8, 0x1

    .line 174
    if-eqz v1, :cond_0

    .line 175
    .line 176
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/GlobalScheduleError;->isValid()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-ne v3, v8, :cond_0

    .line 181
    .line 182
    move v3, v8

    .line 183
    goto :goto_0

    .line 184
    :cond_0
    move v3, v7

    .line 185
    :goto_0
    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-nez v3, :cond_2

    .line 193
    .line 194
    if-eqz v1, :cond_1

    .line 195
    .line 196
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/GlobalScheduleError;->toDisplayString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    goto :goto_1

    .line 201
    :cond_1
    const/4 v1, 0x0

    .line 202
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    :cond_2
    invoke-virtual {p0}, Lm37;->n()Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sget v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->c1:I

    .line 210
    .line 211
    invoke-virtual {v0, v8}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 212
    .line 213
    .line 214
    const/16 v1, 0xa

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lng6;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lcf2;

    .line 224
    .line 225
    if-eqz v1, :cond_3

    .line 226
    .line 227
    iput-boolean v7, v1, Lcf2;->g:Z

    .line 228
    .line 229
    :cond_3
    invoke-virtual {p0}, Lm37;->o()Lj57;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    new-instance v3, Lcz;

    .line 234
    .line 235
    const/16 v5, 0x10

    .line 236
    .line 237
    invoke-direct {v3, p0, v5}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 238
    .line 239
    .line 240
    iput-object v3, v1, Lj57;->n:Lcz;

    .line 241
    .line 242
    new-instance v3, Lu10;

    .line 243
    .line 244
    const/16 v5, 0x12

    .line 245
    .line 246
    invoke-direct {v3, p0, v5}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 247
    .line 248
    .line 249
    iput-object v3, v1, Lj57;->o:Lu10;

    .line 250
    .line 251
    new-instance v3, Lv10;

    .line 252
    .line 253
    invoke-direct {v3, p0, v5}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 254
    .line 255
    .line 256
    iput-object v3, v1, Lj57;->p:Lv10;

    .line 257
    .line 258
    new-instance v3, Lpx;

    .line 259
    .line 260
    invoke-direct {v3, p0, v4}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    iput-object v3, v1, Lj57;->q:Lpx;

    .line 264
    .line 265
    new-instance v3, Lzs;

    .line 266
    .line 267
    invoke-direct {v3, p0, v4}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 268
    .line 269
    .line 270
    iput-object v3, v1, Lj57;->r:Lzs;

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Lm37;->j()Ley2;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iget-object v1, v0, Ley2;->d:Landroid/widget/ImageView;

    .line 280
    .line 281
    const v3, 0x7f08010e

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Ley2;->f:Landroid/widget/TextView;

    .line 288
    .line 289
    const v3, 0x7f1304c8

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 293
    .line 294
    .line 295
    iget-object v1, v0, Ley2;->e:Landroid/widget/TextView;

    .line 296
    .line 297
    const v3, 0x7f1304be

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 301
    .line 302
    .line 303
    iget-object v0, v0, Ley2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 304
    .line 305
    const v1, 0x7f080101

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 309
    .line 310
    .line 311
    const v1, 0x7f13057c

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 315
    .line 316
    .line 317
    new-instance v1, Li37;

    .line 318
    .line 319
    invoke-direct {v1, p0, v7}, Li37;-><init>(Lm37;I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    .line 324
    .line 325
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    check-cast v0, Ln37;

    .line 331
    .line 332
    iget-object v0, v0, Ln37;->k:Li75;

    .line 333
    .line 334
    iget-object v0, v0, Li75;->b:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 337
    .line 338
    new-instance v1, Li00;

    .line 339
    .line 340
    const/16 v3, 0xd

    .line 341
    .line 342
    invoke-direct {v1, p0, v3}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    new-instance v1, Lxq4;

    .line 353
    .line 354
    const/16 v3, 0xb

    .line 355
    .line 356
    invoke-direct {v1, p0, v3}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->setOnBeforeExpand(Lbt3;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    new-instance v0, Lk37;

    .line 367
    .line 368
    const-string v5, "addNewScheduleFromFabMenu(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V"

    .line 369
    .line 370
    const/4 v6, 0x0

    .line 371
    const/4 v1, 0x1

    .line 372
    const-class v3, Lm37;

    .line 373
    .line 374
    const-string v4, "addNewScheduleFromFabMenu"

    .line 375
    .line 376
    move-object v2, p0

    .line 377
    invoke-direct/range {v0 .. v6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->setOnActionClick(Lmt3;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    check-cast v0, Ln37;

    .line 389
    .line 390
    iget-object v0, v0, Ln37;->b:Lcom/google/android/material/button/MaterialButton;

    .line 391
    .line 392
    new-instance v1, Li37;

    .line 393
    .line 394
    invoke-direct {v1, p0, v8}, Li37;-><init>(Lm37;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    .line 399
    .line 400
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 401
    .line 402
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/SwiftApp;->a:Lex6;

    .line 407
    .line 408
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    new-instance v3, Lk3;

    .line 413
    .line 414
    const/16 v4, 0x14

    .line 415
    .line 416
    invoke-direct {v3, p0, v4}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 417
    .line 418
    .line 419
    new-instance v4, Lne5;

    .line 420
    .line 421
    const/4 v8, 0x2

    .line 422
    invoke-direct {v4, v8, v3}, Lne5;-><init>(ILmt3;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v1, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    iget-object v9, v0, Lq47;->f:Lex6;

    .line 433
    .line 434
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    new-instance v0, Lnh1;

    .line 439
    .line 440
    const/4 v7, 0x1

    .line 441
    const/4 v1, 0x1

    .line 442
    const-class v3, Lm37;

    .line 443
    .line 444
    const-string v4, "onStateUpdate"

    .line 445
    .line 446
    const-string v5, "onStateUpdate(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleVM$State;)V"

    .line 447
    .line 448
    invoke-direct/range {v0 .. v7}, Lnh1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 449
    .line 450
    .line 451
    new-instance v1, Lne5;

    .line 452
    .line 453
    invoke-direct {v1, v8, v0}, Lne5;-><init>(ILmt3;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v9, v10, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 457
    .line 458
    .line 459
    return-void
.end method

.method public final p()Lq47;
    .locals 0

    .line 1
    iget-object p0, p0, Lm37;->c:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq47;

    .line 8
    .line 9
    return-object p0
.end method

.method public final q()V
    .locals 3

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-static {}, Lb67;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lo37;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Ldz5;->a:Ldz5;

    .line 23
    .line 24
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 29
    .line 30
    invoke-static {v2}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v0, v2, v1}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lq47;->e:Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lo37;->b()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->a()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->c()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    sget v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 62
    .line 63
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance v0, Lh47;

    .line 75
    .line 76
    invoke-direct {v0, p0, v1}, Lh47;-><init>(Lq47;Z)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
