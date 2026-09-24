.class public final synthetic Lxi5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;


# direct methods
.method public synthetic constructor <init>(ZLorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lxi5;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lxi5;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 2
    .line 3
    iget-boolean p1, p0, Lxi5;->a:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object p1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object p0, p0, Lxi5;->b:Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->N()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/settings/f;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->isPremium()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v0, 0x1

    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    sget-object p1, Lzn4;->a:Lzn4;

    .line 38
    .line 39
    new-instance p1, Lb56;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-direct {p1, p0, v0}, Lb56;-><init>(Lk28;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->N()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Landroid/content/Intent;

    .line 57
    .line 58
    const-class v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 59
    .line 60
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "extra_mbs_strategy"

    .line 64
    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const/4 v0, -0x1

    .line 73
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 77
    .line 78
    .line 79
    return-void
.end method
