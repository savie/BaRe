.class public final Lfh2;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lio1;

.field public final f:Z

.field public final k:La20;

.field public final n:Lgh2;

.field public final p:Lkb2;

.field public final q:Lkb2;

.field public final r:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>(Lio1;ZLa20;)V
    .locals 3

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lol1;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lfh2;->e:Lio1;

    .line 8
    .line 9
    iput-boolean p2, p0, Lfh2;->f:Z

    .line 10
    .line 11
    iput-object p3, p0, Lfh2;->k:La20;

    .line 12
    .line 13
    const p2, 0x7f0d007a

    .line 14
    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const p2, 0x7f0a00f8

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const p2, 0x7f0a04e3

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-static {v1}, Ly8;->b(Landroid/view/View;)Ly8;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const v1, 0x7f0a04e4

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-static {v2}, Ly8;->b(Landroid/view/View;)Ly8;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    new-instance v1, Lgh2;

    .line 59
    .line 60
    check-cast p1, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    invoke-direct {v1, p1, v0, p2, p3}, Lgh2;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Ly8;Ly8;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lfh2;->n:Lgh2;

    .line 66
    .line 67
    new-instance p1, Lkb2;

    .line 68
    .line 69
    invoke-direct {p1, p3}, Lkb2;-><init>(Ly8;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lfh2;->p:Lkb2;

    .line 73
    .line 74
    new-instance p1, Lkb2;

    .line 75
    .line 76
    invoke-direct {p1, p2}, Lkb2;-><init>(Ly8;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lfh2;->q:Lkb2;

    .line 80
    .line 81
    iput-object v0, p0, Lfh2;->r:Lcom/google/android/material/button/MaterialButton;

    .line 82
    .line 83
    return-void

    .line 84
    :cond_0
    move p2, v1

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string p1, "Missing required view with ID: "

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p3
.end method


# virtual methods
.method public final i()Ljk8;
    .locals 6

    .line 1
    iget-object v0, p0, Lfh2;->p:Lkb2;

    .line 2
    .line 3
    iget-object v1, v0, Lkb2;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    iget-boolean v2, p0, Lfh2;->f:Z

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v2, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v2, 0x8

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lkb2;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    new-instance v1, Leh2;

    .line 30
    .line 31
    invoke-direct {v1, v3, p0, v0}, Leh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const v2, 0x7f0801a2

    .line 35
    .line 36
    .line 37
    const v4, 0x7f1302dd

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-virtual {v0, v2, v4, v5, v1}, Lkb2;->a(IIZLmt3;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lfh2;->q:Lkb2;

    .line 45
    .line 46
    iget-object v1, v0, Lkb2;->a:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lkb2;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    new-instance v1, Ldq;

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    invoke-direct {v1, v2}, Ldq;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const v2, 0x7f08010e

    .line 70
    .line 71
    .line 72
    const v4, 0x7f1302dc

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v4, v3, v1}, Lkb2;->a(IIZLmt3;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    new-instance v0, Lnf;

    .line 79
    .line 80
    const/4 v1, 0x5

    .line 81
    invoke-direct {v0, p0, v1}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lfh2;->r:Lcom/google/android/material/button/MaterialButton;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lfh2;->n:Lgh2;

    .line 90
    .line 91
    return-object p0
.end method
