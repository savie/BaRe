.class public final Lorg/swiftapps/swiftbackup/settings/SettingsActivity;
.super Ler6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic Z:I


# instance fields
.field public final X:Lgv7;

.field public Y:Landroidx/fragment/app/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ler6;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpr4;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lpr4;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;->X:Lgv7;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final C()Landroidx/fragment/app/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;->Y:Landroidx/fragment/app/o;

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
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;->X:Lgv7;

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
    :cond_0
    invoke-virtual {p0, p1}, Lil0;->E(Landroid/os/Bundle;)Landroidx/fragment/app/o;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    new-instance p1, Lpa7;

    .line 56
    .line 57
    invoke-direct {p1}, Lpa7;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;->Y:Landroidx/fragment/app/o;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroidx/fragment/app/a;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;->Y:Landroidx/fragment/app/o;

    .line 75
    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    const p1, 0x7f0a017a

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/a;->j(ILandroidx/fragment/app/o;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/fragment/app/a;->e()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    const-string p0, "mFragment"

    .line 89
    .line 90
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    throw p0
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

.method public final s()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
