.class public final synthetic Lo12;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo12;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lo12;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lo12;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lo12;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lo12;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lo12;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lup6;

    .line 11
    .line 12
    check-cast v1, Landroid/content/ServiceConnection;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lwp6;

    .line 17
    .line 18
    iget-object p0, p0, Lwp6;->a:Lyp6;

    .line 19
    .line 20
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-interface {v1, p0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    check-cast p0, Lt22;

    .line 29
    .line 30
    check-cast v1, Lbw3;

    .line 31
    .line 32
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->$r8$lambda$JE-GM6T_V8V7e_XFAqAqKCqwbUo(Lt22;Lbw3;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    check-cast p0, Lum5;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Runnable;

    .line 39
    .line 40
    :try_start_0
    iget-object p0, p0, Lum5;->c:Landroid/nfc/Tag;

    .line 41
    .line 42
    invoke-static {p0}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/nfc/tech/IsoDep;->connect()V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    const-wide/16 v2, 0xfa

    .line 56
    .line 57
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_2
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 66
    .line 67
    check-cast v1, Lk12;

    .line 68
    .line 69
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$JQpD973YytEMzThng4Yv_N47YvY(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lk12;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_3
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 74
    .line 75
    check-cast v1, Lwv3;

    .line 76
    .line 77
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$hxvlTH6p-6Q13m2wUQfJXWRStzQ(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Lwv3;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_4
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 82
    .line 83
    check-cast v1, Lc12;

    .line 84
    .line 85
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$7hGjwWXCeLAYqMWxDzFfoJv-6w4(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;Lc12;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_5
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;

    .line 90
    .line 91
    check-cast v1, Lc12;

    .line 92
    .line 93
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->$r8$lambda$PPWmakEiZE_x4OzgSZmQ1EKEEZU(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
