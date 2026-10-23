.class public final synthetic Loa7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lpa7;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lpa7;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loa7;->a:Lpa7;

    .line 5
    .line 6
    iput-boolean p2, p0, Loa7;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Loa7;->a:Lpa7;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/common/Const;->A(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const v2, 0x7f130200

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v3, Lzn4;->a:Lzn4;

    .line 31
    .line 32
    new-instance v3, Ll30;

    .line 33
    .line 34
    const/16 v4, 0xf

    .line 35
    .line 36
    invoke-direct {v3, v4, v1, v2}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Lzn4;->e(Lbt3;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lpa7;->y:Lgv7;

    .line 43
    .line 44
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 49
    .line 50
    iget-boolean p0, p0, Loa7;->b:Z

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 53
    .line 54
    .line 55
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 56
    .line 57
    return-object p0
.end method
