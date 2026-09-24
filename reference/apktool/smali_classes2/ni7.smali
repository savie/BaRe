.class public final Lni7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final b:Lw00;

.field public final c:Lix0;

.field public final d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lix0;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lni7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lni7;->b:Lw00;

    .line 7
    .line 8
    iput-object p3, p0, Lni7;->c:Lix0;

    .line 9
    .line 10
    iput-object p4, p0, Lni7;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lni7;
    .locals 5

    .line 1
    const v0, 0x7f0d0177

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const v0, 0x7f0a00a9

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f0a03a8

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    check-cast v3, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 33
    .line 34
    new-instance v1, Lix0;

    .line 35
    .line 36
    const/4 v4, 0x6

    .line 37
    invoke-direct {v1, v4, v3, v3}, Lix0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const v3, 0x7f0a03bf

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    new-instance v2, Lni7;

    .line 52
    .line 53
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 54
    .line 55
    invoke-direct {v2, p0, v0, v1, v4}, Lni7;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lix0;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :cond_0
    move v0, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v0, v1

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v0, "Missing required view with ID: "

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v2
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lni7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    .line 3
    return-object p0
.end method
