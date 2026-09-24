.class public final Luy;
.super Landroidx/fragment/app/o;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luy$a;
    }
.end annotation


# instance fields
.field public a:Lwy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final i(Lqy;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/FrameLayout;Z)V
    .locals 6

    .line 1
    iget-object v0, p1, Lqy;->a:Loy;

    .line 2
    .line 3
    iget-object v1, p1, Lqy;->b:Loy;

    .line 4
    .line 5
    const v2, 0x7f1303d4

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-static {v0, v5, v4, v3, v4}, Loy;->title$default(Loy;Landroid/content/Context;Lji;ILjava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {v1, p2, v4, v3, v4}, Loy;->title$default(Loy;Landroid/content/Context;Lji;ILjava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/4 p3, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move p3, p2

    .line 62
    :goto_2
    invoke-virtual {p4, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    const/high16 p3, 0x3f000000    # 0.5f

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/high16 p3, 0x3f800000    # 1.0f

    .line 71
    .line 72
    :goto_3
    invoke-virtual {p4, p3}, Landroid/view/View;->setAlpha(F)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p5, v0}, Luy;->j(Lcom/google/android/material/button/MaterialButton;Loy;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p6, v1}, Luy;->j(Lcom/google/android/material/button/MaterialButton;Loy;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const p3, 0x7f0704ba

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-virtual {p1}, Lqy;->a()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    mul-int/2addr p1, p0

    .line 101
    invoke-virtual {p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-eqz p0, :cond_6

    .line 106
    .line 107
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 108
    .line 109
    if-eqz p8, :cond_4

    .line 110
    .line 111
    move p3, p2

    .line 112
    goto :goto_4

    .line 113
    :cond_4
    move p3, p1

    .line 114
    :goto_4
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 115
    .line 116
    .line 117
    if-eqz p8, :cond_5

    .line 118
    .line 119
    move p2, p1

    .line 120
    :cond_5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p7, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    const-string p0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 128
    .line 129
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final j(Lcom/google/android/material/button/MaterialButton;Loy;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {p1, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 8
    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {p2}, Loy;->getTone()Lry;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lvy;->b:[I

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    aget v1, v2, v1

    .line 24
    .line 25
    if-eq v1, v0, :cond_4

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-eq v1, v0, :cond_3

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    if-ne v1, v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lsz8;->x(Landroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lsz8;->r(Landroid/content/Context;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lsz8;->w(Landroid/content/Context;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p2}, Loy;->getIconRes()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final k()Lwy;
    .locals 0

    .line 1
    iget-object p0, p0, Luy;->a:Lwy;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Required value was null."

    .line 7
    .line 8
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final l()V
    .locals 19

    .line 1
    sget-object v0, Lxy;->Right:Lxy;

    .line 2
    .line 3
    invoke-static {v0}, Lho6;->o(Lxy;)Lqy;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v3, v0, Lwy;->x:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v4, v0, Lwy;->G:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v5, v0, Lwy;->y:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v6, v0, Lwy;->q:Lcom/google/android/material/button/MaterialButton;

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v7, v0, Lwy;->r:Lcom/google/android/material/button/MaterialButton;

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v8, v0, Lwy;->p:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    move-object/from16 v1, p0

    .line 45
    .line 46
    invoke-virtual/range {v1 .. v9}, Luy;->i(Lqy;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/FrameLayout;Z)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lxy;->Left:Lxy;

    .line 50
    .line 51
    invoke-static {v0}, Lho6;->o(Lxy;)Lqy;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v12, v0, Lwy;->f:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v13, v0, Lwy;->n:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v14, v0, Lwy;->k:Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v15, v0, Lwy;->c:Lcom/google/android/material/button/MaterialButton;

    .line 78
    .line 79
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v0, v0, Lwy;->d:Lcom/google/android/material/button/MaterialButton;

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Luy;->k()Lwy;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v1, v1, Lwy;->b:Landroid/widget/FrameLayout;

    .line 90
    .line 91
    const/16 v18, 0x1

    .line 92
    .line 93
    move-object/from16 v10, p0

    .line 94
    .line 95
    move-object/from16 v16, v0

    .line 96
    .line 97
    move-object/from16 v17, v1

    .line 98
    .line 99
    invoke-virtual/range {v10 .. v18}, Luy;->i(Lqy;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/FrameLayout;Z)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final m(Lxy;Luy$a;)V
    .locals 11

    .line 1
    invoke-static {p1}, Lho6;->o(Lxy;)Lqy;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    const/4 v7, 0x0

    .line 6
    invoke-static {v7}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Loy;->getEntries()Ljx2;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v0, Lvy;->a:[I

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    aget v0, v0, v2

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x2

    .line 28
    if-eq v0, v2, :cond_1

    .line 29
    .line 30
    if-ne v0, v3, :cond_0

    .line 31
    .line 32
    iget-object v0, v4, Lqy;->b:Loy;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v0, v4, Lqy;->a:Loy;

    .line 40
    .line 41
    :goto_0
    new-instance v2, Ljh6;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v5, 0x0

    .line 51
    if-gez v0, :cond_2

    .line 52
    .line 53
    move v0, v5

    .line 54
    :cond_2
    iput v0, v2, Ljh6;->a:I

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v6, Lhv1;

    .line 61
    .line 62
    const v8, 0x7f140160

    .line 63
    .line 64
    .line 65
    invoke-direct {v6, v0, v8}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 66
    .line 67
    .line 68
    new-instance v9, Ls35;

    .line 69
    .line 70
    invoke-direct {v9, v0, v8, v6, v7}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Luy$a;->Primary:Luy$a;

    .line 74
    .line 75
    if-ne p2, v0, :cond_3

    .line 76
    .line 77
    const v0, 0x7f130428

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const v0, 0x7f1304d2

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {v9, v0}, Lv75;->v(I)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    .line 89
    const/16 v6, 0xa

    .line 90
    .line 91
    invoke-static {v1, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_6

    .line 107
    .line 108
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    check-cast v8, Loy;

    .line 113
    .line 114
    if-eqz v8, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-static {v8, v10, v7, v3, v7}, Loy;->title$default(Loy;Landroid/content/Context;Lji;ILjava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-nez v8, :cond_5

    .line 125
    .line 126
    :cond_4
    const v8, 0x7f1303d4

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v8}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    new-array v3, v5, [Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, [Ljava/lang/CharSequence;

    .line 147
    .line 148
    iget v3, v2, Ljh6;->a:I

    .line 149
    .line 150
    new-instance v6, Lsy;

    .line 151
    .line 152
    invoke-direct {v6, v2, v5}, Lsy;-><init>(Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v0, v3, v6}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lty;

    .line 159
    .line 160
    move-object v6, p0

    .line 161
    move-object v5, p1

    .line 162
    move-object v3, p2

    .line 163
    invoke-direct/range {v0 .. v6}, Lty;-><init>(Ljava/util/ArrayList;Ljh6;Luy$a;Lqy;Lxy;Luy;)V

    .line 164
    .line 165
    .line 166
    const p0, 0x7f1303e6

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, p0, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    const p0, 0x7f1300f1

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, p0, v7}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ls35;->m()Lwa;

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0d002e

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
    const v1, 0x7f0a02e2

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
    check-cast v5, Landroid/widget/FrameLayout;

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    const v1, 0x7f0a02e3

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v6, v2

    .line 36
    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    const v1, 0x7f0a02e4

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v7, v2

    .line 48
    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 49
    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    const v1, 0x7f0a02e5

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v8, v2

    .line 60
    check-cast v8, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    if-eqz v8, :cond_0

    .line 63
    .line 64
    const v1, 0x7f0a02e6

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move-object v9, v2

    .line 72
    check-cast v9, Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v9, :cond_0

    .line 75
    .line 76
    const v1, 0x7f0a02e7

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v10, v2

    .line 84
    check-cast v10, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    if-eqz v10, :cond_0

    .line 87
    .line 88
    const v1, 0x7f0a02e8

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    move-object v11, v2

    .line 96
    check-cast v11, Landroid/widget/TextView;

    .line 97
    .line 98
    if-eqz v11, :cond_0

    .line 99
    .line 100
    const v1, 0x7f0a02e9

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 108
    .line 109
    if-eqz v2, :cond_0

    .line 110
    .line 111
    const v1, 0x7f0a03d1

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    move-object v12, v2

    .line 119
    check-cast v12, Landroid/widget/FrameLayout;

    .line 120
    .line 121
    if-eqz v12, :cond_0

    .line 122
    .line 123
    const v1, 0x7f0a03d2

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    move-object v13, v2

    .line 131
    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 132
    .line 133
    if-eqz v13, :cond_0

    .line 134
    .line 135
    const v1, 0x7f0a03d3

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    move-object v14, v2

    .line 143
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 144
    .line 145
    if-eqz v14, :cond_0

    .line 146
    .line 147
    const v1, 0x7f0a03d4

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    move-object v15, v2

    .line 155
    check-cast v15, Landroid/widget/LinearLayout;

    .line 156
    .line 157
    if-eqz v15, :cond_0

    .line 158
    .line 159
    const v1, 0x7f0a03d5

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object/from16 v16, v2

    .line 167
    .line 168
    check-cast v16, Landroid/widget/TextView;

    .line 169
    .line 170
    if-eqz v16, :cond_0

    .line 171
    .line 172
    const v1, 0x7f0a03d6

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    move-object/from16 v17, v2

    .line 180
    .line 181
    check-cast v17, Landroid/widget/LinearLayout;

    .line 182
    .line 183
    if-eqz v17, :cond_0

    .line 184
    .line 185
    const v1, 0x7f0a03d7

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    move-object/from16 v18, v2

    .line 193
    .line 194
    check-cast v18, Landroid/widget/TextView;

    .line 195
    .line 196
    if-eqz v18, :cond_0

    .line 197
    .line 198
    const v1, 0x7f0a03d9

    .line 199
    .line 200
    .line 201
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 206
    .line 207
    if-eqz v2, :cond_0

    .line 208
    .line 209
    new-instance v3, Lwy;

    .line 210
    .line 211
    move-object v4, v0

    .line 212
    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 213
    .line 214
    invoke-direct/range {v3 .. v18}, Lwy;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/FrameLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 215
    .line 216
    .line 217
    move-object/from16 v0, p0

    .line 218
    .line 219
    iput-object v3, v0, Luy;->a:Lwy;

    .line 220
    .line 221
    invoke-virtual {v0}, Luy;->k()Lwy;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget-object v0, v0, Lwy;->a:Landroidx/core/widget/NestedScrollView;

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    return-object v0

    .line 231
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const-string v1, "Missing required view with ID: "

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const/4 v0, 0x0

    .line 249
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Luy;->a:Lwy;

    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/o;->onDestroyView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Luy;->k()Lwy;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lwy;->a:Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x7

    .line 14
    invoke-static {p1, p2}, Lsz8;->b(Landroid/view/View;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Luy;->k()Lwy;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lwy;->t:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    new-instance p2, Lnf;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p2, p0, v0}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Luy;->k()Lwy;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lwy;->y:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    new-instance p2, Lg7;

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-direct {p2, p0, v1}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Luy;->k()Lwy;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Lwy;->e:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    new-instance p2, Lh7;

    .line 54
    .line 55
    invoke-direct {p2, p0, v1}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Luy;->k()Lwy;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p1, p1, Lwy;->k:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    new-instance p2, Lof;

    .line 68
    .line 69
    invoke-direct {p2, p0, v0}, Lof;-><init>(Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Luy;->l()V

    .line 76
    .line 77
    .line 78
    return-void
.end method
