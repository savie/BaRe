.class public final Leu1;
.super Lfm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt36;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfm0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "email"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lzn4;->a:Lzn4;

    .line 13
    .line 14
    new-instance p1, Ldu1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, p0, v0, v1}, Ldu1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "telegram_group"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 40
    .line 41
    const-string v0, "https://t.me/swiftbackupsupport"

    .line 42
    .line 43
    invoke-static {p1, v0}, Lai8;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 57
    .line 58
    const v0, 0x7f1303c3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p0}, Lai8;->n(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return v1
.end method

.method public final l()V
    .locals 2

    .line 1
    const v0, 0x7f160010

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lc46;->i(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lfm0;->n()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/preference/Preference;

    .line 26
    .line 27
    iput-object p0, v1, Landroidx/preference/Preference;->f:Lt36;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
