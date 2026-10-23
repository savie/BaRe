.class public final Lsr1;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Ldd1;

.field public final f:Lrm;

.field public final k:Lwv0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldd1;Lrm;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lol1;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lsr1;->e:Ldd1;

    .line 11
    .line 12
    iput-object p3, p0, Lsr1;->f:Lrm;

    .line 13
    .line 14
    const p2, 0x7f0d0062

    .line 15
    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const p2, 0x7f0a00ec

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v3, v0

    .line 30
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const p2, 0x7f0a00f1

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v4, v0

    .line 42
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    const p2, 0x7f0a02b7

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v5, v0

    .line 54
    check-cast v5, Landroid/widget/ImageView;

    .line 55
    .line 56
    if-eqz v5, :cond_0

    .line 57
    .line 58
    const p2, 0x7f0a05ba

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object v6, v0

    .line 66
    check-cast v6, Landroid/widget/TextView;

    .line 67
    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    new-instance v1, Lwv0;

    .line 71
    .line 72
    move-object v2, p1

    .line 73
    check-cast v2, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-direct/range {v1 .. v6}, Lwv0;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lsr1;->k:Lwv0;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string p1, "Missing required view with ID: "

    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p3
.end method


# virtual methods
.method public final i()Ljk8;
    .locals 4

    .line 1
    iget-object v0, p0, Lsr1;->k:Lwv0;

    .line 2
    .line 3
    iget-object v1, v0, Lwv0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/widget/ImageView;

    .line 6
    .line 7
    iget-object v2, p0, Lsr1;->e:Ldd1;

    .line 8
    .line 9
    invoke-virtual {v2}, Ldd1;->getBrandingIconRes()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lwv0;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v2}, Ldd1;->getDisplayNameRes()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lwv0;->f:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 30
    .line 31
    new-instance v2, Lh00;

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-direct {v2, p0, v3}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lwv0;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 43
    .line 44
    new-instance v2, Li00;

    .line 45
    .line 46
    const/4 v3, 0x6

    .line 47
    invoke-direct {v2, p0, v3}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method
