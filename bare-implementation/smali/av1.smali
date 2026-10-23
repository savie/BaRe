.class public final synthetic Lav1;
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
    iput p1, p0, Lav1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lav1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lav1;->b:Ljava/lang/Object;

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
    iget v0, p0, Lav1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lav1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lav1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lt22;

    .line 11
    .line 12
    check-cast v1, Lrf7;

    .line 13
    .line 14
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->$r8$lambda$KrTtx6vXoS47G4MDU3Ul3ZfTkJ4(Lt22;Lrf7;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 19
    .line 20
    check-cast v1, Llh6;

    .line 21
    .line 22
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$fNn2sods0o4EhIetJSRAYQ11CJQ(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Llh6;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 27
    .line 28
    check-cast v1, Lc12;

    .line 29
    .line 30
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$hifV1KO6O5d6x10tHqihqNqiriQ(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lc12;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_2
    check-cast p0, Lsy1;

    .line 35
    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p0, v1, v0}, Lsy1;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_3
    check-cast p0, Ljs1;

    .line 45
    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {p0, v1}, Ljs1;->B(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
