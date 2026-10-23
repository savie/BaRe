.class public Lcom/pcloud/sdk/CustomTabActivity;
.super Landroid/app/Activity;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lb72;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 7
    .line 8
    const-string p2, "CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION"

    .line 9
    .line 10
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string p3, "AuthorizationActivity.EXTRA_URL"

    .line 22
    .line 23
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lnz4;->e(Landroid/app/Activity;)Lnz4;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2, p1}, Lnz4;->g(Landroid/content/Intent;)Z

    .line 31
    .line 32
    .line 33
    new-instance p1, Lb72;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lb72;-><init>(Lcom/pcloud/sdk/CustomTabActivity;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/pcloud/sdk/CustomTabActivity;->a:Lb72;

    .line 39
    .line 40
    invoke-static {p0}, Lnz4;->e(Landroid/app/Activity;)Lnz4;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p0, p0, Lcom/pcloud/sdk/CustomTabActivity;->a:Lb72;

    .line 45
    .line 46
    new-instance p2, Landroid/content/IntentFilter;

    .line 47
    .line 48
    const-string p3, "CustomTabActivity.DESTROY_ACTION"

    .line 49
    .line 50
    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0, p2}, Lnz4;->f(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v0, Lcom/pcloud/sdk/AuthorizationActivity;

    .line 7
    .line 8
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "AuthorizationActivity.EXTRA_URL"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const/high16 v0, 0x24000000

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x53a

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-static {p0}, Lnz4;->e(Landroid/app/Activity;)Lnz4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/pcloud/sdk/CustomTabActivity;->a:Lb72;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lnz4;->h(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
