.class public final Lyr8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Lcom/google/android/material/button/MaterialButton;

.field public final c:Lcom/google/android/material/button/MaterialButton;

.field public final d:Lzx2;

.field public final e:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final f:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lzx2;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyr8;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    .line 6
    iput-object p2, p0, Lyr8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 7
    .line 8
    iput-object p3, p0, Lyr8;->c:Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    iput-object p4, p0, Lyr8;->d:Lzx2;

    .line 11
    .line 12
    iput-object p5, p0, Lyr8;->e:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 13
    .line 14
    iput-object p6, p0, Lyr8;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    iput-object p7, p0, Lyr8;->k:Landroid/widget/TextView;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Landroid/view/View;)Lyr8;
    .locals 10

    .line 1
    const v0, 0x7f0a0129

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    move-object v4, v1

    .line 9
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    const v0, 0x7f0a012a

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v5, v1

    .line 21
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    const v0, 0x7f0a0208

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-static {v1}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const v0, 0x7f0a0302

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const v0, 0x7f0a03bf

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v7, v1

    .line 57
    check-cast v7, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 58
    .line 59
    if-eqz v7, :cond_0

    .line 60
    .line 61
    const v0, 0x7f0a044e

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v8, v1

    .line 69
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    .line 71
    if-eqz v8, :cond_0

    .line 72
    .line 73
    const v0, 0x7f0a0526

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v9, v1

    .line 81
    check-cast v9, Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz v9, :cond_0

    .line 84
    .line 85
    new-instance v2, Lyr8;

    .line 86
    .line 87
    move-object v3, p0

    .line 88
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 89
    .line 90
    invoke-direct/range {v2 .. v9}, Lyr8;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lzx2;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string v0, "Missing required view with ID: "

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 p0, 0x0

    .line 112
    return-object p0
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lyr8;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    return-object p0
.end method
