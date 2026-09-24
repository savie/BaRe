.class public final synthetic Lmy8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvz0;


# instance fields
.field public final synthetic a:Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmy8;->a:Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lwg8;

    .line 2
    .line 3
    iget-object p0, p0, Lmy8;->a:Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;

    .line 4
    .line 5
    iget v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->d:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->d:I

    .line 10
    .line 11
    new-instance v0, Lv12;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, p0, v1}, Lv12;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Lwg8;->a:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lv12;->run()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput-object v0, p1, Lwg8;->k:Ljava/lang/Runnable;

    .line 30
    .line 31
    :goto_0
    new-instance p1, Ljy2;

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    invoke-direct {p1, p0, v0}, Ljy2;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    throw p0
.end method
