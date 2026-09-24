.class public final synthetic Lvu5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvz0;


# instance fields
.field public final synthetic a:Lcom/yubico/yubikit/android/ui/OtpActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/yubico/yubikit/android/ui/OtpActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvu5;->a:Lcom/yubico/yubikit/android/ui/OtpActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lwg8;

    .line 2
    .line 3
    iget-object p0, p0, Lvu5;->a:Lcom/yubico/yubikit/android/ui/OtpActivity;

    .line 4
    .line 5
    iget v0, p0, Lcom/yubico/yubikit/android/ui/OtpActivity;->t:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/yubico/yubikit/android/ui/OtpActivity;->t:I

    .line 10
    .line 11
    new-instance v0, Lin;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lin;-><init>(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p1, Lwg8;->a:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lin;->run()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput-object v0, p1, Lwg8;->k:Ljava/lang/Runnable;

    .line 29
    .line 30
    :goto_0
    new-instance p1, Lmr3;

    .line 31
    .line 32
    invoke-direct {p1, p0, v1}, Lmr3;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
