.class public final Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;
.super Lzm;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field final installCertActivityResultLauncher:Lt9;

.field private mInstallCertificateIntent:Landroid/content/Intent;

.field private mInstallCertificateIntentStarted:Ljava/lang/Boolean;

.field private mInstallCertificateResultReceived:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lzm;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateIntentStarted:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateResultReceived:Ljava/lang/Boolean;

    .line 9
    .line 10
    new-instance v0, Lm9;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lm9;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lhb;

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    invoke-direct {v1, p0, v2}, Lhb;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Lio1;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lt9;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->installCertActivityResultLauncher:Lt9;

    .line 29
    .line 30
    return-void
.end method

.method public static n(Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;Lg9;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Result received from Broker, Result code: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Lg9;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "InstallCertActivityLauncher#installCertActivityResultLauncher"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lg9;->b:Landroid/content/Intent;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/microsoft/identity/common/PropertyBagUtil;->fromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const-string p1, "Certificate installation failed with an empty response"

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;-><init>()V

    .line 51
    .line 52
    .line 53
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateResultReceived:Ljava/lang/Boolean;

    .line 56
    .line 57
    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 58
    .line 59
    const-string v1, "install_cert_broadcast_alias"

    .line 60
    .line 61
    invoke-virtual {v0, v1, p1}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->broadcast(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "install_cert_intent"

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/content/Intent;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateIntent:Landroid/content/Intent;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "Extras is null."

    .line 28
    .line 29
    const-string p1, "InstallCertActivityLauncher:onCreate"

    .line 30
    .line 31
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/content/Intent;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateIntent:Landroid/content/Intent;

    .line 42
    .line 43
    const-string v0, "broker_intent_started"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateIntentStarted:Ljava/lang/Boolean;

    .line 54
    .line 55
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateResultReceived:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "The activity is killed unexpectedly."

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "InstallCertActivityLauncher"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 18
    .line 19
    new-instance v1, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "install_cert_broadcast_alias"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->broadcast(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0}, Lzm;->onDestroy()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/u;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateIntentStarted:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateIntentStarted:Ljava/lang/Boolean;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->installCertActivityResultLauncher:Lt9;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateIntent:Landroid/content/Intent;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lt9;->a(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lio1;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "install_cert_intent"

    .line 5
    .line 6
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateIntent:Landroid/content/Intent;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/InstallCertActivityLauncher;->mInstallCertificateIntentStarted:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const-string v0, "broker_intent_started"

    .line 18
    .line 19
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
