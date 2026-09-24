.class public final synthetic Lsy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lsy;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lsy;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Lsy;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lsy;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 10
    .line 11
    sget p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lil0;->A(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lil0;->z()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p0, Lil0;

    .line 21
    .line 22
    const-string p1, "moe.shizuku.privileged.api"

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Lai8;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    invoke-static {p0, p1}, Lai8;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :pswitch_1
    check-cast p0, Lbt3;

    .line 43
    .line 44
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    check-cast p0, Ljava/util/Set;

    .line 49
    .line 50
    sget p1, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->P:I

    .line 51
    .line 52
    sget-object p1, Lzn4;->a:Lzn4;

    .line 53
    .line 54
    new-instance p1, Lvr0;

    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    invoke-direct {p1, p0, p2}, Lvr0;-><init>(Ljava/util/Set;Ljv1;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_3
    check-cast p0, Ljh6;

    .line 65
    .line 66
    iput p2, p0, Ljh6;->a:I

    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
