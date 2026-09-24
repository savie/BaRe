.class public final synthetic Lpb;
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
    iput p1, p0, Lpb;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lpb;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lpb;->c:Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget v0, p0, Lpb;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lpb;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lpb;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Liq6;

    .line 11
    .line 12
    check-cast v1, Landroid/content/ComponentName;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0, v0, v1}, Liq6;->j(ILandroid/content/ComponentName;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p0, Lt22;

    .line 23
    .line 24
    check-cast v1, Lwv3;

    .line 25
    .line 26
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->$r8$lambda$dCdZlrjuJxGw6qcci-__6ElYZ7U(Lt22;Lwv3;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 31
    .line 32
    check-cast v1, Lorg/json/JSONException;

    .line 33
    .line 34
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$j844zYhrR_UMnzixbciHAsqwfRM(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lorg/json/JSONException;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;

    .line 39
    .line 40
    check-cast v1, Lc12;

    .line 41
    .line 42
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;->$r8$lambda$rsryYGHbfBdkL822r4J2ES3qDUs(Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;Lc12;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_3
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 47
    .line 48
    check-cast v1, Llh6;

    .line 49
    .line 50
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$bX94tmVfw35tJWeqEKGAQZzZkaQ(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Llh6;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_4
    check-cast p0, Lt22;

    .line 55
    .line 56
    check-cast v1, Lc12;

    .line 57
    .line 58
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$BRPev__kVq7w295qbsSiomk3uFU(Lt22;Lc12;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_5
    check-cast p0, Lzy1;

    .line 63
    .line 64
    check-cast v1, Lf80;

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lzy1;->a(Lf80;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_6
    check-cast p0, Lio1;

    .line 71
    .line 72
    check-cast v1, Lzs5;

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lio1;->k(Lzs5;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_7
    check-cast p0, Lj58;

    .line 79
    .line 80
    check-cast v1, Lme4;

    .line 81
    .line 82
    iget-object v0, v1, Lme4;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {p0, v0}, Lj58;->g(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
