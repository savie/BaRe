.class public final Lcom/microsoft/identity/common/internal/providers/oauth2/SilentAuthorizationActivity;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getThemeResId()I
    .locals 0

    .line 1
    const p0, 0x7f1404ae

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentAuthorizationActivity;->setEdgeToEdge()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setEdgeToEdge()V
    .locals 6

    .line 1
    new-instance v0, Lgf1;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lgf1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lmv7;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, v2, v2, v0}, Lmv7;-><init>(IIILmt3;)V

    .line 11
    .line 12
    .line 13
    sget v0, Los2;->a:I

    .line 14
    .line 15
    sget v3, Los2;->b:I

    .line 16
    .line 17
    new-instance v4, Lgf1;

    .line 18
    .line 19
    const/4 v5, 0x5

    .line 20
    invoke-direct {v4, v5}, Lgf1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v5, Lmv7;

    .line 24
    .line 25
    invoke-direct {v5, v0, v3, v2, v4}, Lmv7;-><init>(IIILmt3;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v1, v5}, Los2;->a(Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;Lmv7;Lmv7;)V

    .line 29
    .line 30
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v1, 0x1d

    .line 34
    .line 35
    if-lt v0, v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final setFragment(Landroidx/fragment/app/o;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 27
    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lio1;->setContentView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroidx/fragment/app/a;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/a;->j(ILandroidx/fragment/app/o;)V

    .line 54
    .line 55
    .line 56
    iget-boolean p0, v2, Landroidx/fragment/app/a;->g:Z

    .line 57
    .line 58
    if-nez p0, :cond_0

    .line 59
    .line 60
    iput-boolean v1, v2, Landroidx/fragment/app/a;->h:Z

    .line 61
    .line 62
    iget-object p0, v2, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/z;

    .line 63
    .line 64
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/z;->A(Landroidx/fragment/app/a;Z)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    const-string p0, "This transaction is already being added to the back stack"

    .line 69
    .line 70
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
