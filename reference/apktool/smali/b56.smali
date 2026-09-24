.class public final synthetic Lb56;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lk28;


# direct methods
.method public synthetic constructor <init>(Lk28;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb56;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb56;->b:Lk28;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb56;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lb56;->b:Lk28;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const v0, 0x7f14029b

    .line 26
    .line 27
    .line 28
    if-eq p0, v0, :cond_0

    .line 29
    .line 30
    const v0, 0x7f14029e

    .line 31
    .line 32
    .line 33
    if-ne p0, v0, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 v1, 0x1

    .line 36
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_0
    const-class v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 42
    .line 43
    invoke-static {p0, v0}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lbe8;->a:Lbe8;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
