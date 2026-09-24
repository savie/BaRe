.class public final synthetic Lny8;
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
    iput-object p1, p0, Lny8;->a:Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lum5;

    .line 2
    .line 3
    sget-object p1, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->q:Ll15;

    .line 4
    .line 5
    iget-object p0, p0, Lny8;->a:Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method
