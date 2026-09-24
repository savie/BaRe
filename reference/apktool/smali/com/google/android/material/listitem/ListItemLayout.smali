.class public Lcom/google/android/material/listitem/ListItemLayout;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final G:[I

.field public static final H:[I

.field public static final I:[I

.field public static final J:[I

.field public static final K:Landroid/view/animation/PathInterpolator;


# instance fields
.field public a:[I

.field public b:Lgl8;

.field public c:Landroid/view/GestureDetector;

.field public d:I

.field public e:I

.field public f:Lcx4;

.field public k:Lix4;

.field public n:Lix4;

.field public p:Lix4;

.field public q:Z

.field public r:Lfx4;

.field public t:I

.field public x:I

.field public final y:Lgx4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x10100a4

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/material/listitem/ListItemLayout;->G:[I

    .line 9
    .line 10
    const v0, 0x10100a5

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/material/listitem/ListItemLayout;->H:[I

    .line 18
    .line 19
    const v0, 0x10100a6

    .line 20
    .line 21
    .line 22
    filled-new-array {v0}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/google/android/material/listitem/ListItemLayout;->I:[I

    .line 27
    .line 28
    const v0, 0x10100a3

    .line 29
    .line 30
    .line 31
    filled-new-array {v0}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/google/android/material/listitem/ListItemLayout;->J:[I

    .line 36
    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 38
    .line 39
    const v1, 0x3e570a3d    # 0.21f

    .line 40
    .line 41
    .line 42
    const v2, 0x3f666666    # 0.9f

    .line 43
    .line 44
    .line 45
    const v3, 0x3ed70a3d    # 0.42f

    .line 46
    .line 47
    .line 48
    const v4, 0x3fd5c28f    # 1.67f

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/google/android/material/listitem/ListItemLayout;->K:Landroid/view/animation/PathInterpolator;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/listitem/ListItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0403b2

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/listitem/ListItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f140586

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/listitem/ListItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lzm5;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->t:I

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->x:I

    .line 12
    .line 13
    new-instance p1, Lgx4;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lgx4;-><init>(Lcom/google/android/material/listitem/ListItemLayout;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->y:Lgx4;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/listitem/ListItemLayout;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/listitem/ListItemLayout;->getSwipeViewClosedOffset()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static f(Lix4;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    .line 7
    invoke-static {p0}, Llg7;->w(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 14
    .line 15
    sub-int/2addr p2, p1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sub-int p1, p2, p1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 24
    .line 25
    add-int/2addr p1, p2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    add-int/2addr p2, p1

    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private getSwipeViewClosedOffset()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    instance-of p2, p1, Lix4;

    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Llg7;->w(Landroid/view/View;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    move-object p2, p1

    .line 19
    check-cast p2, Lix4;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "Only one RevealableListItem with end gravity is supported."

    .line 25
    .line 26
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 31
    .line 32
    if-nez p2, :cond_2

    .line 33
    .line 34
    move-object p2, p1

    .line 35
    check-cast p2, Lix4;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 38
    .line 39
    :goto_0
    move-object p2, p1

    .line 40
    check-cast p2, Lix4;

    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-virtual {p2, p3}, Lix4;->setRevealedWidth(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    .line 52
    sub-float/2addr p0, p2

    .line 53
    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    const-string p0, "Only one RevealableListItem with start gravity is supported."

    .line 58
    .line 59
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 64
    .line 65
    if-eqz p2, :cond_5

    .line 66
    .line 67
    instance-of p2, p1, Lcx4;

    .line 68
    .line 69
    if-nez p2, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const-string p0, "Only one SwipeableListItem view is allowed in a ListItemLayout."

    .line 73
    .line 74
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    :goto_1
    instance-of p2, p1, Lcx4;

    .line 79
    .line 80
    if-eqz p2, :cond_6

    .line 81
    .line 82
    check-cast p1, Lcx4;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 85
    .line 86
    :cond_6
    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ldu0;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v0, p0, v2}, Ldu0;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lgl8;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v2, v3, p0, v0}, Lgl8;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lly8;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->c:Landroid/view/GestureDetector;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    new-instance v0, Landroid/view/GestureDetector;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-instance v3, Lex4;

    .line 45
    .line 46
    invoke-direct {v3, p0}, Lex4;-><init>(Lcom/google/android/material/listitem/ListItemLayout;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->c:Landroid/view/GestureDetector;

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->r:Lfx4;

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    new-instance v0, Lfx4;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lfx4;-><init>(Lcom/google/android/material/listitem/ListItemLayout;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->r:Lfx4;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput-boolean v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->q:Z

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 83
    .line 84
    .line 85
    :cond_4
    const/4 p0, 0x1

    .line 86
    return p0

    .line 87
    :cond_5
    :goto_0
    return v1
.end method

.method public final c(II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/material/listitem/ListItemLayout;->l(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/google/android/material/listitem/ListItemLayout;->e(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    const-string p0, "Invalid state to get swipe offset: "

    .line 22
    .line 23
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/material/listitem/ListItemLayout;->d(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/listitem/ListItemLayout;->getSwipeViewClosedOffset()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_3
    const-string p0, "No RevealableListItem with gravity "

    .line 43
    .line 44
    invoke-static {p2, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0
.end method

.method public final d(I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    and-int/lit8 v0, v0, 0x7

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x5

    .line 13
    const/4 v3, 0x3

    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 30
    .line 31
    :goto_2
    if-nez v0, :cond_3

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    .line 41
    invoke-virtual {v0}, Lix4;->getIntrinsicWidth()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 46
    .line 47
    add-int/2addr v0, v5

    .line 48
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 49
    .line 50
    add-int/2addr v0, v4

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {p1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    and-int/lit8 p1, p1, 0x7

    .line 60
    .line 61
    if-ne p1, v3, :cond_4

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_4
    if-ne p1, v2, :cond_5

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ne p1, v1, :cond_6

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_6
    :goto_3
    const/4 v1, -0x1

    .line 75
    :goto_4
    iget p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 76
    .line 77
    mul-int/2addr v1, v0

    .line 78
    add-int/2addr v1, p0

    .line 79
    return v1
.end method

.method public final e(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 20
    .line 21
    add-int/2addr v1, v2

    .line 22
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 23
    .line 24
    add-int/2addr v1, v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    and-int/lit8 p1, p1, 0x7

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x5

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-ne p1, v2, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    const/4 v2, -0x1

    .line 52
    :goto_1
    iget p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 53
    .line 54
    mul-int/2addr v2, v1

    .line 55
    add-int/2addr v2, p0

    .line 56
    return v2
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Llg7;->w(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-static {v3}, Llg7;->w(Landroid/view/View;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    move v1, v2

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 38
    .line 39
    iget v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->d:I

    .line 40
    .line 41
    mul-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    iput v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->d:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const/4 v2, 0x0

    .line 47
    const-string v3, "Cannot have more than one RevealableListItem with the same absolute gravity."

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 58
    .line 59
    iput-object v2, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 60
    .line 61
    iget v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->d:I

    .line 62
    .line 63
    mul-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    iput v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->d:I

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    if-eqz v1, :cond_6

    .line 73
    .line 74
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 75
    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 81
    .line 82
    iput-object v2, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 83
    .line 84
    iget v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->d:I

    .line 85
    .line 86
    mul-int/lit8 v0, v0, -0x1

    .line 87
    .line 88
    iput v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->d:I

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    invoke-static {v3}, Ll0;->e(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    return-void
.end method

.method public getSwipeState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->t:I

    .line 2
    .line 3
    return p0
.end method

.method public final h(Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "revealView must be a child of ListItemLayout."

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    .line 22
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->k()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    new-instance v0, Ldx4;

    .line 35
    .line 36
    move-object v1, p0

    .line 37
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;

    .line 38
    .line 39
    invoke-direct {v0, v1, p2, p1}, Ldx4;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;ZI)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ldx4;->run()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    const-string p0, "ListItemLayout must have a SwipeableListItem child and a RevealableListItem child to be swiped."

    .line 57
    .line 58
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final i(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 p2, p2, 0x7

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x5

    .line 13
    const/4 v2, 0x3

    .line 14
    if-ne p2, v2, :cond_0

    .line 15
    .line 16
    :goto_0
    move p2, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-ne p2, v1, :cond_2

    .line 19
    .line 20
    :cond_1
    move p2, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-ne p2, v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget v3, p0, Lcom/google/android/material/listitem/ListItemLayout;->t:I

    .line 30
    .line 31
    if-ne p1, v3, :cond_4

    .line 32
    .line 33
    iget-object v3, p0, Lcom/google/android/material/listitem/ListItemLayout;->p:Lix4;

    .line 34
    .line 35
    if-eqz v3, :cond_12

    .line 36
    .line 37
    invoke-static {v3}, Llg7;->w(Landroid/view/View;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    move v3, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move v3, v2

    .line 46
    :goto_2
    if-ne v3, p2, :cond_4

    .line 47
    .line 48
    goto/16 :goto_9

    .line 49
    .line 50
    :cond_4
    if-eq p1, v2, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lcom/google/android/material/listitem/ListItemLayout;->l(I)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_5

    .line 57
    .line 58
    goto/16 :goto_9

    .line 59
    .line 60
    :cond_5
    if-ne p1, v1, :cond_6

    .line 61
    .line 62
    iget-object v3, p0, Lcom/google/android/material/listitem/ListItemLayout;->p:Lix4;

    .line 63
    .line 64
    if-eqz v3, :cond_12

    .line 65
    .line 66
    invoke-virtual {v3}, Lix4;->getPrimaryActionSwipeMode()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_6

    .line 71
    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-static {p2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    and-int/lit8 p2, p2, 0x7

    .line 83
    .line 84
    if-ne p2, v2, :cond_7

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_7
    if-ne p2, v1, :cond_8

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-ne p2, v0, :cond_9

    .line 95
    .line 96
    :goto_3
    iget-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_9
    :goto_4
    iget-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 100
    .line 101
    :goto_5
    iput-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->p:Lix4;

    .line 102
    .line 103
    iput p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->t:I

    .line 104
    .line 105
    if-eq p1, v0, :cond_a

    .line 106
    .line 107
    const/4 v3, 0x2

    .line 108
    if-eq p1, v3, :cond_a

    .line 109
    .line 110
    iput p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->x:I

    .line 111
    .line 112
    :cond_a
    if-eqz p2, :cond_b

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 119
    .line 120
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    .line 122
    :cond_b
    iget-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->p:Lix4;

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    if-eq p1, v2, :cond_c

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_c
    move v0, v3

    .line 134
    :goto_6
    iput-boolean v0, p2, Lcx4;->G:Z

    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/view/View;->refreshDrawableState()V

    .line 137
    .line 138
    .line 139
    iget-object p2, p2, Lcx4;->J:Ljava/util/LinkedHashSet;

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    :cond_d
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_12

    .line 150
    .line 151
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lkr;

    .line 156
    .line 157
    iget-object v0, v0, Lkr;->a:Ltr;

    .line 158
    .line 159
    iget-object v2, v0, Ltr;->W:Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    if-eq p1, v1, :cond_e

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_e
    iget-object v4, v0, Ltr;->K:Lji;

    .line 168
    .line 169
    if-nez v4, :cond_f

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_f
    :try_start_0
    iget-object v5, v0, Ltr;->J:Ldr;

    .line 173
    .line 174
    iget-object v5, v5, Ldr;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v5, Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;

    .line 177
    .line 178
    invoke-virtual {v5, v2, v3}, Lcom/google/android/material/listitem/ListItemLayout;->h(Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    .line 181
    :catch_0
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_10

    .line 186
    .line 187
    iget-object v2, v0, Ltr;->l0:Loy;

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_10
    iget-object v2, v0, Ltr;->X:Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

    .line 191
    .line 192
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_11

    .line 197
    .line 198
    iget-object v2, v0, Ltr;->m0:Loy;

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_11
    const/4 v2, 0x0

    .line 202
    :goto_8
    if-eqz v2, :cond_d

    .line 203
    .line 204
    iget-object v0, v0, Ltr;->G:Lqt3;

    .line 205
    .line 206
    if-eqz v0, :cond_d

    .line 207
    .line 208
    invoke-interface {v0, v2, v4}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_12
    :goto_9
    return-void
.end method

.method public final j(Lcx4;II)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/listitem/ListItemLayout;->c(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x4

    .line 16
    if-ne p2, v4, :cond_3

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    iput-object p1, v1, Lgl8;->t:Landroid/view/View;

    .line 23
    .line 24
    const/4 v5, -0x1

    .line 25
    iput v5, v1, Lgl8;->c:I

    .line 26
    .line 27
    iget-object v6, v1, Lgl8;->r:Landroid/widget/OverScroller;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    iget-object p1, v1, Lgl8;->t:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    sub-int v9, v0, v7

    .line 40
    .line 41
    sub-int v10, v4, v8

    .line 42
    .line 43
    if-nez v9, :cond_1

    .line 44
    .line 45
    if-nez v10, :cond_1

    .line 46
    .line 47
    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {v1, p1}, Lgl8;->o(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sget-object p1, Lcom/google/android/material/listitem/ListItemLayout;->K:Landroid/view/animation/PathInterpolator;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iput-object p1, v1, Lgl8;->w:Landroid/view/animation/Interpolator;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object p1, Lgl8;->y:Lel8;

    .line 63
    .line 64
    iput-object p1, v1, Lgl8;->w:Landroid/view/animation/Interpolator;

    .line 65
    .line 66
    :goto_0
    const/16 v11, 0x15e

    .line 67
    .line 68
    invoke-virtual/range {v6 .. v11}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lgl8;->o(I)V

    .line 72
    .line 73
    .line 74
    move p1, v2

    .line 75
    :goto_1
    if-nez p1, :cond_4

    .line 76
    .line 77
    iget v0, v1, Lgl8;->a:I

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    iget-object v0, v1, Lgl8;->t:Landroid/view/View;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    iput-object v0, v1, Lgl8;->t:Landroid/view/View;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v1, p1, v0, v4}, Lgl8;->r(Landroid/view/View;II)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    :cond_4
    :goto_2
    if-eqz p1, :cond_6

    .line 98
    .line 99
    invoke-virtual {p0, v3, p3}, Lcom/google/android/material/listitem/ListItemLayout;->i(II)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->y:Lgx4;

    .line 103
    .line 104
    iput p2, p0, Lgx4;->a:I

    .line 105
    .line 106
    iput p3, p0, Lgx4;->b:I

    .line 107
    .line 108
    iget-boolean p1, p0, Lgx4;->c:Z

    .line 109
    .line 110
    if-nez p1, :cond_5

    .line 111
    .line 112
    iget-object p1, p0, Lgx4;->e:Lcom/google/android/material/listitem/ListItemLayout;

    .line 113
    .line 114
    iget-object p2, p0, Lgx4;->d:Lis;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    iput-boolean v2, p0, Lgx4;->c:Z

    .line 120
    .line 121
    :cond_5
    :goto_3
    return-void

    .line 122
    :cond_6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/listitem/ListItemLayout;->i(II)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final l(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->g()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    and-int/lit8 p1, p1, 0x7

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x5

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x1

    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 30
    .line 31
    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 37
    .line 38
    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final m(II)V
    .locals 1

    .line 1
    if-ne p2, p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/listitem/ListItemLayout;->getSwipeViewClosedOffset()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    add-int/2addr p2, p1

    .line 8
    div-int/lit8 p2, p2, 0x2

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    add-int/2addr p2, p1

    .line 12
    div-int/lit8 p2, p2, 0x2

    .line 13
    .line 14
    :goto_0
    iget v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->d:I

    .line 15
    .line 16
    sub-int/2addr v0, p2

    .line 17
    int-to-float v0, v0

    .line 18
    sub-int/2addr p1, p2

    .line 19
    int-to-float p1, p1

    .line 20
    div-float/2addr v0, p1

    .line 21
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {p1, p2, v0}, Led;->a(FFF)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final n(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 14
    .line 15
    sub-int/2addr p1, v0

    .line 16
    iput p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->d:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    if-lez p1, :cond_1

    .line 21
    .line 22
    move v2, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v2, v1

    .line 25
    :goto_0
    if-gez p1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move v0, v1

    .line 29
    :goto_1
    if-eqz v2, :cond_3

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->p:Lix4;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->p:Lix4;

    .line 45
    .line 46
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 55
    .line 56
    if-eqz v3, :cond_6

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .line 64
    iget v4, p0, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 65
    .line 66
    iget-object v5, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 67
    .line 68
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    sub-int/2addr v4, v5

    .line 73
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    iget v5, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 78
    .line 79
    sub-int/2addr v4, v5

    .line 80
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    sub-int/2addr v4, v5

    .line 85
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    sub-int/2addr v4, v3

    .line 90
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    move v3, v1

    .line 98
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 99
    .line 100
    invoke-virtual {v4, v3}, Lix4;->setRevealedWidth(I)V

    .line 101
    .line 102
    .line 103
    :cond_6
    iget-object v3, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 104
    .line 105
    if-eqz v3, :cond_8

    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 112
    .line 113
    iget v4, p0, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 114
    .line 115
    iget-object v5, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 116
    .line 117
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    sub-int/2addr v4, v5

    .line 122
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 127
    .line 128
    sub-int/2addr v4, p1

    .line 129
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    sub-int/2addr v4, p1

    .line 134
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    sub-int/2addr v4, p1

    .line 139
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    move v1, p1

    .line 146
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Lix4;->setRevealedWidth(I)V

    .line 149
    .line 150
    .line 151
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 152
    .line 153
    iget-object p1, p1, Lcx4;->J:Ljava/util/LinkedHashSet;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_9

    .line 164
    .line 165
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Lkr;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_9
    if-eqz v0, :cond_a

    .line 176
    .line 177
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 178
    .line 179
    if-eqz p1, :cond_a

    .line 180
    .line 181
    const/4 p1, 0x5

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/material/listitem/ListItemLayout;->e(I)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-virtual {p0, p1}, Lcom/google/android/material/listitem/ListItemLayout;->d(I)I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/listitem/ListItemLayout;->m(II)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_a
    if-eqz v2, :cond_b

    .line 195
    .line 196
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 197
    .line 198
    if-eqz p1, :cond_b

    .line 199
    .line 200
    const/4 p1, 0x3

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/android/material/listitem/ListItemLayout;->e(I)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    invoke-virtual {p0, p1}, Lcom/google/android/material/listitem/ListItemLayout;->d(I)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/listitem/ListItemLayout;->m(II)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_b
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 214
    .line 215
    const/high16 p1, 0x3f800000    # 1.0f

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 218
    .line 219
    .line 220
    :cond_c
    :goto_5
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->a:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->a:[I

    .line 17
    .line 18
    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->c:Landroid/view/GestureDetector;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lgl8;->q(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 31
    .line 32
    invoke-virtual {p0}, Lgl8;->a()V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->g()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->k()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->b()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 38
    .line 39
    iget p3, p0, Lcom/google/android/material/listitem/ListItemLayout;->d:I

    .line 40
    .line 41
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    iget p3, p0, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 49
    .line 50
    invoke-static {p2, p3, p1}, Lcom/google/android/material/listitem/ListItemLayout;->f(Lix4;II)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    iget p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 58
    .line 59
    invoke-static {p2, p0, p1}, Lcom/google/android/material/listitem/ListItemLayout;->f(Lix4;II)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lgl8;->j(Landroid/view/MotionEvent;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->c:Landroid/view/GestureDetector;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 18
    .line 19
    iget v0, v0, Lgl8;->a:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 20
    .line 21
    if-ne v0, p1, :cond_2

    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 24
    .line 25
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->k()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    return-void

    .line 37
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->c:Landroid/view/GestureDetector;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->r:Lfx4;

    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->q:Z

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
