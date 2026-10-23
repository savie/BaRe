.class public final Lorg/swiftapps/swiftbackup/settings/AppSwipeActionsActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic Q:I


# instance fields
.field public final P:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfj;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/settings/AppSwipeActionsActivity;->P:Lgv7;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/AppSwipeActionsActivity;->P:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lga7;

    .line 11
    .line 12
    iget-object v1, v1, Lga7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

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
    check-cast v0, Lga7;

    .line 22
    .line 23
    iget-object v0, v0, Lga7;->b:Lw00;

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
    invoke-virtual {v0}, Lnc8;->a0()V

    .line 47
    .line 48
    .line 49
    const v1, 0x7f130555

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lnc8;->e0(I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    if-nez p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance p1, Landroidx/fragment/app/a;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 67
    .line 68
    .line 69
    new-instance p0, Luy;

    .line 70
    .line 71
    invoke-direct {p0}, Luy;-><init>()V

    .line 72
    .line 73
    .line 74
    const v0, 0x7f0a017a

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/a;->j(ILandroidx/fragment/app/o;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/fragment/app/a;->e()V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
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
    const v1, 0x7f0f0001

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

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-static {}, Lha7;->d()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lsa1;->onDestroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

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
    const v1, 0x7f0a0079

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const p1, 0x7f0a017a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->C(I)Landroidx/fragment/app/o;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    instance-of p1, p0, Luy;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    check-cast p0, Luy;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p0, v0

    .line 33
    :goto_0
    if-eqz p0, :cond_2

    .line 34
    .line 35
    sget-object p1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const-string v0, "app_list_right_swipe_actions"

    .line 47
    .line 48
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    const-string v0, "app_list_left_swipe_actions"

    .line 52
    .line 53
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Luy;->l()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string p0, "prefs"

    .line 64
    .line 65
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 70
    return p0

    .line 71
    :cond_3
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0
.end method

.method public final s()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
