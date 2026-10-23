.class public abstract Llg7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lq86;

.field public static final b:Lq86;

.field public static final c:Lq86;

.field public static final d:Lq86;

.field public static final e:Lq86;

.field public static final f:Lq86;

.field public static final g:Lq86;

.field public static final h:Lu00;

.field public static i:Lu00;

.field public static final j:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lq86;

    .line 2
    .line 3
    const-string v1, "list-item-type"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lq86;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Llg7;->a:Lq86;

    .line 9
    .line 10
    new-instance v0, Lq86;

    .line 11
    .line 12
    const-string v1, "bullet-list-item-level"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lq86;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Llg7;->b:Lq86;

    .line 18
    .line 19
    new-instance v0, Lq86;

    .line 20
    .line 21
    const-string v1, "ordered-list-item-number"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lq86;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Llg7;->c:Lq86;

    .line 27
    .line 28
    new-instance v0, Lq86;

    .line 29
    .line 30
    const-string v1, "heading-level"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lq86;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Llg7;->d:Lq86;

    .line 36
    .line 37
    new-instance v0, Lq86;

    .line 38
    .line 39
    const-string v1, "link-destination"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lq86;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Llg7;->e:Lq86;

    .line 45
    .line 46
    new-instance v0, Lq86;

    .line 47
    .line 48
    const-string v1, "paragraph-is-in-tight-list"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lq86;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Llg7;->f:Lq86;

    .line 54
    .line 55
    new-instance v0, Lq86;

    .line 56
    .line 57
    const-string v1, "code-block-info"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lq86;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Llg7;->g:Lq86;

    .line 63
    .line 64
    new-instance v0, Lu00;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x5

    .line 68
    invoke-direct {v0, v2, v1, v1, v1}, Lu00;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Llg7;->h:Lu00;

    .line 72
    .line 73
    const v0, 0x1010448

    .line 74
    .line 75
    .line 76
    filled-new-array {v0}, [I

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Llg7;->j:[I

    .line 81
    .line 82
    return-void
.end method

.method public static A(II[B[S[S)V
    .locals 9

    .line 1
    add-int v0, p0, p0

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    new-array v2, v1, [S

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v4, p0, :cond_1

    .line 10
    .line 11
    move v5, v3

    .line 12
    move v6, v5

    .line 13
    :goto_1
    if-gt v5, v4, :cond_0

    .line 14
    .line 15
    aget-short v7, p4, v5

    .line 16
    .line 17
    sub-int v8, v4, v5

    .line 18
    .line 19
    aget-byte v8, p2, v8

    .line 20
    .line 21
    mul-int/2addr v7, v8

    .line 22
    add-int/2addr v7, v6

    .line 23
    invoke-static {v7, p1}, Llg7;->q(II)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    int-to-short v6, v6

    .line 28
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    aput-short v6, v2, v4

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v4, p0

    .line 37
    :goto_2
    if-ge v4, v1, :cond_3

    .line 38
    .line 39
    sub-int v5, v4, p0

    .line 40
    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    move v6, v3

    .line 44
    :goto_3
    if-ge v5, p0, :cond_2

    .line 45
    .line 46
    aget-short v7, p4, v5

    .line 47
    .line 48
    sub-int v8, v4, v5

    .line 49
    .line 50
    aget-byte v8, p2, v8

    .line 51
    .line 52
    mul-int/2addr v7, v8

    .line 53
    add-int/2addr v7, v6

    .line 54
    invoke-static {v7, p1}, Llg7;->q(II)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    int-to-short v6, v6

    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    aput-short v6, v2, v4

    .line 63
    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    add-int/lit8 v0, v0, -0x2

    .line 68
    .line 69
    :goto_4
    if-lt v0, p0, :cond_4

    .line 70
    .line 71
    sub-int p2, v0, p0

    .line 72
    .line 73
    aget-short p4, v2, p2

    .line 74
    .line 75
    aget-short v1, v2, v0

    .line 76
    .line 77
    add-int/2addr p4, v1

    .line 78
    invoke-static {p4, p1}, Llg7;->q(II)I

    .line 79
    .line 80
    .line 81
    move-result p4

    .line 82
    int-to-short p4, p4

    .line 83
    aput-short p4, v2, p2

    .line 84
    .line 85
    add-int/lit8 p2, p2, 0x1

    .line 86
    .line 87
    aget-short p4, v2, p2

    .line 88
    .line 89
    aget-short v1, v2, v0

    .line 90
    .line 91
    add-int/2addr p4, v1

    .line 92
    invoke-static {p4, p1}, Llg7;->q(II)I

    .line 93
    .line 94
    .line 95
    move-result p4

    .line 96
    int-to-short p4, p4

    .line 97
    aput-short p4, v2, p2

    .line 98
    .line 99
    add-int/lit8 v0, v0, -0x1

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    :goto_5
    if-ge v3, p0, :cond_5

    .line 103
    .line 104
    aget-short p1, v2, v3

    .line 105
    .line 106
    aput-short p1, p3, v3

    .line 107
    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_5
    return-void
.end method

.method public static B([II)I
    .locals 3

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    if-ge v0, p1, :cond_0

    .line 6
    .line 7
    aget v2, p0, v0

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    const v2, 0x3fffffff    # 1.9999999f

    .line 11
    .line 12
    .line 13
    and-int/2addr v2, v1

    .line 14
    aput v2, p0, v0

    .line 15
    .line 16
    shr-int/lit8 v1, v1, 0x1e

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    aget v0, p0, p1

    .line 22
    .line 23
    sub-int/2addr v1, v0

    .line 24
    aput v1, p0, p1

    .line 25
    .line 26
    shr-int/lit8 p0, v1, 0x1e

    .line 27
    .line 28
    return p0
.end method

.method public static C(Lcom/google/android/material/appbar/AppBarLayout;F)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0b0003

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Landroid/animation/StateListAnimator;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 15
    .line 16
    .line 17
    const v2, 0x7f040562

    .line 18
    .line 19
    .line 20
    neg-int v2, v2

    .line 21
    const v3, 0x101009e

    .line 22
    .line 23
    .line 24
    const v4, 0x7f040561

    .line 25
    .line 26
    .line 27
    filled-new-array {v3, v4, v2}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v4, 0x1

    .line 32
    new-array v5, v4, [F

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    aput v7, v5, v6

    .line 37
    .line 38
    const-string v8, "elevation"

    .line 39
    .line 40
    invoke-static {p0, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    int-to-long v9, v0

    .line 45
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 50
    .line 51
    .line 52
    filled-new-array {v3}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-array v2, v4, [F

    .line 57
    .line 58
    aput p1, v2, v6

    .line 59
    .line 60
    invoke-static {p0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, v0, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 69
    .line 70
    .line 71
    new-array p1, v6, [I

    .line 72
    .line 73
    new-array v0, v4, [F

    .line 74
    .line 75
    aput v7, v0, v6

    .line 76
    .line 77
    invoke-static {p0, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-wide/16 v2, 0x0

    .line 82
    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, p1, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static D(Loe;F)V
    .locals 5

    .line 1
    iget-object v0, p0, Loe;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lmq6;

    .line 4
    .line 5
    iget-object v1, p0, Loe;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lr21;

    .line 8
    .line 9
    invoke-virtual {v1}, Lr21;->getUseCompatPadding()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Lr21;->getPreventCornerOverlap()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget v4, v0, Lmq6;->e:F

    .line 18
    .line 19
    cmpl-float v4, p1, v4

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    iget-boolean v4, v0, Lmq6;->f:Z

    .line 24
    .line 25
    if-ne v4, v2, :cond_0

    .line 26
    .line 27
    iget-boolean v4, v0, Lmq6;->g:Z

    .line 28
    .line 29
    if-ne v4, v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput p1, v0, Lmq6;->e:F

    .line 33
    .line 34
    iput-boolean v2, v0, Lmq6;->f:Z

    .line 35
    .line 36
    iput-boolean v3, v0, Lmq6;->g:Z

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {v0, p1}, Lmq6;->b(Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v1}, Lr21;->getUseCompatPadding()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1, p1, p1, p1}, Loe;->j(IIII)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object p1, p0, Loe;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lmq6;

    .line 59
    .line 60
    iget v0, p1, Lmq6;->e:F

    .line 61
    .line 62
    iget p1, p1, Lmq6;->a:F

    .line 63
    .line 64
    invoke-virtual {v1}, Lr21;->getPreventCornerOverlap()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v0, p1, v2}, Lnq6;->a(FFZ)F

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    float-to-double v2, v2

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    double-to-int v2, v2

    .line 78
    invoke-virtual {v1}, Lr21;->getPreventCornerOverlap()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v0, p1, v1}, Lnq6;->b(FFZ)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    float-to-double v0, p1

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    double-to-int p1, v0

    .line 92
    invoke-virtual {p0, v2, p1, v2, p1}, Loe;->j(IIII)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static E(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 29
    .line 30
    const-string v0, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 36
    .line 37
    const-string p1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    .line 38
    .line 39
    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static F(Lsa1;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->getEntries()Ljx2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lz3;

    .line 24
    .line 25
    new-instance v3, Lw3;

    .line 26
    .line 27
    invoke-direct {v3, v2}, Lw3;-><init>(Lz3;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 41
    .line 42
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->toDisplayString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v2, 0x0

    .line 51
    new-array v2, v2, [Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, [Ljava/lang/String;

    .line 58
    .line 59
    new-instance v2, Llh6;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, v2, Llh6;->a:Ljava/lang/Object;

    .line 65
    .line 66
    new-instance v3, Lhv1;

    .line 67
    .line 68
    const v4, 0x7f140160

    .line 69
    .line 70
    .line 71
    invoke-direct {v3, p0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 72
    .line 73
    .line 74
    new-instance v5, Ls35;

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-direct {v5, p0, v4, v3, v6}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 78
    .line 79
    .line 80
    const p0, 0x7f13055d

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, p0}, Lv75;->v(I)V

    .line 84
    .line 85
    .line 86
    check-cast v1, [Ljava/lang/CharSequence;

    .line 87
    .line 88
    check-cast v0, Lkx2;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Lkx2;->indexOf(Ljava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    new-instance p1, Lb52;

    .line 95
    .line 96
    const/4 v3, 0x3

    .line 97
    invoke-direct {p1, v3, v2, v0}, Lb52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v1, p0, p1}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Ltb3;

    .line 104
    .line 105
    const/4 p1, 0x2

    .line 106
    invoke-direct {p0, p1, p2, v2}, Ltb3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const p1, 0x7f1303e6

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, p1, p0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    const p0, 0x7f1300f1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, p0, v6}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public static G(Lil0;Llk3;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lqo3;->k:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance p2, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 20
    .line 21
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "EXTRA_FOLDER_BATCH_ACTION_ITEM"

    .line 25
    .line 26
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static final H(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lbn6;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p0, Lbn6;

    .line 7
    .line 8
    iget-object p0, p0, Lbn6;->a:Ljava/lang/Throwable;

    .line 9
    .line 10
    throw p0
.end method

.method public static I(J)I
    .locals 3

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-long v1, v0

    .line 3
    cmp-long p0, v1, p0

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const-string p0, "value out of integer range"

    .line 9
    .line 10
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static J(II[I[I[I[I)V
    .locals 34

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, p4, v1

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    aget v4, p4, v3

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    aget v5, p4, v5

    .line 11
    .line 12
    const/4 v6, 0x3

    .line 13
    aget v6, p4, v6

    .line 14
    .line 15
    add-int/lit8 v7, v0, -0x1

    .line 16
    .line 17
    aget v8, p2, v7

    .line 18
    .line 19
    shr-int/lit8 v8, v8, 0x1f

    .line 20
    .line 21
    aget v9, p3, v7

    .line 22
    .line 23
    shr-int/lit8 v9, v9, 0x1f

    .line 24
    .line 25
    and-int v10, v2, v8

    .line 26
    .line 27
    and-int v11, v4, v9

    .line 28
    .line 29
    add-int/2addr v10, v11

    .line 30
    and-int/2addr v8, v5

    .line 31
    and-int/2addr v9, v6

    .line 32
    add-int/2addr v8, v9

    .line 33
    aget v9, p5, v1

    .line 34
    .line 35
    aget v11, p2, v1

    .line 36
    .line 37
    aget v1, p3, v1

    .line 38
    .line 39
    int-to-long v12, v2

    .line 40
    int-to-long v14, v11

    .line 41
    mul-long v16, v12, v14

    .line 42
    .line 43
    int-to-long v3, v4

    .line 44
    move-wide/from16 v18, v3

    .line 45
    .line 46
    int-to-long v2, v1

    .line 47
    mul-long v20, v18, v2

    .line 48
    .line 49
    move-wide/from16 v22, v2

    .line 50
    .line 51
    add-long v1, v20, v16

    .line 52
    .line 53
    int-to-long v3, v5

    .line 54
    mul-long/2addr v14, v3

    .line 55
    int-to-long v5, v6

    .line 56
    mul-long v16, v5, v22

    .line 57
    .line 58
    add-long v14, v16, v14

    .line 59
    .line 60
    long-to-int v11, v1

    .line 61
    mul-int v11, v11, p1

    .line 62
    .line 63
    add-int/2addr v11, v10

    .line 64
    const v16, 0x3fffffff    # 1.9999999f

    .line 65
    .line 66
    .line 67
    and-int v11, v11, v16

    .line 68
    .line 69
    sub-int/2addr v10, v11

    .line 70
    long-to-int v11, v14

    .line 71
    mul-int v11, v11, p1

    .line 72
    .line 73
    add-int/2addr v11, v8

    .line 74
    and-int v11, v11, v16

    .line 75
    .line 76
    sub-int/2addr v8, v11

    .line 77
    move-wide/from16 v20, v1

    .line 78
    .line 79
    int-to-long v1, v9

    .line 80
    int-to-long v9, v10

    .line 81
    mul-long v22, v1, v9

    .line 82
    .line 83
    add-long v22, v22, v20

    .line 84
    .line 85
    move-wide/from16 v20, v1

    .line 86
    .line 87
    int-to-long v1, v8

    .line 88
    mul-long v20, v20, v1

    .line 89
    .line 90
    add-long v20, v20, v14

    .line 91
    .line 92
    const/16 v8, 0x1e

    .line 93
    .line 94
    shr-long v14, v22, v8

    .line 95
    .line 96
    shr-long v20, v20, v8

    .line 97
    .line 98
    move-wide/from16 v28, v14

    .line 99
    .line 100
    move-wide/from16 v30, v20

    .line 101
    .line 102
    const/4 v11, 0x1

    .line 103
    :goto_0
    if-ge v11, v0, :cond_0

    .line 104
    .line 105
    aget v14, p5, v11

    .line 106
    .line 107
    aget v15, p2, v11

    .line 108
    .line 109
    move/from16 p1, v8

    .line 110
    .line 111
    aget v8, p3, v11

    .line 112
    .line 113
    move-wide/from16 v20, v1

    .line 114
    .line 115
    int-to-long v0, v15

    .line 116
    mul-long v22, v12, v0

    .line 117
    .line 118
    move-wide/from16 v32, v0

    .line 119
    .line 120
    int-to-long v0, v8

    .line 121
    mul-long v24, v18, v0

    .line 122
    .line 123
    add-long v26, v24, v22

    .line 124
    .line 125
    int-to-long v14, v14

    .line 126
    move-wide/from16 v24, v9

    .line 127
    .line 128
    move-wide/from16 v22, v14

    .line 129
    .line 130
    invoke-static/range {v22 .. v29}, Ldj7;->d(JJJJ)J

    .line 131
    .line 132
    .line 133
    move-result-wide v8

    .line 134
    move-wide/from16 v14, v24

    .line 135
    .line 136
    mul-long v24, v3, v32

    .line 137
    .line 138
    mul-long/2addr v0, v5

    .line 139
    add-long v28, v0, v24

    .line 140
    .line 141
    move-wide/from16 v26, v20

    .line 142
    .line 143
    move-wide/from16 v24, v22

    .line 144
    .line 145
    invoke-static/range {v24 .. v31}, Ldj7;->d(JJJJ)J

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    add-int/lit8 v2, v11, -0x1

    .line 150
    .line 151
    long-to-int v10, v8

    .line 152
    and-int v10, v10, v16

    .line 153
    .line 154
    aput v10, p2, v2

    .line 155
    .line 156
    shr-long v28, v8, p1

    .line 157
    .line 158
    long-to-int v8, v0

    .line 159
    and-int v8, v8, v16

    .line 160
    .line 161
    aput v8, p3, v2

    .line 162
    .line 163
    shr-long v30, v0, p1

    .line 164
    .line 165
    add-int/lit8 v11, v11, 0x1

    .line 166
    .line 167
    move/from16 v0, p0

    .line 168
    .line 169
    move/from16 v8, p1

    .line 170
    .line 171
    move-wide v9, v14

    .line 172
    move-wide/from16 v1, v26

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_0
    move-wide/from16 v0, v28

    .line 176
    .line 177
    move-wide/from16 v8, v30

    .line 178
    .line 179
    long-to-int v0, v0

    .line 180
    aput v0, p2, v7

    .line 181
    .line 182
    long-to-int v0, v8

    .line 183
    aput v0, p3, v7

    .line 184
    .line 185
    return-void
.end method

.method public static K(I[I[I[I)V
    .locals 28

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, p3, v1

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    aget v4, p3, v3

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    aget v5, p3, v5

    .line 11
    .line 12
    const/4 v6, 0x3

    .line 13
    aget v6, p3, v6

    .line 14
    .line 15
    aget v7, p1, v1

    .line 16
    .line 17
    aget v1, p2, v1

    .line 18
    .line 19
    int-to-long v8, v2

    .line 20
    int-to-long v10, v7

    .line 21
    mul-long v12, v8, v10

    .line 22
    .line 23
    int-to-long v14, v4

    .line 24
    int-to-long v1, v1

    .line 25
    mul-long v16, v14, v1

    .line 26
    .line 27
    add-long v16, v16, v12

    .line 28
    .line 29
    int-to-long v4, v5

    .line 30
    mul-long/2addr v10, v4

    .line 31
    int-to-long v6, v6

    .line 32
    mul-long/2addr v1, v6

    .line 33
    add-long/2addr v1, v10

    .line 34
    const/16 v10, 0x1e

    .line 35
    .line 36
    shr-long v11, v16, v10

    .line 37
    .line 38
    shr-long/2addr v1, v10

    .line 39
    move-wide/from16 v24, v1

    .line 40
    .line 41
    move v1, v3

    .line 42
    move-wide/from16 v20, v11

    .line 43
    .line 44
    :goto_0
    if-ge v1, v0, :cond_0

    .line 45
    .line 46
    aget v2, p1, v1

    .line 47
    .line 48
    aget v11, p2, v1

    .line 49
    .line 50
    int-to-long v12, v2

    .line 51
    mul-long v18, v8, v12

    .line 52
    .line 53
    move v2, v3

    .line 54
    move-wide/from16 v26, v4

    .line 55
    .line 56
    int-to-long v3, v11

    .line 57
    move-wide/from16 v16, v3

    .line 58
    .line 59
    invoke-static/range {v14 .. v21}, Ldj7;->d(JJJJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    mul-long v22, v26, v12

    .line 64
    .line 65
    move-wide/from16 v18, v6

    .line 66
    .line 67
    move-wide/from16 v20, v16

    .line 68
    .line 69
    invoke-static/range {v18 .. v25}, Ldj7;->d(JJJJ)J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    add-int/lit8 v7, v1, -0x1

    .line 74
    .line 75
    long-to-int v11, v3

    .line 76
    const v12, 0x3fffffff    # 1.9999999f

    .line 77
    .line 78
    .line 79
    and-int/2addr v11, v12

    .line 80
    aput v11, p1, v7

    .line 81
    .line 82
    shr-long v20, v3, v10

    .line 83
    .line 84
    long-to-int v3, v5

    .line 85
    and-int/2addr v3, v12

    .line 86
    aput v3, p2, v7

    .line 87
    .line 88
    shr-long v24, v5, v10

    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    move v3, v2

    .line 93
    move-wide/from16 v6, v18

    .line 94
    .line 95
    move-wide/from16 v4, v26

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    move v2, v3

    .line 99
    move-wide/from16 v11, v20

    .line 100
    .line 101
    move-wide/from16 v3, v24

    .line 102
    .line 103
    sub-int/2addr v0, v2

    .line 104
    long-to-int v1, v11

    .line 105
    aput v1, p1, v0

    .line 106
    .line 107
    long-to-int v1, v3

    .line 108
    aput v1, p2, v0

    .line 109
    .line 110
    return-void
.end method

.method public static L(Lpb9;)I
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v2, v0

    .line 25
    :goto_1
    add-int/2addr v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v1
.end method

.method public static M(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    move-object v5, v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, "@"

    .line 30
    .line 31
    invoke-static {v0, v1, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "com.google.common.base.Strings"

    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 42
    .line 43
    const-string v2, "Exception during lenientFormat for "

    .line 44
    .line 45
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v2, "com.google.common.base.Strings"

    .line 50
    .line 51
    const-string v3, "lenientToString"

    .line 52
    .line 53
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, " threw "

    .line 65
    .line 66
    const-string v2, ">"

    .line 67
    .line 68
    const-string v3, "<"

    .line 69
    .line 70
    invoke-static {v3, p0, v1, v0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public static N(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android-keystore://"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x13

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "key URI must start with android-keystore://"

    .line 23
    .line 24
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public static varargs O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    array-length v2, p1

    .line 8
    mul-int/lit8 v2, v2, 0x10

    .line 9
    .line 10
    add-int/2addr v2, v1

    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    array-length v3, p1

    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    .line 19
    const-string v3, "%s"

    .line 20
    .line 21
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, -0x1

    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v1, 0x1

    .line 32
    .line 33
    aget-object v1, p1, v1

    .line 34
    .line 35
    invoke-static {v1}, Llg7;->M(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v3, 0x2

    .line 43
    .line 44
    move v5, v2

    .line 45
    move v2, v1

    .line 46
    move v1, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    array-length p0, p1

    .line 56
    if-ge v1, p0, :cond_2

    .line 57
    .line 58
    const-string p0, " ["

    .line 59
    .line 60
    :goto_1
    array-length v2, p1

    .line 61
    if-ge v1, v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    aget-object p0, p1, v1

    .line 67
    .line 68
    invoke-static {p0}, Llg7;->M(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    const-string p0, ", "

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/16 p0, 0x5d

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public static P(I)V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 11
    .line 12
    shl-int/lit8 p0, p0, 0x3

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "invalid key size %d; only 128-bit and 256-bit AES keys are supported"

    .line 23
    .line 24
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(I[I[I)I
    .locals 4

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    if-ge v0, p0, :cond_0

    .line 6
    .line 7
    aget v2, p1, v0

    .line 8
    .line 9
    aget v3, p2, v0

    .line 10
    .line 11
    add-int/2addr v2, v3

    .line 12
    add-int/2addr v2, v1

    .line 13
    const v1, 0x3fffffff    # 1.9999999f

    .line 14
    .line 15
    .line 16
    and-int/2addr v1, v2

    .line 17
    aput v1, p1, v0

    .line 18
    .line 19
    shr-int/lit8 v1, v2, 0x1e

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    aget v0, p1, p0

    .line 25
    .line 26
    aget p2, p2, p0

    .line 27
    .line 28
    add-int/2addr v0, p2

    .line 29
    add-int/2addr v0, v1

    .line 30
    aput v0, p1, p0

    .line 31
    .line 32
    shr-int/lit8 p0, v0, 0x1e

    .line 33
    .line 34
    return p0
.end method

.method public static b(Lv00;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "App visibility diagnostics\nPackageManager query: getInstalledPackages(0)\n"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lv00;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "App identity: "

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lv00;->a:I

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "Total raw package count: "

    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v2, p0, Lv00;->d:Z

    .line 50
    .line 51
    const-string v3, "No"

    .line 52
    .line 53
    const-string v4, "Yes"

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    move-object v2, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object v2, v3

    .line 60
    :goto_0
    const-string v5, "Swift Backup package visible: "

    .line 61
    .line 62
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-boolean v2, p0, Lv00;->e:Z

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    move-object v2, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move-object v2, v3

    .line 79
    :goto_1
    const-string v5, "android visible: "

    .line 80
    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v2, p0, Lv00;->f:Z

    .line 92
    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    move-object v3, v4

    .line 96
    :cond_2
    const-string v2, "com.android.cts.ctsshim visible: "

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, "\n\nAn incomplete raw list may indicate external filtering, such as an OEM app-list permission or an HMA configuration. This report cannot identify the exact cause.\n\n"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lv00;->c:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v4, "Packages ("

    .line 119
    .line 120
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, ")"

    .line 127
    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_3

    .line 150
    .line 151
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Lr00;

    .line 156
    .line 157
    iget-object v3, v2, Lr00;->a:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v2, v2, Lr00;->b:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v3, " \u2014 "

    .line 170
    .line 171
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    return-object p0
.end method

.method public static c(ILjava/lang/String;)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " cannot be negative but was: "

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_1
    if-nez v2, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    array-length v4, v2

    .line 43
    if-gtz v4, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    aget-object v2, v2, v0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    return v3

    .line 50
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-class v5, Landroid/app/AppOpsManager;

    .line 59
    .line 60
    if-ne v3, v1, :cond_9

    .line 61
    .line 62
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_9

    .line 67
    .line 68
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    const/16 v4, 0x1d

    .line 71
    .line 72
    if-lt v3, v4, :cond_8

    .line 73
    .line 74
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/app/AppOpsManager;

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x1

    .line 85
    if-nez v3, :cond_5

    .line 86
    .line 87
    move v2, v5

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {v3, p1, v4, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :goto_2
    if-eqz v2, :cond_6

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    invoke-static {p0}, Ldu;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-nez v3, :cond_7

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    invoke-virtual {v3, p1, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    :goto_3
    move v2, v5

    .line 108
    goto :goto_4

    .line 109
    :cond_8
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Landroid/app/AppOpsManager;

    .line 114
    .line 115
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Landroid/app/AppOpsManager;

    .line 125
    .line 126
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    :goto_4
    if-nez v2, :cond_a

    .line 131
    .line 132
    :goto_5
    return v0

    .line 133
    :cond_a
    const/4 p0, -0x2

    .line 134
    return p0
.end method

.method public static final e(Ljava/lang/Throwable;)Lbn6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbn6;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static f(II[B[S[S)V
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x100

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v0, v4, :cond_2

    .line 10
    .line 11
    aget-short v5, p4, v2

    .line 12
    .line 13
    if-ne v5, v4, :cond_0

    .line 14
    .line 15
    aput-short v2, p3, v2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-gt v5, v3, :cond_1

    .line 19
    .line 20
    aget-byte v6, v1, p1

    .line 21
    .line 22
    and-int/lit16 v6, v6, 0xff

    .line 23
    .line 24
    invoke-static {v6, v5}, Llg7;->t(II)[I

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    aget v5, v5, v4

    .line 29
    .line 30
    int-to-short v5, v5

    .line 31
    aput-short v5, p3, v2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    aget-byte v6, v1, p1

    .line 35
    .line 36
    and-int/lit16 v6, v6, 0xff

    .line 37
    .line 38
    add-int/lit8 v7, p1, 0x1

    .line 39
    .line 40
    aget-byte v7, v1, v7

    .line 41
    .line 42
    shl-int/lit8 v7, v7, 0x8

    .line 43
    .line 44
    add-int/2addr v6, v7

    .line 45
    invoke-static {v6, v5}, Llg7;->t(II)[I

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    aget v5, v5, v4

    .line 50
    .line 51
    int-to-short v5, v5

    .line 52
    aput-short v5, p3, v2

    .line 53
    .line 54
    :cond_2
    :goto_0
    if-le v0, v4, :cond_8

    .line 55
    .line 56
    add-int/lit8 v5, v0, 0x1

    .line 57
    .line 58
    div-int/lit8 v5, v5, 0x2

    .line 59
    .line 60
    new-array v6, v5, [S

    .line 61
    .line 62
    new-array v7, v5, [S

    .line 63
    .line 64
    div-int/lit8 v8, v0, 0x2

    .line 65
    .line 66
    new-array v9, v8, [S

    .line 67
    .line 68
    new-array v8, v8, [I

    .line 69
    .line 70
    move/from16 v10, p1

    .line 71
    .line 72
    move v11, v2

    .line 73
    :goto_1
    add-int/lit8 v12, v0, -0x1

    .line 74
    .line 75
    if-ge v11, v12, :cond_5

    .line 76
    .line 77
    aget-short v12, p4, v11

    .line 78
    .line 79
    add-int/lit8 v13, v11, 0x1

    .line 80
    .line 81
    aget-short v13, p4, v13

    .line 82
    .line 83
    mul-int/2addr v12, v13

    .line 84
    const v13, 0x3fff00

    .line 85
    .line 86
    .line 87
    if-le v12, v13, :cond_3

    .line 88
    .line 89
    div-int/lit8 v13, v11, 0x2

    .line 90
    .line 91
    const/high16 v14, 0x10000

    .line 92
    .line 93
    aput v14, v8, v13

    .line 94
    .line 95
    aget-byte v14, v1, v10

    .line 96
    .line 97
    and-int/lit16 v14, v14, 0xff

    .line 98
    .line 99
    add-int/lit8 v15, v10, 0x1

    .line 100
    .line 101
    aget-byte v15, v1, v15

    .line 102
    .line 103
    and-int/lit16 v15, v15, 0xff

    .line 104
    .line 105
    mul-int/2addr v15, v3

    .line 106
    add-int/2addr v15, v14

    .line 107
    int-to-short v14, v15

    .line 108
    aput-short v14, v9, v13

    .line 109
    .line 110
    add-int/lit8 v10, v10, 0x2

    .line 111
    .line 112
    add-int/lit16 v12, v12, 0xff

    .line 113
    .line 114
    ushr-int/lit8 v12, v12, 0x8

    .line 115
    .line 116
    add-int/lit16 v12, v12, 0xff

    .line 117
    .line 118
    ushr-int/lit8 v12, v12, 0x8

    .line 119
    .line 120
    int-to-short v12, v12

    .line 121
    aput-short v12, v7, v13

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    const/16 v13, 0x4000

    .line 125
    .line 126
    if-lt v12, v13, :cond_4

    .line 127
    .line 128
    div-int/lit8 v13, v11, 0x2

    .line 129
    .line 130
    aput v3, v8, v13

    .line 131
    .line 132
    aget-byte v14, v1, v10

    .line 133
    .line 134
    and-int/lit16 v14, v14, 0xff

    .line 135
    .line 136
    int-to-short v14, v14

    .line 137
    aput-short v14, v9, v13

    .line 138
    .line 139
    add-int/lit8 v10, v10, 0x1

    .line 140
    .line 141
    add-int/lit16 v12, v12, 0xff

    .line 142
    .line 143
    ushr-int/lit8 v12, v12, 0x8

    .line 144
    .line 145
    int-to-short v12, v12

    .line 146
    aput-short v12, v7, v13

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    div-int/lit8 v13, v11, 0x2

    .line 150
    .line 151
    aput v4, v8, v13

    .line 152
    .line 153
    aput-short v2, v9, v13

    .line 154
    .line 155
    int-to-short v12, v12

    .line 156
    aput-short v12, v7, v13

    .line 157
    .line 158
    :goto_2
    add-int/lit8 v11, v11, 0x2

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    if-ge v11, v0, :cond_6

    .line 162
    .line 163
    div-int/lit8 v3, v11, 0x2

    .line 164
    .line 165
    aget-short v11, p4, v11

    .line 166
    .line 167
    aput-short v11, v7, v3

    .line 168
    .line 169
    :cond_6
    invoke-static {v5, v10, v1, v6, v7}, Llg7;->f(II[B[S[S)V

    .line 170
    .line 171
    .line 172
    move v1, v2

    .line 173
    move v3, v1

    .line 174
    :goto_3
    if-ge v1, v12, :cond_7

    .line 175
    .line 176
    div-int/lit8 v5, v1, 0x2

    .line 177
    .line 178
    aget-short v7, v9, v5

    .line 179
    .line 180
    const v10, 0xffff

    .line 181
    .line 182
    .line 183
    and-int/2addr v7, v10

    .line 184
    aget v11, v8, v5

    .line 185
    .line 186
    aget-short v5, v6, v5

    .line 187
    .line 188
    and-int/2addr v5, v10

    .line 189
    mul-int/2addr v11, v5

    .line 190
    add-int/2addr v11, v7

    .line 191
    aget-short v5, p4, v1

    .line 192
    .line 193
    invoke-static {v11, v5}, Llg7;->t(II)[I

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    add-int/lit8 v7, v3, 0x1

    .line 198
    .line 199
    aget v10, v5, v4

    .line 200
    .line 201
    int-to-short v10, v10

    .line 202
    aput-short v10, p3, v3

    .line 203
    .line 204
    add-int/lit8 v3, v3, 0x2

    .line 205
    .line 206
    aget v5, v5, v2

    .line 207
    .line 208
    add-int/lit8 v10, v1, 0x1

    .line 209
    .line 210
    aget-short v10, p4, v10

    .line 211
    .line 212
    invoke-static {v5, v10}, Llg7;->t(II)[I

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    aget v5, v5, v4

    .line 217
    .line 218
    int-to-short v5, v5

    .line 219
    aput-short v5, p3, v7

    .line 220
    .line 221
    add-int/lit8 v1, v1, 0x2

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_7
    if-ge v1, v0, :cond_8

    .line 225
    .line 226
    div-int/lit8 v1, v1, 0x2

    .line 227
    .line 228
    aget-short v0, v6, v1

    .line 229
    .line 230
    aput-short v0, p3, v3

    .line 231
    .line 232
    :cond_8
    return-void
.end method

.method public static g(I[I[I)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    move-wide v3, v1

    .line 5
    move v1, v0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-lez p0, :cond_1

    .line 8
    .line 9
    :goto_1
    const/16 v5, 0x20

    .line 10
    .line 11
    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    if-ge v0, v6, :cond_0

    .line 16
    .line 17
    add-int/lit8 v5, v1, 0x1

    .line 18
    .line 19
    aget v1, p1, v1

    .line 20
    .line 21
    int-to-long v6, v1

    .line 22
    shl-long/2addr v6, v0

    .line 23
    or-long/2addr v3, v6

    .line 24
    add-int/lit8 v0, v0, 0x1e

    .line 25
    .line 26
    move v1, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v6, v2, 0x1

    .line 29
    .line 30
    long-to-int v7, v3

    .line 31
    aput v7, p2, v2

    .line 32
    .line 33
    ushr-long/2addr v3, v5

    .line 34
    add-int/lit8 v0, v0, -0x20

    .line 35
    .line 36
    add-int/lit8 p0, p0, -0x20

    .line 37
    .line 38
    move v2, v6

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public static h(II[B[S[S)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p0, v1, :cond_0

    .line 4
    .line 5
    aget-short v2, p3, v0

    .line 6
    .line 7
    aget-short v3, p4, v0

    .line 8
    .line 9
    :goto_0
    if-le v3, v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 v4, p1, 0x1

    .line 12
    .line 13
    int-to-byte v5, v2

    .line 14
    aput-byte v5, p2, p1

    .line 15
    .line 16
    ushr-int/lit8 p1, v2, 0x8

    .line 17
    .line 18
    int-to-short v2, p1

    .line 19
    add-int/lit16 v3, v3, 0xff

    .line 20
    .line 21
    ushr-int/lit8 p1, v3, 0x8

    .line 22
    .line 23
    int-to-short v3, p1

    .line 24
    move p1, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-le p0, v1, :cond_4

    .line 27
    .line 28
    add-int/lit8 v1, p0, 0x1

    .line 29
    .line 30
    div-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    new-array v2, v1, [S

    .line 33
    .line 34
    new-array v3, v1, [S

    .line 35
    .line 36
    :goto_1
    add-int/lit8 v4, p0, -0x1

    .line 37
    .line 38
    if-ge v0, v4, :cond_2

    .line 39
    .line 40
    aget-short v4, p4, v0

    .line 41
    .line 42
    aget-short v5, p3, v0

    .line 43
    .line 44
    add-int/lit8 v6, v0, 0x1

    .line 45
    .line 46
    aget-short v7, p3, v6

    .line 47
    .line 48
    mul-int/2addr v7, v4

    .line 49
    add-int/2addr v7, v5

    .line 50
    aget-short v5, p4, v6

    .line 51
    .line 52
    mul-int/2addr v5, v4

    .line 53
    :goto_2
    const/16 v4, 0x4000

    .line 54
    .line 55
    if-lt v5, v4, :cond_1

    .line 56
    .line 57
    add-int/lit8 v4, p1, 0x1

    .line 58
    .line 59
    int-to-byte v6, v7

    .line 60
    aput-byte v6, p2, p1

    .line 61
    .line 62
    ushr-int/lit8 v7, v7, 0x8

    .line 63
    .line 64
    add-int/lit16 v5, v5, 0xff

    .line 65
    .line 66
    ushr-int/lit8 v5, v5, 0x8

    .line 67
    .line 68
    move p1, v4

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    div-int/lit8 v4, v0, 0x2

    .line 71
    .line 72
    int-to-short v6, v7

    .line 73
    aput-short v6, v2, v4

    .line 74
    .line 75
    int-to-short v5, v5

    .line 76
    aput-short v5, v3, v4

    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    if-ge v0, p0, :cond_3

    .line 82
    .line 83
    div-int/lit8 p0, v0, 0x2

    .line 84
    .line 85
    aget-short p3, p3, v0

    .line 86
    .line 87
    aput-short p3, v2, p0

    .line 88
    .line 89
    aget-short p3, p4, v0

    .line 90
    .line 91
    aput-short p3, v3, p0

    .line 92
    .line 93
    :cond_3
    invoke-static {v1, p1, p2, v2, v3}, Llg7;->h(II[B[S[S)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method

.method public static i(I[I[I)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    move-wide v3, v1

    .line 5
    move v1, v0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-lez p0, :cond_1

    .line 8
    .line 9
    const/16 v5, 0x1e

    .line 10
    .line 11
    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    if-ge v0, v6, :cond_0

    .line 16
    .line 17
    add-int/lit8 v6, v1, 0x1

    .line 18
    .line 19
    aget v1, p1, v1

    .line 20
    .line 21
    int-to-long v7, v1

    .line 22
    const-wide v9, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr v7, v9

    .line 28
    shl-long/2addr v7, v0

    .line 29
    or-long/2addr v3, v7

    .line 30
    add-int/lit8 v0, v0, 0x20

    .line 31
    .line 32
    move v1, v6

    .line 33
    :cond_0
    add-int/lit8 v6, v2, 0x1

    .line 34
    .line 35
    long-to-int v7, v3

    .line 36
    const v8, 0x3fffffff    # 1.9999999f

    .line 37
    .line 38
    .line 39
    and-int/2addr v7, v8

    .line 40
    aput v7, p2, v2

    .line 41
    .line 42
    ushr-long/2addr v3, v5

    .line 43
    add-int/lit8 v0, v0, -0x1e

    .line 44
    .line 45
    add-int/lit8 p0, p0, -0x1e

    .line 46
    .line 47
    move v2, v6

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method public static j(II[I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v0, p2, v0

    .line 3
    .line 4
    xor-int/2addr p1, v0

    .line 5
    const/4 v0, 0x1

    .line 6
    move v1, v0

    .line 7
    :goto_0
    if-ge v1, p0, :cond_0

    .line 8
    .line 9
    aget v2, p2, v1

    .line 10
    .line 11
    or-int/2addr p1, v2

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    ushr-int/lit8 p0, p1, 0x1

    .line 16
    .line 17
    and-int/2addr p1, v0

    .line 18
    or-int/2addr p0, p1

    .line 19
    sub-int/2addr p0, v0

    .line 20
    shr-int/lit8 p0, p0, 0x1f

    .line 21
    .line 22
    return p0
.end method

.method public static k(I)I
    .locals 1

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    shl-int/lit8 v0, p0, 0x8

    .line 6
    .line 7
    or-int/2addr p0, v0

    .line 8
    const v0, 0xff00ff

    .line 9
    .line 10
    .line 11
    and-int/2addr p0, v0

    .line 12
    shl-int/lit8 v0, p0, 0x4

    .line 13
    .line 14
    or-int/2addr p0, v0

    .line 15
    const v0, 0xf0f0f0f

    .line 16
    .line 17
    .line 18
    and-int/2addr p0, v0

    .line 19
    shl-int/lit8 v0, p0, 0x2

    .line 20
    .line 21
    or-int/2addr p0, v0

    .line 22
    const v0, 0x33333333

    .line 23
    .line 24
    .line 25
    and-int/2addr p0, v0

    .line 26
    shl-int/lit8 v0, p0, 0x1

    .line 27
    .line 28
    or-int/2addr p0, v0

    .line 29
    const v0, 0x55555555

    .line 30
    .line 31
    .line 32
    and-int/2addr p0, v0

    .line 33
    return p0
.end method

.method public static l(IJ[J)V
    .locals 5

    .line 1
    const-wide v0, 0xffff0000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/16 v2, 0x10

    .line 7
    .line 8
    invoke-static {v2, p1, p2, v0, v1}, Lw13;->e(IJJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    const-wide v0, 0xff000000ff00L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    invoke-static {v2, p1, p2, v0, v1}, Lw13;->e(IJJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    const-wide v0, 0xf000f000f000f0L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-static {v2, p1, p2, v0, v1}, Lw13;->e(IJJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    const-wide v0, 0xc0c0c0c0c0c0c0cL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    invoke-static {v2, p1, p2, v0, v1}, Lw13;->e(IJJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    const/4 v0, 0x1

    .line 44
    const-wide v1, 0x2222222222222222L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1, p2, v1, v2}, Lw13;->e(IJJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    const-wide v1, -0x5555555555555556L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    and-long v3, p1, v1

    .line 59
    .line 60
    aput-wide v3, p3, p0

    .line 61
    .line 62
    add-int/2addr p0, v0

    .line 63
    shl-long/2addr p1, v0

    .line 64
    and-long/2addr p1, v1

    .line 65
    aput-wide p1, p3, p0

    .line 66
    .line 67
    return-void
.end method

.method public static m()Lnq2;
    .locals 7

    .line 1
    const-string v0, "dropbox_credential"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-object v0, v1

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    invoke-static {v0}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lnq2;

    .line 32
    .line 33
    const-string v2, "access_token"

    .line 34
    .line 35
    invoke-static {v0, v2}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    const-string v2, "accessToken"

    .line 42
    .line 43
    invoke-static {v0, v2}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    const-string v2, ""

    .line 50
    .line 51
    :cond_2
    const-string v3, "expires_at"

    .line 52
    .line 53
    invoke-static {v0, v3}, Ljd4;->A(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    const-string v3, "expiresAt"

    .line 60
    .line 61
    invoke-static {v0, v3}, Ljd4;->A(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    const-string v3, "accessTokenExpiryTimeMillis"

    .line 68
    .line 69
    invoke-static {v0, v3}, Ljd4;->A(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :cond_3
    const-string v4, "refresh_token"

    .line 74
    .line 75
    invoke-static {v0, v4}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    if-nez v4, :cond_4

    .line 80
    .line 81
    const-string v4, "refreshToken"

    .line 82
    .line 83
    invoke-static {v0, v4}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    :cond_4
    const-string v5, "app_key"

    .line 88
    .line 89
    invoke-static {v0, v5}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-nez v5, :cond_5

    .line 94
    .line 95
    const-string v5, "appKey"

    .line 96
    .line 97
    invoke-static {v0, v5}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    :cond_5
    const-string v6, "app_secret"

    .line 102
    .line 103
    invoke-static {v0, v6}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    if-nez v6, :cond_6

    .line 108
    .line 109
    const-string v6, "appSecret"

    .line 110
    .line 111
    invoke-static {v0, v6}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    :cond_6
    invoke-direct/range {v1 .. v6}, Lnq2;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v1
.end method

.method public static n(I[B[B)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    div-int/lit8 v3, p0, 0x4

    .line 5
    .line 6
    if-ge v0, v3, :cond_0

    .line 7
    .line 8
    add-int/lit8 v3, v1, 0x1

    .line 9
    .line 10
    aget-byte v1, p2, v1

    .line 11
    .line 12
    add-int/lit8 v4, v2, 0x1

    .line 13
    .line 14
    and-int/lit8 v5, v1, 0x3

    .line 15
    .line 16
    add-int/lit8 v5, v5, -0x1

    .line 17
    .line 18
    int-to-byte v5, v5

    .line 19
    aput-byte v5, p1, v2

    .line 20
    .line 21
    ushr-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    int-to-byte v1, v1

    .line 24
    add-int/lit8 v5, v2, 0x2

    .line 25
    .line 26
    and-int/lit8 v6, v1, 0x3

    .line 27
    .line 28
    add-int/lit8 v6, v6, -0x1

    .line 29
    .line 30
    int-to-byte v6, v6

    .line 31
    aput-byte v6, p1, v4

    .line 32
    .line 33
    ushr-int/lit8 v1, v1, 0x2

    .line 34
    .line 35
    int-to-byte v1, v1

    .line 36
    add-int/lit8 v4, v2, 0x3

    .line 37
    .line 38
    and-int/lit8 v6, v1, 0x3

    .line 39
    .line 40
    add-int/lit8 v6, v6, -0x1

    .line 41
    .line 42
    int-to-byte v6, v6

    .line 43
    aput-byte v6, p1, v5

    .line 44
    .line 45
    ushr-int/lit8 v1, v1, 0x2

    .line 46
    .line 47
    int-to-byte v1, v1

    .line 48
    add-int/lit8 v2, v2, 0x4

    .line 49
    .line 50
    and-int/lit8 v1, v1, 0x3

    .line 51
    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    int-to-byte v1, v1

    .line 55
    aput-byte v1, p1, v4

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    move v1, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    aget-byte p0, p2, v1

    .line 62
    .line 63
    and-int/lit8 p0, p0, 0x3

    .line 64
    .line 65
    add-int/lit8 p0, p0, -0x1

    .line 66
    .line 67
    int-to-byte p0, p0

    .line 68
    aput-byte p0, p1, v2

    .line 69
    .line 70
    return-void
.end method

.method public static o(I[B[B)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    div-int/lit8 v3, p0, 0x4

    .line 5
    .line 6
    if-ge v0, v3, :cond_0

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x1

    .line 9
    .line 10
    aget-byte v4, p2, v2

    .line 11
    .line 12
    add-int/lit8 v4, v4, 0x1

    .line 13
    .line 14
    int-to-byte v4, v4

    .line 15
    add-int/lit8 v5, v2, 0x2

    .line 16
    .line 17
    aget-byte v3, p2, v3

    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    int-to-byte v3, v3

    .line 22
    shl-int/lit8 v3, v3, 0x2

    .line 23
    .line 24
    add-int/2addr v4, v3

    .line 25
    int-to-byte v3, v4

    .line 26
    add-int/lit8 v4, v2, 0x3

    .line 27
    .line 28
    aget-byte v5, p2, v5

    .line 29
    .line 30
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    int-to-byte v5, v5

    .line 33
    shl-int/lit8 v5, v5, 0x4

    .line 34
    .line 35
    add-int/2addr v3, v5

    .line 36
    int-to-byte v3, v3

    .line 37
    add-int/lit8 v2, v2, 0x4

    .line 38
    .line 39
    aget-byte v4, p2, v4

    .line 40
    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 42
    .line 43
    int-to-byte v4, v4

    .line 44
    shl-int/lit8 v4, v4, 0x6

    .line 45
    .line 46
    add-int/2addr v3, v4

    .line 47
    int-to-byte v3, v3

    .line 48
    add-int/lit8 v4, v1, 0x1

    .line 49
    .line 50
    aput-byte v3, p1, v1

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    move v1, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    aget-byte p0, p2, v2

    .line 57
    .line 58
    add-int/lit8 p0, p0, 0x1

    .line 59
    .line 60
    int-to-byte p0, p0

    .line 61
    aput-byte p0, p1, v1

    .line 62
    .line 63
    return-void
.end method

.method public static p([B[B)[B
    .locals 5

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    array-length v2, p1

    .line 7
    add-int/2addr v1, v2

    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    array-length v3, p0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    array-length p0, p0

    .line 16
    array-length v3, p1

    .line 17
    invoke-static {p1, v4, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lkr6;

    .line 21
    .line 22
    invoke-direct {p0}, Lkr6;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2, v4, v1}, Lq15;->update([BII)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v4}, Lkr6;->doFinal([BI)I

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static q(II)I
    .locals 10

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    add-int/2addr p0, v0

    .line 6
    int-to-long v1, p0

    .line 7
    const-wide v3, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v1, v3

    .line 13
    const-wide/32 v5, -0x80000000

    .line 14
    .line 15
    .line 16
    add-long/2addr v1, v5

    .line 17
    invoke-static {v1, v2}, Llg7;->I(J)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0, p1}, Llg7;->t(II)[I

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/high16 v1, -0x80000000

    .line 26
    .line 27
    invoke-static {v1, p1}, Llg7;->t(II)[I

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    aget v5, p0, v2

    .line 33
    .line 34
    int-to-long v5, v5

    .line 35
    and-long/2addr v5, v3

    .line 36
    aget v2, v1, v2

    .line 37
    .line 38
    int-to-long v7, v2

    .line 39
    and-long/2addr v7, v3

    .line 40
    sub-long/2addr v5, v7

    .line 41
    invoke-static {v5, v6}, Llg7;->I(J)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v5, 0x1

    .line 46
    aget p0, p0, v5

    .line 47
    .line 48
    int-to-long v6, p0

    .line 49
    and-long/2addr v6, v3

    .line 50
    aget p0, v1, v5

    .line 51
    .line 52
    int-to-long v8, p0

    .line 53
    and-long/2addr v3, v8

    .line 54
    sub-long/2addr v6, v3

    .line 55
    invoke-static {v6, v7}, Llg7;->I(J)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    ushr-int/lit8 v1, p0, 0x1f

    .line 60
    .line 61
    neg-int v1, v1

    .line 62
    and-int/2addr p1, v1

    .line 63
    add-int/2addr p0, p1

    .line 64
    add-int/2addr v2, v1

    .line 65
    filled-new-array {v2, p0}, [I

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    aget p0, p0, v5

    .line 70
    .line 71
    sub-int/2addr p0, v0

    .line 72
    return p0
.end method

.method public static r(Ljava/security/SecureRandom;)I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    aget-byte p0, v0, p0

    .line 9
    .line 10
    and-int/lit16 p0, p0, 0xff

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    aget-byte v1, v0, v1

    .line 14
    .line 15
    and-int/lit16 v1, v1, 0xff

    .line 16
    .line 17
    shl-int/lit8 v1, v1, 0x8

    .line 18
    .line 19
    add-int/2addr p0, v1

    .line 20
    const/4 v1, 0x2

    .line 21
    aget-byte v1, v0, v1

    .line 22
    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 24
    .line 25
    shl-int/lit8 v1, v1, 0x10

    .line 26
    .line 27
    add-int/2addr p0, v1

    .line 28
    const/4 v1, 0x3

    .line 29
    aget-byte v0, v0, v1

    .line 30
    .line 31
    and-int/lit16 v0, v0, 0xff

    .line 32
    .line 33
    shl-int/lit8 v0, v0, 0x18

    .line 34
    .line 35
    add-int/2addr p0, v0

    .line 36
    return p0
.end method

.method public static final s(Ljava/lang/Object;)Ln67;
    .locals 1

    .line 1
    sget-object v0, Lzm5;->a:Ldu9;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ln67;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "Does not contain segment"

    .line 9
    .line 10
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static t(II)[I
    .locals 9

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    int-to-long p0, p1

    .line 9
    const-wide v2, 0x80000000L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    div-long/2addr v2, p0

    .line 15
    mul-long v4, v0, v2

    .line 16
    .line 17
    const/16 v6, 0x1f

    .line 18
    .line 19
    ushr-long/2addr v4, v6

    .line 20
    mul-long v7, v4, p0

    .line 21
    .line 22
    sub-long/2addr v0, v7

    .line 23
    mul-long/2addr v2, v0

    .line 24
    ushr-long/2addr v2, v6

    .line 25
    mul-long v6, v2, p0

    .line 26
    .line 27
    sub-long/2addr v0, v6

    .line 28
    add-long/2addr v4, v2

    .line 29
    sub-long/2addr v0, p0

    .line 30
    const-wide/16 v2, 0x1

    .line 31
    .line 32
    add-long/2addr v4, v2

    .line 33
    const/16 v2, 0x3f

    .line 34
    .line 35
    ushr-long v2, v0, v2

    .line 36
    .line 37
    neg-long v2, v2

    .line 38
    and-long/2addr p0, v2

    .line 39
    add-long/2addr v0, p0

    .line 40
    add-long/2addr v4, v2

    .line 41
    invoke-static {v4, v5}, Llg7;->I(J)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {v0, v1}, Llg7;->I(J)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    filled-new-array {p0, p1}, [I

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static u(I)I
    .locals 2

    .line 1
    mul-int v0, p0, p0

    .line 2
    .line 3
    rsub-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    mul-int/2addr v0, p0

    .line 6
    mul-int v1, p0, v0

    .line 7
    .line 8
    rsub-int/lit8 v1, v1, 0x2

    .line 9
    .line 10
    mul-int/2addr v1, v0

    .line 11
    mul-int v0, p0, v1

    .line 12
    .line 13
    rsub-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    mul-int/2addr v0, v1

    .line 16
    mul-int/2addr p0, v0

    .line 17
    rsub-int/lit8 p0, p0, 0x2

    .line 18
    .line 19
    mul-int/2addr p0, v0

    .line 20
    return p0
.end method

.method public static final v(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-object v0, Lzm5;->a:Ldu9;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static w(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    .line 15
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v0, 0x800005

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {v0, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    and-int/lit8 p0, p0, 0x7

    .line 33
    .line 34
    const/4 v0, 0x5

    .line 35
    if-ne p0, v0, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public static x(II[I)V
    .locals 6

    .line 1
    aget v0, p2, p0

    .line 2
    .line 3
    aget v1, p2, p1

    .line 4
    .line 5
    xor-int v2, v0, v1

    .line 6
    .line 7
    sub-int v3, v1, v0

    .line 8
    .line 9
    xor-int v4, v3, v1

    .line 10
    .line 11
    const/high16 v5, -0x80000000

    .line 12
    .line 13
    xor-int/2addr v4, v5

    .line 14
    and-int/2addr v4, v2

    .line 15
    xor-int/2addr v3, v4

    .line 16
    ushr-int/lit8 v3, v3, 0x1f

    .line 17
    .line 18
    neg-int v3, v3

    .line 19
    and-int/2addr v2, v3

    .line 20
    xor-int/2addr v0, v2

    .line 21
    aput v0, p2, p0

    .line 22
    .line 23
    xor-int p0, v1, v2

    .line 24
    .line 25
    aput p0, p2, p1

    .line 26
    .line 27
    return-void
.end method

.method public static y([I[I[I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    shl-int/lit8 v2, v1, 0x5

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    sub-int/2addr v1, v3

    .line 8
    aget v1, v0, v1

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v2, v1

    .line 15
    add-int/lit8 v1, v2, 0x1d

    .line 16
    .line 17
    const/16 v4, 0x1e

    .line 18
    .line 19
    div-int/lit8 v5, v1, 0x1e

    .line 20
    .line 21
    new-array v7, v5, [I

    .line 22
    .line 23
    new-array v8, v5, [I

    .line 24
    .line 25
    new-array v1, v5, [I

    .line 26
    .line 27
    new-array v11, v5, [I

    .line 28
    .line 29
    new-array v10, v5, [I

    .line 30
    .line 31
    const/4 v12, 0x0

    .line 32
    aput v3, v8, v12

    .line 33
    .line 34
    move-object/from16 v6, p1

    .line 35
    .line 36
    invoke-static {v2, v6, v11}, Llg7;->i(I[I[I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v0, v10}, Llg7;->i(I[I[I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v10, v12, v1, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    aget v0, v10, v12

    .line 46
    .line 47
    invoke-static {v0}, Llg7;->u(I)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const-wide/32 p0, 0x24db4

    .line 52
    .line 53
    .line 54
    int-to-long v13, v2

    .line 55
    mul-long v13, v13, p0

    .line 56
    .line 57
    const-wide/32 v15, 0x183ab

    .line 58
    .line 59
    .line 60
    add-long/2addr v13, v15

    .line 61
    const/16 v0, 0x10

    .line 62
    .line 63
    ushr-long/2addr v13, v0

    .line 64
    long-to-int v0, v13

    .line 65
    move v9, v12

    .line 66
    move v13, v9

    .line 67
    :goto_0
    if-ge v13, v0, :cond_1

    .line 68
    .line 69
    aget v14, v1, v12

    .line 70
    .line 71
    aget v15, v11, v12

    .line 72
    .line 73
    const/high16 v16, 0x40000000    # 2.0f

    .line 74
    .line 75
    move/from16 p0, v14

    .line 76
    .line 77
    move v14, v9

    .line 78
    move/from16 v9, p0

    .line 79
    .line 80
    move/from16 p0, v0

    .line 81
    .line 82
    move/from16 v17, v3

    .line 83
    .line 84
    move/from16 v18, v5

    .line 85
    .line 86
    move/from16 p1, v6

    .line 87
    .line 88
    move v0, v12

    .line 89
    move v5, v0

    .line 90
    move v6, v5

    .line 91
    move/from16 v3, v16

    .line 92
    .line 93
    move v12, v3

    .line 94
    :goto_1
    if-ge v0, v4, :cond_0

    .line 95
    .line 96
    move/from16 v19, v4

    .line 97
    .line 98
    shr-int/lit8 v4, v14, 0x1f

    .line 99
    .line 100
    move/from16 v20, v0

    .line 101
    .line 102
    and-int/lit8 v0, v15, 0x1

    .line 103
    .line 104
    neg-int v0, v0

    .line 105
    xor-int v21, v9, v4

    .line 106
    .line 107
    xor-int v22, v12, v4

    .line 108
    .line 109
    xor-int v23, v5, v4

    .line 110
    .line 111
    and-int v21, v21, v0

    .line 112
    .line 113
    sub-int v15, v15, v21

    .line 114
    .line 115
    and-int v21, v22, v0

    .line 116
    .line 117
    sub-int v6, v6, v21

    .line 118
    .line 119
    and-int v21, v23, v0

    .line 120
    .line 121
    sub-int v3, v3, v21

    .line 122
    .line 123
    not-int v4, v4

    .line 124
    and-int/2addr v0, v4

    .line 125
    xor-int v4, v14, v0

    .line 126
    .line 127
    add-int/lit8 v14, v4, 0x1

    .line 128
    .line 129
    and-int v4, v15, v0

    .line 130
    .line 131
    add-int/2addr v9, v4

    .line 132
    and-int v4, v6, v0

    .line 133
    .line 134
    add-int/2addr v12, v4

    .line 135
    and-int/2addr v0, v3

    .line 136
    add-int/2addr v5, v0

    .line 137
    shr-int/lit8 v15, v15, 0x1

    .line 138
    .line 139
    shr-int/lit8 v6, v6, 0x1

    .line 140
    .line 141
    shr-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    add-int/lit8 v0, v20, 0x1

    .line 144
    .line 145
    move/from16 v4, v19

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_0
    move/from16 v19, v4

    .line 149
    .line 150
    filled-new-array {v12, v5, v6, v3}, [I

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    move/from16 v6, p1

    .line 155
    .line 156
    move/from16 v5, v18

    .line 157
    .line 158
    invoke-static/range {v5 .. v10}, Llg7;->J(II[I[I[I[I)V

    .line 159
    .line 160
    .line 161
    invoke-static {v5, v1, v11, v9}, Llg7;->K(I[I[I[I)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 v13, v13, 0x1e

    .line 165
    .line 166
    move/from16 v0, p0

    .line 167
    .line 168
    move v9, v14

    .line 169
    move/from16 v3, v17

    .line 170
    .line 171
    const/4 v12, 0x0

    .line 172
    goto :goto_0

    .line 173
    :cond_1
    move/from16 v17, v3

    .line 174
    .line 175
    move/from16 v19, v4

    .line 176
    .line 177
    add-int/lit8 v0, v5, -0x1

    .line 178
    .line 179
    aget v3, v1, v0

    .line 180
    .line 181
    shr-int/lit8 v3, v3, 0x1f

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    const/4 v6, 0x0

    .line 185
    :goto_2
    const v8, 0x3fffffff    # 1.9999999f

    .line 186
    .line 187
    .line 188
    if-ge v4, v0, :cond_2

    .line 189
    .line 190
    aget v9, v1, v4

    .line 191
    .line 192
    xor-int/2addr v9, v3

    .line 193
    sub-int/2addr v9, v3

    .line 194
    add-int/2addr v9, v6

    .line 195
    and-int v6, v9, v8

    .line 196
    .line 197
    aput v6, v1, v4

    .line 198
    .line 199
    shr-int/lit8 v6, v9, 0x1e

    .line 200
    .line 201
    add-int/lit8 v4, v4, 0x1

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_2
    aget v4, v1, v0

    .line 205
    .line 206
    xor-int/2addr v4, v3

    .line 207
    sub-int/2addr v4, v3

    .line 208
    add-int/2addr v4, v6

    .line 209
    aput v4, v1, v0

    .line 210
    .line 211
    aget v4, v7, v0

    .line 212
    .line 213
    shr-int/lit8 v4, v4, 0x1f

    .line 214
    .line 215
    const/4 v6, 0x0

    .line 216
    const/4 v9, 0x0

    .line 217
    :goto_3
    if-ge v6, v0, :cond_3

    .line 218
    .line 219
    aget v12, v7, v6

    .line 220
    .line 221
    aget v13, v10, v6

    .line 222
    .line 223
    and-int/2addr v13, v4

    .line 224
    add-int/2addr v12, v13

    .line 225
    xor-int/2addr v12, v3

    .line 226
    sub-int/2addr v12, v3

    .line 227
    add-int/2addr v12, v9

    .line 228
    and-int v9, v12, v8

    .line 229
    .line 230
    aput v9, v7, v6

    .line 231
    .line 232
    shr-int/lit8 v9, v12, 0x1e

    .line 233
    .line 234
    add-int/lit8 v6, v6, 0x1

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_3
    aget v6, v7, v0

    .line 238
    .line 239
    aget v12, v10, v0

    .line 240
    .line 241
    and-int/2addr v4, v12

    .line 242
    add-int/2addr v6, v4

    .line 243
    xor-int v4, v6, v3

    .line 244
    .line 245
    sub-int/2addr v4, v3

    .line 246
    add-int/2addr v4, v9

    .line 247
    aput v4, v7, v0

    .line 248
    .line 249
    shr-int/lit8 v3, v4, 0x1f

    .line 250
    .line 251
    const/4 v4, 0x0

    .line 252
    const/4 v6, 0x0

    .line 253
    :goto_4
    if-ge v4, v0, :cond_4

    .line 254
    .line 255
    aget v9, v7, v4

    .line 256
    .line 257
    aget v12, v10, v4

    .line 258
    .line 259
    and-int/2addr v12, v3

    .line 260
    add-int/2addr v9, v12

    .line 261
    add-int/2addr v9, v6

    .line 262
    and-int v6, v9, v8

    .line 263
    .line 264
    aput v6, v7, v4

    .line 265
    .line 266
    shr-int/lit8 v6, v9, 0x1e

    .line 267
    .line 268
    add-int/lit8 v4, v4, 0x1

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_4
    aget v4, v7, v0

    .line 272
    .line 273
    aget v8, v10, v0

    .line 274
    .line 275
    and-int/2addr v3, v8

    .line 276
    add-int/2addr v4, v3

    .line 277
    add-int/2addr v4, v6

    .line 278
    aput v4, v7, v0

    .line 279
    .line 280
    move-object/from16 v0, p2

    .line 281
    .line 282
    invoke-static {v2, v7, v0}, Llg7;->g(I[I[I)V

    .line 283
    .line 284
    .line 285
    move/from16 v0, v17

    .line 286
    .line 287
    invoke-static {v5, v0, v1}, Llg7;->j(II[I)I

    .line 288
    .line 289
    .line 290
    const/4 v0, 0x0

    .line 291
    invoke-static {v5, v0, v11}, Llg7;->j(II[I)I

    .line 292
    .line 293
    .line 294
    return-void
.end method

.method public static z([I[I[I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    shl-int/lit8 v3, v2, 0x5

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    sub-int/2addr v2, v4

    .line 10
    aget v5, v0, v2

    .line 11
    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    sub-int/2addr v3, v5

    .line 17
    add-int/lit8 v5, v3, 0x1d

    .line 18
    .line 19
    const/16 v6, 0x1e

    .line 20
    .line 21
    div-int/lit8 v7, v5, 0x1e

    .line 22
    .line 23
    :goto_0
    const/4 v5, 0x0

    .line 24
    if-ltz v2, :cond_1

    .line 25
    .line 26
    aget v8, v1, v2

    .line 27
    .line 28
    if-eqz v8, :cond_0

    .line 29
    .line 30
    mul-int/lit8 v2, v2, 0x20

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x20

    .line 33
    .line 34
    invoke-static {v8}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    sub-int/2addr v2, v8

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v2, v5

    .line 44
    :goto_1
    sub-int v2, v3, v2

    .line 45
    .line 46
    new-array v9, v7, [I

    .line 47
    .line 48
    new-array v10, v7, [I

    .line 49
    .line 50
    new-array v13, v7, [I

    .line 51
    .line 52
    new-array v14, v7, [I

    .line 53
    .line 54
    new-array v12, v7, [I

    .line 55
    .line 56
    aput v4, v10, v5

    .line 57
    .line 58
    invoke-static {v3, v1, v14}, Llg7;->i(I[I[I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v0, v12}, Llg7;->i(I[I[I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v12, v5, v13, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    neg-int v0, v2

    .line 68
    aget v1, v12, v5

    .line 69
    .line 70
    invoke-static {v1}, Llg7;->u(I)I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    const-wide/32 v15, 0x2e1e2

    .line 75
    .line 76
    .line 77
    move v1, v4

    .line 78
    move/from16 v17, v5

    .line 79
    .line 80
    int-to-long v4, v3

    .line 81
    mul-long/2addr v4, v15

    .line 82
    const/16 v11, 0x2e

    .line 83
    .line 84
    if-ge v3, v11, :cond_2

    .line 85
    .line 86
    const v11, 0x4b4b5

    .line 87
    .line 88
    .line 89
    :goto_2
    move/from16 p0, v1

    .line 90
    .line 91
    move v15, v2

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    const v11, 0x2c3c4

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_3
    int-to-long v1, v11

    .line 98
    add-long/2addr v4, v1

    .line 99
    const/16 v1, 0x10

    .line 100
    .line 101
    ushr-long v1, v4, v1

    .line 102
    .line 103
    long-to-int v1, v1

    .line 104
    move v4, v7

    .line 105
    move v2, v15

    .line 106
    :goto_4
    aget v5, v14, v17

    .line 107
    .line 108
    if-eqz v5, :cond_4

    .line 109
    .line 110
    :cond_3
    move-object/from16 v5, p2

    .line 111
    .line 112
    goto :goto_7

    .line 113
    :cond_4
    move/from16 v11, p0

    .line 114
    .line 115
    :goto_5
    if-ge v11, v4, :cond_5

    .line 116
    .line 117
    aget v15, v14, v11

    .line 118
    .line 119
    or-int/2addr v5, v15

    .line 120
    add-int/lit8 v11, v11, 0x1

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_5
    if-nez v5, :cond_3

    .line 124
    .line 125
    add-int/lit8 v0, v4, -0x1

    .line 126
    .line 127
    aget v0, v13, v0

    .line 128
    .line 129
    shr-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    add-int/lit8 v1, v7, -0x1

    .line 132
    .line 133
    aget v1, v9, v1

    .line 134
    .line 135
    shr-int/lit8 v1, v1, 0x1f

    .line 136
    .line 137
    if-gez v1, :cond_6

    .line 138
    .line 139
    invoke-static {v7, v9, v12}, Llg7;->a(I[I[I)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    :cond_6
    if-gez v0, :cond_7

    .line 144
    .line 145
    invoke-static {v9, v7}, Llg7;->B([II)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-static {v13, v4}, Llg7;->B([II)I

    .line 150
    .line 151
    .line 152
    :cond_7
    aget v0, v13, v17

    .line 153
    .line 154
    xor-int/lit8 v0, v0, 0x1

    .line 155
    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_8
    move/from16 v2, p0

    .line 160
    .line 161
    :goto_6
    if-ge v2, v4, :cond_9

    .line 162
    .line 163
    aget v5, v13, v2

    .line 164
    .line 165
    or-int/2addr v0, v5

    .line 166
    add-int/lit8 v2, v2, 0x1

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_9
    if-nez v0, :cond_b

    .line 170
    .line 171
    if-gez v1, :cond_a

    .line 172
    .line 173
    invoke-static {v7, v9, v12}, Llg7;->a(I[I[I)I

    .line 174
    .line 175
    .line 176
    :cond_a
    move-object/from16 v5, p2

    .line 177
    .line 178
    invoke-static {v3, v9, v5}, Llg7;->g(I[I[I)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :goto_7
    if-lt v2, v1, :cond_c

    .line 183
    .line 184
    :cond_b
    :goto_8
    return-void

    .line 185
    :cond_c
    add-int/lit8 v2, v2, 0x1e

    .line 186
    .line 187
    aget v11, v13, v17

    .line 188
    .line 189
    aget v15, v14, v17

    .line 190
    .line 191
    move/from16 v18, p0

    .line 192
    .line 193
    move/from16 p1, v0

    .line 194
    .line 195
    move/from16 v16, v6

    .line 196
    .line 197
    move/from16 v6, v17

    .line 198
    .line 199
    move/from16 v19, v6

    .line 200
    .line 201
    move/from16 v0, v18

    .line 202
    .line 203
    :goto_9
    const/16 v20, -0x1

    .line 204
    .line 205
    shl-int v21, v20, v16

    .line 206
    .line 207
    or-int v21, v15, v21

    .line 208
    .line 209
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 210
    .line 211
    .line 212
    move-result v21

    .line 213
    shr-int v15, v15, v21

    .line 214
    .line 215
    move/from16 v22, v1

    .line 216
    .line 217
    shl-int v1, v18, v21

    .line 218
    .line 219
    move/from16 v18, v2

    .line 220
    .line 221
    shl-int v2, v19, v21

    .line 222
    .line 223
    move/from16 v19, v3

    .line 224
    .line 225
    sub-int v3, p1, v21

    .line 226
    .line 227
    sub-int v5, v16, v21

    .line 228
    .line 229
    if-gtz v5, :cond_e

    .line 230
    .line 231
    filled-new-array {v1, v2, v6, v0}, [I

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    invoke-static/range {v7 .. v12}, Llg7;->J(II[I[I[I[I)V

    .line 236
    .line 237
    .line 238
    invoke-static {v4, v13, v14, v11}, Llg7;->K(I[I[I[I)V

    .line 239
    .line 240
    .line 241
    add-int/lit8 v0, v4, -0x1

    .line 242
    .line 243
    aget v1, v13, v0

    .line 244
    .line 245
    aget v0, v14, v0

    .line 246
    .line 247
    add-int/lit8 v2, v4, -0x2

    .line 248
    .line 249
    shr-int/lit8 v5, v2, 0x1f

    .line 250
    .line 251
    shr-int/lit8 v6, v1, 0x1f

    .line 252
    .line 253
    xor-int/2addr v6, v1

    .line 254
    or-int/2addr v5, v6

    .line 255
    shr-int/lit8 v6, v0, 0x1f

    .line 256
    .line 257
    xor-int/2addr v6, v0

    .line 258
    or-int/2addr v5, v6

    .line 259
    if-nez v5, :cond_d

    .line 260
    .line 261
    aget v5, v13, v2

    .line 262
    .line 263
    shl-int/lit8 v1, v1, 0x1e

    .line 264
    .line 265
    or-int/2addr v1, v5

    .line 266
    aput v1, v13, v2

    .line 267
    .line 268
    aget v1, v14, v2

    .line 269
    .line 270
    shl-int/lit8 v0, v0, 0x1e

    .line 271
    .line 272
    or-int/2addr v0, v1

    .line 273
    aput v0, v14, v2

    .line 274
    .line 275
    add-int/lit8 v4, v4, -0x1

    .line 276
    .line 277
    :cond_d
    move v0, v3

    .line 278
    move/from16 v2, v18

    .line 279
    .line 280
    move/from16 v3, v19

    .line 281
    .line 282
    move/from16 v1, v22

    .line 283
    .line 284
    const/16 v6, 0x1e

    .line 285
    .line 286
    goto/16 :goto_4

    .line 287
    .line 288
    :cond_e
    if-gtz v3, :cond_10

    .line 289
    .line 290
    rsub-int/lit8 v3, v3, 0x2

    .line 291
    .line 292
    neg-int v11, v11

    .line 293
    neg-int v1, v1

    .line 294
    neg-int v2, v2

    .line 295
    if-le v3, v5, :cond_f

    .line 296
    .line 297
    move/from16 v16, v5

    .line 298
    .line 299
    goto :goto_a

    .line 300
    :cond_f
    move/from16 v16, v3

    .line 301
    .line 302
    :goto_a
    rsub-int/lit8 v16, v16, 0x20

    .line 303
    .line 304
    ushr-int v16, v20, v16

    .line 305
    .line 306
    and-int/lit8 v16, v16, 0x3f

    .line 307
    .line 308
    mul-int v20, v15, v11

    .line 309
    .line 310
    mul-int v21, v15, v15

    .line 311
    .line 312
    add-int/lit8 v21, v21, -0x2

    .line 313
    .line 314
    mul-int v21, v21, v20

    .line 315
    .line 316
    and-int v16, v21, v16

    .line 317
    .line 318
    move/from16 v23, v2

    .line 319
    .line 320
    move v2, v0

    .line 321
    move/from16 v0, v23

    .line 322
    .line 323
    move/from16 v23, v6

    .line 324
    .line 325
    move v6, v1

    .line 326
    move/from16 v1, v23

    .line 327
    .line 328
    move/from16 v23, v15

    .line 329
    .line 330
    move v15, v11

    .line 331
    move/from16 v11, v23

    .line 332
    .line 333
    goto :goto_c

    .line 334
    :cond_10
    if-le v3, v5, :cond_11

    .line 335
    .line 336
    move/from16 v16, v5

    .line 337
    .line 338
    goto :goto_b

    .line 339
    :cond_11
    move/from16 v16, v3

    .line 340
    .line 341
    :goto_b
    rsub-int/lit8 v16, v16, 0x20

    .line 342
    .line 343
    ushr-int v16, v20, v16

    .line 344
    .line 345
    and-int/lit8 v16, v16, 0xf

    .line 346
    .line 347
    add-int/lit8 v20, v11, 0x1

    .line 348
    .line 349
    and-int/lit8 v20, v20, 0x4

    .line 350
    .line 351
    shl-int/lit8 v20, v20, 0x1

    .line 352
    .line 353
    add-int v20, v11, v20

    .line 354
    .line 355
    move/from16 v21, v0

    .line 356
    .line 357
    neg-int v0, v15

    .line 358
    mul-int v20, v20, v0

    .line 359
    .line 360
    and-int v16, v20, v16

    .line 361
    .line 362
    move/from16 v0, v21

    .line 363
    .line 364
    :goto_c
    mul-int v20, v11, v16

    .line 365
    .line 366
    add-int v15, v20, v15

    .line 367
    .line 368
    mul-int v20, v1, v16

    .line 369
    .line 370
    add-int v6, v20, v6

    .line 371
    .line 372
    mul-int v16, v16, v2

    .line 373
    .line 374
    add-int v0, v16, v0

    .line 375
    .line 376
    move/from16 p1, v3

    .line 377
    .line 378
    move/from16 v16, v5

    .line 379
    .line 380
    move/from16 v3, v19

    .line 381
    .line 382
    move-object/from16 v5, p2

    .line 383
    .line 384
    move/from16 v19, v2

    .line 385
    .line 386
    move/from16 v2, v18

    .line 387
    .line 388
    move/from16 v18, v1

    .line 389
    .line 390
    move/from16 v1, v22

    .line 391
    .line 392
    goto/16 :goto_9
.end method
