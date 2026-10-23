.class public final Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic S:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public R:Landroidx/fragment/app/o;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo30;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lo30;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ll90;

    .line 11
    .line 12
    const-class v3, La40;

    .line 13
    .line 14
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lp30;

    .line 19
    .line 20
    invoke-direct {v4, p0, v1}, Lp30;-><init>(Lil0;I)V

    .line 21
    .line 22
    .line 23
    new-instance v5, Lq30;

    .line 24
    .line 25
    invoke-direct {v5, p0, v1}, Lq30;-><init>(Lil0;I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3, v4, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;->P:Ll90;

    .line 32
    .line 33
    new-instance v0, Ldk;

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-direct {v0, p0, v1}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lgv7;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;->Q:Lgv7;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final C()Landroidx/fragment/app/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;->R:Landroidx/fragment/app/o;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "mFragment"

    .line 7
    .line 8
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final F()Lqo0;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, La40;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;->Q:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lr30;

    .line 11
    .line 12
    iget-object v1, v1, Lr30;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lr30;

    .line 22
    .line 23
    iget-object v0, v0, Lr30;->b:Lw00;

    .line 24
    .line 25
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lix0;

    .line 28
    .line 29
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Lnc8;->Z(Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lil0;->E(Landroid/os/Bundle;)Landroidx/fragment/app/o;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    new-instance p1, Ly30;

    .line 53
    .line 54
    invoke-direct {p1}, Ly30;-><init>()V

    .line 55
    .line 56
    .line 57
    :cond_1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;->R:Landroidx/fragment/app/o;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v0, Landroidx/fragment/app/a;

    .line 67
    .line 68
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    iput p1, v0, Landroidx/fragment/app/a;->b:I

    .line 73
    .line 74
    iput p1, v0, Landroidx/fragment/app/a;->c:I

    .line 75
    .line 76
    iput p1, v0, Landroidx/fragment/app/a;->d:I

    .line 77
    .line 78
    iput p1, v0, Landroidx/fragment/app/a;->e:I

    .line 79
    .line 80
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;->R:Landroidx/fragment/app/o;

    .line 81
    .line 82
    if-eqz p0, :cond_2

    .line 83
    .line 84
    const p1, 0x7f0a0245

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/a;->j(ILandroidx/fragment/app/o;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/fragment/app/a;->e()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    const-string p0, "mFragment"

    .line 95
    .line 96
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    throw p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0f0005

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0a0037

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const v0, 0x7f130057

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/content/Intent;

    .line 24
    .line 25
    const-class v2, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 26
    .line 27
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "category"

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string v2, "category_title"

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const v1, 0x7f0a0082

    .line 46
    .line 47
    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    new-instance v0, Landroid/content/Intent;

    .line 51
    .line 52
    const-class v1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 53
    .line 54
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0
.end method

.method public final s()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
