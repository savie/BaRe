.class public final Lga7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final b:Lw00;


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lga7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lga7;->b:Lw00;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lga7;
    .locals 4

    .line 1
    const v0, 0x7f0d0171

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
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f0a017a

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/widget/FrameLayout;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    new-instance v1, Lga7;

    .line 35
    .line 36
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 37
    .line 38
    invoke-direct {v1, p0, v0}, Lga7;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_0
    move v0, v1

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "Missing required view with ID: "

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v2
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lga7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    .line 3
    return-object p0
.end method
