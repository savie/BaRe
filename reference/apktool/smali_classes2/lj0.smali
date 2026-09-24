.class public final Llj0;
.super Lu35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final T:Lgv7;


# instance fields
.field public final Q:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final R:Lgv7;

.field public final S:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzk;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lzk;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lgv7;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Llj0;->T:Lgv7;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lil0;)V
    .locals 6

    .line 1
    const v0, 0x7f0d0041

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Landroidx/core/widget/NestedScrollView;

    .line 11
    .line 12
    const v3, 0x7f0a00e2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    const v3, 0x7f0a040e

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 31
    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    new-instance v0, Lvv0;

    .line 35
    .line 36
    invoke-direct {v0, v2, v4, v5}, Lvv0;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x8

    .line 40
    .line 41
    invoke-direct {p0, p1, v0, v1}, Lu35;-><init>(Lk28;Ljk8;I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lu35;->K:Ljk8;

    .line 45
    .line 46
    check-cast p1, Lvv0;

    .line 47
    .line 48
    iget-object p1, p1, Lvv0;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 49
    .line 50
    iput-object p1, p0, Llj0;->Q:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 51
    .line 52
    new-instance p1, Ljx;

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    invoke-direct {p1, v0}, Ljx;-><init>(I)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lgv7;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Llj0;->R:Lgv7;

    .line 64
    .line 65
    iget-object p1, p0, Lu35;->K:Ljk8;

    .line 66
    .line 67
    check-cast p1, Lvv0;

    .line 68
    .line 69
    iget-object p1, p1, Lvv0;->b:Lcom/google/android/material/button/MaterialButton;

    .line 70
    .line 71
    iput-object p1, p0, Llj0;->S:Lcom/google/android/material/button/MaterialButton;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p1, "Missing required view with ID: "

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1
.end method


# virtual methods
.method public final j(Lpj0;Lbt3;)V
    .locals 5

    .line 1
    iget-object v0, p0, Llj0;->Q:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Llj0;->R:Lgv7;

    .line 16
    .line 17
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lij0;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lij0;

    .line 31
    .line 32
    invoke-virtual {p1}, Lpj0;->a()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v0, v4}, Lr35;->m(Lr35;Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lij0;

    .line 44
    .line 45
    new-instance v3, Lkj0;

    .line 46
    .line 47
    invoke-direct {v3, p0, p1}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iput-object v3, v0, Lij0;->f:Lkj0;

    .line 54
    .line 55
    iget-object v0, p1, Lpj0;->a:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p0, Llj0;->S:Lcom/google/android/material/button/MaterialButton;

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p1, Lpj0;->b:Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 69
    .line 70
    .line 71
    iget-boolean v0, p1, Lpj0;->d:Z

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Lpj0;->b()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move v1, v2

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 84
    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    .line 92
    .line 93
    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Li10;

    .line 97
    .line 98
    invoke-direct {v0, p1, p0, p2}, Li10;-><init>(Lpj0;Llj0;Lbt3;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lu35;->show()V

    .line 105
    .line 106
    .line 107
    return-void
.end method
