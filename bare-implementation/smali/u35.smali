.class public Lu35;
.super Lho;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Leu4;


# instance fields
.field public final G:Z

.field public H:Lka;

.field public final I:Lmu0;

.field public final J:Lk28;

.field public final K:Ljk8;

.field public final L:Z

.field public final M:Z

.field public final N:Lgv7;

.field public O:Z

.field public P:Z

.field public k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field public n:Landroid/widget/FrameLayout;

.field public p:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public q:Landroid/widget/FrameLayout;

.field public r:Z

.field public t:Z

.field public x:Z

.field public y:Lnu0;


# direct methods
.method public synthetic constructor <init>(Lk28;Ljk8;I)V
    .locals 1

    and-int/lit8 p3, p3, 0x4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 130
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lu35;-><init>(Lk28;Ljk8;ZZ)V

    return-void
.end method

.method public constructor <init>(Lk28;Ljk8;ZZ)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/util/TypedValue;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f04008f

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const v0, 0x7f140359

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-direct {p0, p1, v0}, Lho;-><init>(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    iput-boolean v3, p0, Lu35;->r:Z

    .line 36
    .line 37
    iput-boolean v3, p0, Lu35;->t:Z

    .line 38
    .line 39
    new-instance v0, Lmu0;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lmu0;-><init>(Lu35;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lu35;->I:Lmu0;

    .line 45
    .line 46
    invoke-virtual {p0}, Lho;->d()Lnn;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v3}, Lnn;->h(I)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const v1, 0x7f040205

    .line 62
    .line 63
    .line 64
    filled-new-array {v1}, [I

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iput-boolean v3, p0, Lu35;->G:Z

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    filled-new-array {v1}, [I

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    iput-boolean v1, p0, Lu35;->G:Z

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lu35;->J:Lk28;

    .line 108
    .line 109
    iput-object p2, p0, Lu35;->K:Ljk8;

    .line 110
    .line 111
    iput-boolean p3, p0, Lu35;->L:Z

    .line 112
    .line 113
    iput-boolean p4, p0, Lu35;->M:Z

    .line 114
    .line 115
    new-instance p1, Lej;

    .line 116
    .line 117
    const/16 p2, 0x1c

    .line 118
    .line 119
    invoke-direct {p1, p0, p2}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 120
    .line 121
    .line 122
    new-instance p2, Lgv7;

    .line 123
    .line 124
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 125
    .line 126
    .line 127
    iput-object p2, p0, Lu35;->N:Lgv7;

    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lu35;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lu35;->P:Z

    .line 3
    .line 4
    invoke-super {p0}, Lho;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu35;->n:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d007d

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lu35;->n:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    const v1, 0x7f0a03af

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/core/view/insets/ProtectionLayout;

    .line 29
    .line 30
    iget-object v0, p0, Lu35;->n:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    const v1, 0x7f0a01a9

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 40
    .line 41
    iput-object v0, p0, Lu35;->p:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 42
    .line 43
    iget-object v0, p0, Lu35;->n:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    const v1, 0x7f0a01cd

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/FrameLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lu35;->q:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a0:Ljava/util/ArrayList;

    .line 63
    .line 64
    iget-object v1, p0, Lu35;->I:Lmu0;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_0
    iget-object v0, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 76
    .line 77
    iget-boolean v1, p0, Lu35;->r:Z

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J(Z)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lka;

    .line 83
    .line 84
    iget-object v1, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 85
    .line 86
    iget-object v2, p0, Lu35;->q:Landroid/widget/FrameLayout;

    .line 87
    .line 88
    invoke-direct {v0, v1, v2}, Lka;-><init>(La85;Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lu35;->H:Lka;

    .line 92
    .line 93
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-super {p0}, Lko1;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:I

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lu35;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lu35;->n:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    const v1, 0x7f0a01a9

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_0
    iget-boolean p2, p0, Lu35;->G:Z

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget-object p2, p0, Lu35;->n:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    new-instance v2, Ltr9;

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    invoke-direct {v2, p0, v3}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-static {p2, v2}, Luk8;->c(Landroid/view/View;Lls5;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p2, p0, Lu35;->q:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lu35;->q:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    if-nez p3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    const p1, 0x7f0a04ec

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Lju0;

    .line 69
    .line 70
    invoke-direct {p2, p0, v1}, Lju0;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lu35;->q:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    new-instance p2, Lku0;

    .line 79
    .line 80
    invoke-direct {p2, p0}, Lku0;-><init>(Lu35;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2}, Ldl8;->n(Landroid/view/View;Lw5;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lu35;->q:Landroid/widget/FrameLayout;

    .line 87
    .line 88
    new-instance p2, Llu0;

    .line 89
    .line 90
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lu35;->n:Landroid/widget/FrameLayout;

    .line 97
    .line 98
    return-object p0
.end method

.method public final isShowing()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lu35;->P:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-boolean v2, p0, Lu35;->G:Z

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v4, 0x23

    .line 19
    .line 20
    if-ge v2, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v2, v1

    .line 28
    :goto_0
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v4, 0xff

    .line 33
    .line 34
    if-ge v2, v4, :cond_1

    .line 35
    .line 36
    move v2, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v2, v1

    .line 39
    :goto_1
    iget-object v4, p0, Lu35;->n:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    xor-int/lit8 v5, v2, 0x1

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v4, p0, Lu35;->p:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    xor-int/lit8 v5, v2, 0x1

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 55
    .line 56
    .line 57
    :cond_3
    xor-int/2addr v2, v3

    .line 58
    invoke-static {v0, v2}, Lw13;->r(Landroid/view/Window;Z)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lu35;->y:Lnu0;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Lnu0;->e(Landroid/view/Window;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object v0, p0, Lu35;->H:Lka;

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    iget-object v2, v0, Lka;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Landroid/view/View;

    .line 76
    .line 77
    iget-boolean p0, p0, Lu35;->r:Z

    .line 78
    .line 79
    iget-object v3, v0, Lka;->a:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v3, Lc85;

    .line 82
    .line 83
    if-eqz p0, :cond_6

    .line 84
    .line 85
    if-eqz v3, :cond_7

    .line 86
    .line 87
    iget-object p0, v0, Lka;->b:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, La85;

    .line 90
    .line 91
    invoke-virtual {v3, p0, v2, v1}, Lc85;->b(La85;Landroid/view/View;Z)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_6
    if-eqz v3, :cond_7

    .line 96
    .line 97
    invoke-virtual {v3, v2}, Lc85;->c(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    :cond_7
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lho;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v0, 0x23

    .line 13
    .line 14
    if-ge p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/high16 p1, -0x80000000

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 23
    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setLayout(II)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu35;->y:Lnu0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lnu0;->e(Landroid/view/Window;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Lu35;->H:Lka;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lka;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lc85;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lka;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lc85;->c(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final onLifecycleDestroy()V
    .locals 0
    .annotation runtime Lct5;
        value = .enum Lrt4;->ON_DESTROY:Lrt4;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu35;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu35;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "behavior"

    .line 29
    .line 30
    invoke-static {v0, v1}, Ltu0;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    int-to-float p0, p0

    .line 64
    const v1, 0x3f333333    # 0.7f

    .line 65
    .line 66
    .line 67
    mul-float/2addr p0, v1

    .line 68
    float-to-int p0, p0

    .line 69
    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    :cond_1
    return-void
.end method

.method public final setCancelable(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lu35;->r:Z

    .line 5
    .line 6
    if-eq v0, p1, :cond_3

    .line 7
    .line 8
    iput-boolean p1, p0, Lu35;->r:Z

    .line 9
    .line 10
    iget-object v0, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, Lu35;->H:Lka;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p1, Lka;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroid/view/View;

    .line 31
    .line 32
    iget-boolean p0, p0, Lu35;->r:Z

    .line 33
    .line 34
    iget-object v1, p1, Lka;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lc85;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object p0, p1, Lka;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, La85;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {v1, p0, v0, p1}, Lc85;->b(La85;Landroid/view/View;Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lc85;->c(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_0
    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Lu35;->r:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iput-boolean v0, p0, Lu35;->r:Z

    .line 12
    .line 13
    :cond_0
    iput-boolean p1, p0, Lu35;->t:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lu35;->x:Z

    .line 16
    .line 17
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0, p1, v0}, Lu35;->i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-super {p0, p1}, Lho;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lu35;->i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-super {p0, p1}, Lho;->setContentView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lu35;->i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-super {p0, p1}, Lho;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu35;->P:Z

    .line 3
    .line 4
    iget-object v1, p0, Lu35;->J:Lk28;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v1}, Lho1;->getLifecycle()Lhu4;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, p0}, Lhu4;->a(Leu4;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v2, p0, Lu35;->O:Z

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    iput-boolean v0, p0, Lu35;->O:Z

    .line 26
    .line 27
    iget-object v2, p0, Lu35;->K:Ljk8;

    .line 28
    .line 29
    invoke-interface {v2}, Ljk8;->getRoot()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v2}, Lu35;->setContentView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_2
    invoke-virtual {v1}, Lk28;->v()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    sget-object v3, Lh28;->Companion:Lf28;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lf28;->e()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    const v3, 0x7f04008c

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v3}, Lsz8;->y(Landroid/content/Context;I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    sget-object v1, Lvs7;->c:Lvs7;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1, v3}, Lvs7;->a(Landroid/content/Context;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 84
    .line 85
    .line 86
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 87
    .line 88
    .line 89
    iget-boolean v1, p0, Lu35;->L:Z

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    iget-object v1, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 94
    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0}, Lu35;->f()V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v1, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 101
    .line 102
    const/4 v2, 0x3

    .line 103
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 107
    .line 108
    if-nez v1, :cond_5

    .line 109
    .line 110
    invoke-virtual {p0}, Lu35;->f()V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-object v1, p0, Lu35;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 114
    .line 115
    iput-boolean v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    .line 116
    .line 117
    :cond_6
    iget-boolean v0, p0, Lu35;->M:Z

    .line 118
    .line 119
    if-eqz v0, :cond_9

    .line 120
    .line 121
    iget-object p0, p0, Lu35;->N:Lgv7;

    .line 122
    .line 123
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/FrameLayout;

    .line 128
    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_1

    .line 136
    :cond_7
    const/4 v0, 0x0

    .line 137
    :goto_1
    if-eqz v0, :cond_8

    .line 138
    .line 139
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 148
    .line 149
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    .line 151
    :cond_8
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    check-cast p0, Landroid/widget/FrameLayout;

    .line 156
    .line 157
    if-eqz p0, :cond_9

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    :cond_9
    :goto_2
    return-void
.end method
