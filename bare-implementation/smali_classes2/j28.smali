.class public final synthetic Lj28;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lhj;

.field public final synthetic d:Lorg/swiftapps/swiftbackup/settings/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;Lhj;Lorg/swiftapps/swiftbackup/settings/SettingsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lj28;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lj28;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lj28;->c:Lhj;

    .line 9
    .line 10
    iput-object p4, p0, Lj28;->d:Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lj28;->a:I

    .line 5
    .line 6
    if-eq p2, p1, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Lj28;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lh28;

    .line 15
    .line 16
    iget-object p2, p0, Lj28;->c:Lhj;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lhj;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object p2, Lh28;->Companion:Lf28;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lh28;->getThemeId()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    sget-object p2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    const-string v0, "app_theme_mode"

    .line 38
    .line 39
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lha7;->d()V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lj28;->d:Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 50
    .line 51
    iget-object p1, p0, Lk28;->d:Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-static {p0}, Lf28;->d(Lk28;)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eq p1, p2, :cond_2

    .line 65
    .line 66
    :goto_0
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, "Theme changed, posting ForcedConfigChange"

    .line 71
    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    new-instance p0, Ltq3;

    .line 76
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lny2;->b()Lny2;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, p0}, Lny2;->e(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    const-string p0, "editor"

    .line 89
    .line 90
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    throw p0

    .line 95
    :cond_2
    return-void
.end method
