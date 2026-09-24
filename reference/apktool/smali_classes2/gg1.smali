.class public final Lgg1;
.super Lrl0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrl0<",
        "Lhg1;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ll90;

.field public d:Lwf1;

.field public e:Luj1;


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
    new-instance v1, Lfg1;

    .line 6
    .line 7
    const-string v5, "getCtx()Lorg/swiftapps/swiftbackup/home/HomeActivity;"

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const-class v3, Lgg1;

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
    new-instance p0, Ll7;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {p0, v1, v3}, Ll7;-><init>(Ljava/lang/Object;I)V

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
    const-class v1, Lng1;

    .line 31
    .line 32
    invoke-static {v1}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v3, Lbg1;

    .line 37
    .line 38
    invoke-direct {v3, p0}, Lbg1;-><init>(Los4;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lcg1;

    .line 42
    .line 43
    invoke-direct {v4, p0, v0}, Lcg1;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Ldg1;

    .line 47
    .line 48
    invoke-direct {v5, v0, v2, p0}, Ldg1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Ll90;

    .line 52
    .line 53
    invoke-direct {p0, v1, v3, v5, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 54
    .line 55
    .line 56
    iput-object p0, v2, Lgg1;->c:Ll90;

    .line 57
    .line 58
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
    check-cast p0, Lhg1;

    .line 7
    .line 8
    iget-object p0, p0, Lhg1;->k:Ley2;

    .line 9
    .line 10
    return-object p0
.end method

.method public final k()Lcom/google/android/material/progressindicator/CircularProgressIndicator;
    .locals 0

    .line 1
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lhg1;

    .line 7
    .line 8
    iget-object p0, p0, Lhg1;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 9
    .line 10
    return-object p0
.end method

.method public final l()Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lhg1;

    .line 7
    .line 8
    iget-object p0, p0, Lhg1;->c:Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    return-object p0
.end method

.method public final m()Lng1;
    .locals 0

    .line 1
    iget-object p0, p0, Lgg1;->c:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lng1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final n(Lrb1;)V
    .locals 6

    .line 1
    sget-object v0, Lag1;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const v2, 0x7f080117

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eq v0, v4, :cond_1

    .line 19
    .line 20
    const/4 v4, 0x5

    .line 21
    if-ne v0, v4, :cond_0

    .line 22
    .line 23
    const p1, 0x7f13010d

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f130224

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string p0, "Unhandled setupErrorView: "

    .line 45
    .line 46
    invoke-static {p1, p0}, Lg84;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const p1, 0x7f1303c7

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const v0, 0x7f1303c8

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const v2, 0x7f080213

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const p1, 0x7f1303c5

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const v0, 0x7f1301b5

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move v5, v1

    .line 95
    :goto_0
    invoke-virtual {p0}, Lgg1;->j()Ley2;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    iget-object v4, v4, Ley2;->d:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lgg1;->j()Ley2;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget-object v2, v2, Ley2;->f:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lgg1;->j()Ley2;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p1, p1, Ley2;->e:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lgg1;->j()Ley2;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p1, p1, Ley2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    const v0, 0x7f1301b4

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 135
    .line 136
    .line 137
    const v0, 0x7f080114

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 141
    .line 142
    .line 143
    new-instance v0, Lof;

    .line 144
    .line 145
    invoke-direct {v0, p0, v3}, Lof;-><init>(Ljava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lgg1;->j()Ley2;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object p1, p1, Ley2;->c:Lcom/google/android/material/button/MaterialButton;

    .line 156
    .line 157
    invoke-static {p1, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isVisible()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    const v0, 0x7f13049a

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 170
    .line 171
    .line 172
    const v0, 0x7f0801a8

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lzf1;

    .line 179
    .line 180
    invoke-direct {v0, p0, v1}, Lzf1;-><init>(Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    :cond_3
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lhg1;

    .line 7
    .line 8
    iget-object p0, p0, Lhg1;->f:Lyf1;

    .line 9
    .line 10
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 13
    .line 14
    sget-object v0, Ltb1;->a:Ltb1;

    .line 15
    .line 16
    const-string v0, "cloud_manual_delete_warning_shown"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "prefs"

    .line 29
    .line 30
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    :goto_0
    xor-int/lit8 v0, v1, 0x1

    .line 36
    .line 37
    invoke-static {p0, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0d0056

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
    const v2, 0x7f0a0167

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    move-object v6, v3

    .line 24
    check-cast v6, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const-string v4, "Missing required view with ID: "

    .line 28
    .line 29
    if-eqz v6, :cond_4

    .line 30
    .line 31
    const v2, 0x7f0a0168

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v7, v5

    .line 39
    check-cast v7, Landroidx/core/widget/NestedScrollView;

    .line 40
    .line 41
    if-eqz v7, :cond_4

    .line 42
    .line 43
    const v2, 0x7f0a0169

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-eqz v5, :cond_4

    .line 51
    .line 52
    const v2, 0x7f0a00ba

    .line 53
    .line 54
    .line 55
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    move-object v11, v8

    .line 60
    check-cast v11, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    if-eqz v11, :cond_3

    .line 63
    .line 64
    const v2, 0x7f0a00bb

    .line 65
    .line 66
    .line 67
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    if-eqz v12, :cond_3

    .line 72
    .line 73
    const v2, 0x7f0a00bc

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    move-object v13, v8

    .line 81
    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    .line 83
    if-eqz v13, :cond_3

    .line 84
    .line 85
    const v2, 0x7f0a00bd

    .line 86
    .line 87
    .line 88
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    move-object v14, v8

    .line 93
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    if-eqz v14, :cond_3

    .line 96
    .line 97
    const v2, 0x7f0a00be

    .line 98
    .line 99
    .line 100
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    move-object v15, v8

    .line 105
    check-cast v15, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 106
    .line 107
    if-eqz v15, :cond_3

    .line 108
    .line 109
    const v2, 0x7f0a00f9

    .line 110
    .line 111
    .line 112
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    move-object/from16 v16, v8

    .line 117
    .line 118
    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    .line 119
    .line 120
    if-eqz v16, :cond_3

    .line 121
    .line 122
    move-object v10, v5

    .line 123
    check-cast v10, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 124
    .line 125
    const v2, 0x7f0a016e

    .line 126
    .line 127
    .line 128
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    check-cast v8, Lorg/swiftapps/swiftbackup/views/SwiftSegmentLinearLayout;

    .line 133
    .line 134
    if-eqz v8, :cond_3

    .line 135
    .line 136
    const v2, 0x7f0a01ee

    .line 137
    .line 138
    .line 139
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    if-eqz v8, :cond_3

    .line 144
    .line 145
    invoke-static {v8}, Lgm1;->a(Landroid/view/View;)Lgm1;

    .line 146
    .line 147
    .line 148
    move-result-object v17

    .line 149
    const v2, 0x7f0a02a8

    .line 150
    .line 151
    .line 152
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    check-cast v8, Landroid/widget/ImageView;

    .line 157
    .line 158
    if-eqz v8, :cond_3

    .line 159
    .line 160
    const v2, 0x7f0a04ba

    .line 161
    .line 162
    .line 163
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    check-cast v8, Landroid/widget/TextView;

    .line 168
    .line 169
    if-eqz v8, :cond_3

    .line 170
    .line 171
    const v2, 0x7f0a051c

    .line 172
    .line 173
    .line 174
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    move-object/from16 v18, v8

    .line 179
    .line 180
    check-cast v18, Landroid/widget/TextView;

    .line 181
    .line 182
    if-eqz v18, :cond_3

    .line 183
    .line 184
    const v2, 0x7f0a053a

    .line 185
    .line 186
    .line 187
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    check-cast v8, Landroid/widget/TextView;

    .line 192
    .line 193
    if-eqz v8, :cond_3

    .line 194
    .line 195
    const v2, 0x7f0a053b

    .line 196
    .line 197
    .line 198
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    check-cast v8, Landroid/widget/TextView;

    .line 203
    .line 204
    if-eqz v8, :cond_3

    .line 205
    .line 206
    const v2, 0x7f0a0556

    .line 207
    .line 208
    .line 209
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    check-cast v8, Landroid/widget/TextView;

    .line 214
    .line 215
    if-eqz v8, :cond_3

    .line 216
    .line 217
    new-instance v8, Ltf1;

    .line 218
    .line 219
    move-object v9, v8

    .line 220
    invoke-direct/range {v9 .. v18}, Ltf1;-><init>(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/widget/LinearLayout;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lcom/google/android/material/button/MaterialButton;Lgm1;Landroid/widget/TextView;)V

    .line 221
    .line 222
    .line 223
    const v2, 0x7f0a016b

    .line 224
    .line 225
    .line 226
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    if-eqz v5, :cond_4

    .line 231
    .line 232
    const v2, 0x7f0a00fc

    .line 233
    .line 234
    .line 235
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    move-object v12, v9

    .line 240
    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    .line 241
    .line 242
    if-eqz v12, :cond_2

    .line 243
    .line 244
    const v2, 0x7f0a0166

    .line 245
    .line 246
    .line 247
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 252
    .line 253
    if-eqz v9, :cond_2

    .line 254
    .line 255
    const v2, 0x7f0a016d

    .line 256
    .line 257
    .line 258
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    check-cast v9, Lorg/swiftapps/swiftbackup/views/SwiftSegmentLinearLayout;

    .line 263
    .line 264
    if-eqz v9, :cond_2

    .line 265
    .line 266
    const v2, 0x7f0a02c9

    .line 267
    .line 268
    .line 269
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    move-object v13, v9

    .line 274
    check-cast v13, Landroid/widget/ImageView;

    .line 275
    .line 276
    if-eqz v13, :cond_2

    .line 277
    .line 278
    const v2, 0x7f0a0487

    .line 279
    .line 280
    .line 281
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    if-eqz v9, :cond_2

    .line 286
    .line 287
    invoke-static {v9}, Lca2;->a(Landroid/view/View;)Lca2;

    .line 288
    .line 289
    .line 290
    move-result-object v14

    .line 291
    const v2, 0x7f0a050b

    .line 292
    .line 293
    .line 294
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    move-object v15, v9

    .line 299
    check-cast v15, Landroid/widget/TextView;

    .line 300
    .line 301
    if-eqz v15, :cond_2

    .line 302
    .line 303
    const v2, 0x7f0a050c

    .line 304
    .line 305
    .line 306
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    check-cast v9, Landroid/widget/TextView;

    .line 311
    .line 312
    if-eqz v9, :cond_2

    .line 313
    .line 314
    const v2, 0x7f0a0528

    .line 315
    .line 316
    .line 317
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    check-cast v9, Landroid/widget/TextView;

    .line 322
    .line 323
    if-eqz v9, :cond_2

    .line 324
    .line 325
    const v2, 0x7f0a0529

    .line 326
    .line 327
    .line 328
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    move-object/from16 v16, v9

    .line 333
    .line 334
    check-cast v16, Landroid/widget/TextView;

    .line 335
    .line 336
    if-eqz v16, :cond_2

    .line 337
    .line 338
    new-instance v9, Lxf1;

    .line 339
    .line 340
    move-object v11, v5

    .line 341
    check-cast v11, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 342
    .line 343
    move-object v10, v9

    .line 344
    invoke-direct/range {v10 .. v16}, Lxf1;-><init>(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Lca2;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 345
    .line 346
    .line 347
    const v2, 0x7f0a016c

    .line 348
    .line 349
    .line 350
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    if-eqz v5, :cond_4

    .line 355
    .line 356
    const v2, 0x7f0a010c

    .line 357
    .line 358
    .line 359
    invoke-static {v5, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 364
    .line 365
    if-eqz v10, :cond_1

    .line 366
    .line 367
    move-object v2, v5

    .line 368
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 369
    .line 370
    const v11, 0x7f0a047f

    .line 371
    .line 372
    .line 373
    invoke-static {v5, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 374
    .line 375
    .line 376
    move-result-object v12

    .line 377
    check-cast v12, Landroid/widget/LinearLayout;

    .line 378
    .line 379
    if-eqz v12, :cond_0

    .line 380
    .line 381
    const v11, 0x7f0a0562

    .line 382
    .line 383
    .line 384
    invoke-static {v5, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v12

    .line 388
    check-cast v12, Landroid/widget/TextView;

    .line 389
    .line 390
    if-eqz v12, :cond_0

    .line 391
    .line 392
    const v11, 0x7f0a05ba

    .line 393
    .line 394
    .line 395
    invoke-static {v5, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v12

    .line 399
    check-cast v12, Landroid/widget/TextView;

    .line 400
    .line 401
    if-eqz v12, :cond_0

    .line 402
    .line 403
    new-instance v5, Lyf1;

    .line 404
    .line 405
    invoke-direct {v5, v1, v2, v10}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    const v2, 0x7f0a0209

    .line 409
    .line 410
    .line 411
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    if-eqz v1, :cond_4

    .line 416
    .line 417
    invoke-static {v1}, Ley2;->a(Landroid/view/View;)Ley2;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    new-instance v4, Lhg1;

    .line 422
    .line 423
    check-cast v0, Landroid/widget/FrameLayout;

    .line 424
    .line 425
    move-object v10, v5

    .line 426
    move-object v5, v0

    .line 427
    invoke-direct/range {v4 .. v11}, Lhg1;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/core/widget/NestedScrollView;Ltf1;Lxf1;Lyf1;Ley2;)V

    .line 428
    .line 429
    .line 430
    move-object/from16 v0, p0

    .line 431
    .line 432
    iput-object v4, v0, Lrl0;->b:Ljk8;

    .line 433
    .line 434
    invoke-virtual {v4}, Lhg1;->getRoot()Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    return-object v0

    .line 442
    :cond_0
    move v2, v11

    .line 443
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    return-object v3

    .line 459
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    return-object v3

    .line 475
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    return-object v3

    .line 491
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    return-object v3
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isAdded()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lgg1;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lrl0;->b:Ljk8;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast v1, Lhg1;

    .line 20
    .line 21
    iget-object v1, v1, Lhg1;->c:Landroidx/core/widget/NestedScrollView;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lw44;->c:Lx44;

    .line 32
    .line 33
    iget-object v0, v0, Lx44;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftOnScrollTargetViewId(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lgg1;->m()Lng1;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-boolean v0, v0, Lng1;->c:Z

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Lgg1;->m()Lng1;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-boolean v0, Ltb1;->f:Z

    .line 53
    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lng1;->e:Z

    .line 58
    .line 59
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-boolean p0, p0, Lng1;->e:Z

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget-object v1, Lzn4;->a:Lzn4;

    .line 69
    .line 70
    new-instance v1, Lsb1;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {v1, v0, p0, v2}, Lsb1;-><init>(Ltb1;ZLjv1;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lgg1;->m()Lng1;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-boolean p1, p1, Lng1;->c:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lgg1;->m()Lng1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lgg1;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lil0;->G()Lqo0;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p1, Lng1;->c:Z

    .line 26
    .line 27
    iput-object p2, p1, Lng1;->d:Lqo0;

    .line 28
    .line 29
    invoke-virtual {p1}, Lng1;->c()V

    .line 30
    .line 31
    .line 32
    sget-object p2, Lhx0;->b:Lhx0;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lhx0;->i(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance p1, Lwf1;

    .line 38
    .line 39
    invoke-virtual {p0}, Lgg1;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    check-cast v0, Lhg1;

    .line 49
    .line 50
    iget-object v0, v0, Lhg1;->e:Lxf1;

    .line 51
    .line 52
    invoke-direct {p1, p2, v0}, Lwf1;-><init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Lxf1;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lgg1;->d:Lwf1;

    .line 56
    .line 57
    new-instance p1, Luj1;

    .line 58
    .line 59
    invoke-virtual {p0}, Lgg1;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    check-cast v0, Lhg1;

    .line 69
    .line 70
    iget-object v0, v0, Lhg1;->d:Ltf1;

    .line 71
    .line 72
    invoke-virtual {p0}, Lgg1;->m()Lng1;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {p1, p2, v0, v1}, Luj1;-><init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Ltf1;Lng1;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lgg1;->e:Luj1;

    .line 80
    .line 81
    invoke-virtual {p0}, Lgg1;->o()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lrl0;->b:Ljk8;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    check-cast p1, Lhg1;

    .line 90
    .line 91
    iget-object p1, p1, Lhg1;->e:Lxf1;

    .line 92
    .line 93
    iget-object p1, p1, Lxf1;->d:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 96
    .line 97
    new-instance p2, Lfr;

    .line 98
    .line 99
    const/4 v0, 0x3

    .line 100
    invoke-direct {p2, v0, p0, p1}, Lfr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lrl0;->b:Ljk8;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    check-cast p1, Lhg1;

    .line 112
    .line 113
    iget-object p1, p1, Lhg1;->f:Lyf1;

    .line 114
    .line 115
    iget-object p1, p1, Lyf1;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 118
    .line 119
    new-instance p2, Lg7;

    .line 120
    .line 121
    const/4 v0, 0x6

    .line 122
    invoke-direct {p2, p0, v0}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    sget-object p1, Ltb1;->c:Lgj5;

    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    new-instance v0, Leg1;

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    invoke-direct {v0, p0, v1}, Leg1;-><init>(Ljava/lang/Object;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Ltb1;->e:Lix6;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    new-instance v0, Lw20;

    .line 150
    .line 151
    const/4 v1, 0x5

    .line 152
    invoke-direct {v0, p0, v1}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    new-instance v1, Lez;

    .line 156
    .line 157
    const/4 v2, 0x2

    .line 158
    invoke-direct {v1, v2, v0}, Lez;-><init>(ILmt3;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lgg1;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->a0()Lc64;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iget-object p1, p1, Lc64;->j:Lgv7;

    .line 173
    .line 174
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lex6;

    .line 179
    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    new-instance v0, Lc7;

    .line 185
    .line 186
    const/16 v1, 0x9

    .line 187
    .line 188
    invoke-direct {v0, p0, v1}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Lez;

    .line 192
    .line 193
    invoke-direct {v1, v2, v0}, Lez;-><init>(ILmt3;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p2, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 197
    .line 198
    .line 199
    sget-object p1, Ltb1;->d:Lgj5;

    .line 200
    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    new-instance v0, Ld7;

    .line 206
    .line 207
    const/4 v1, 0x7

    .line 208
    invoke-direct {v0, p0, v1}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 209
    .line 210
    .line 211
    new-instance v3, Lez;

    .line 212
    .line 213
    invoke-direct {v3, v2, v0}, Lez;-><init>(ILmt3;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p2, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lgg1;->m()Lng1;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iget-object p1, p1, Lng1;->f:Lex6;

    .line 224
    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    new-instance v0, Le7;

    .line 230
    .line 231
    invoke-direct {v0, p0, v1}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 232
    .line 233
    .line 234
    new-instance p0, Lez;

    .line 235
    .line 236
    invoke-direct {p0, v2, v0}, Lez;-><init>(ILmt3;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p2, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 240
    .line 241
    .line 242
    return-void
.end method
