.class public final Ley2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Landroidx/core/widget/NestedScrollView;

.field public final b:Lcom/google/android/material/button/MaterialButton;

.field public final c:Lcom/google/android/material/button/MaterialButton;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 5
    .line 6
    iput-object p2, p0, Ley2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 7
    .line 8
    iput-object p3, p0, Ley2;->c:Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    iput-object p4, p0, Ley2;->d:Landroid/widget/ImageView;

    .line 11
    .line 12
    iput-object p5, p0, Ley2;->e:Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p6, p0, Ley2;->f:Landroid/widget/TextView;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Landroid/view/View;)Ley2;
    .locals 9

    .line 1
    const v0, 0x7f0a0103

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
    const v0, 0x7f0a0104

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
    move-object v3, p0

    .line 26
    check-cast v3, Landroidx/core/widget/NestedScrollView;

    .line 27
    .line 28
    const v0, 0x7f0a02b1

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v6, v1

    .line 36
    check-cast v6, Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    const v0, 0x7f0a053d

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move-object v7, v1

    .line 48
    check-cast v7, Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    const v0, 0x7f0a053e

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v8, v1

    .line 60
    check-cast v8, Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v8, :cond_0

    .line 63
    .line 64
    new-instance v2, Ley2;

    .line 65
    .line 66
    invoke-direct/range {v2 .. v8}, Ley2;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "Missing required view with ID: "

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x0

    .line 88
    return-object p0
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    return-object p0
.end method
