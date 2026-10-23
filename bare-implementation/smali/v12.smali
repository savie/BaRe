.class public final synthetic Lv12;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lv12;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv12;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lv12;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lv12;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;

    .line 9
    .line 10
    iget v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->d:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->d:I

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lin0;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-direct {v0, p0, v1}, Lin0;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    check-cast p0, Landroid/webkit/WebView;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    check-cast p0, Lpa8;

    .line 35
    .line 36
    iget-object p0, p0, Lpa8;->Q:Lgv7;

    .line 37
    .line 38
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_2
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 50
    .line 51
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$XT5K_AZvAW1ghUnM_MzUj7fBAsk(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_3
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 56
    .line 57
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$YR-_lKTBH2zm3HC5e7AY2lh5Xr0(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
