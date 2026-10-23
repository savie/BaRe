.class public final synthetic Lp12;
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
    iput p1, p0, Lp12;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lp12;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lp12;->c:Ljava/lang/Object;

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
    .locals 3

    .line 1
    iget v0, p0, Lp12;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lp12;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lp12;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lt22;

    .line 11
    .line 12
    check-cast v1, Llh6;

    .line 13
    .line 14
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->$r8$lambda$a1iprMjAVocEOB93f2u-yyTumBs(Lt22;Llh6;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p0, Ldk6;

    .line 19
    .line 20
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Ldk6;->h:Lrh3;

    .line 23
    .line 24
    sget-object v0, Ld66;->c:Ld66;

    .line 25
    .line 26
    iget-object p0, p0, Lrh3;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Loe0;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Loe0;->b(Ld66;)Loe0;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {}, Lya8;->a()Lya8;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lya8;->d:Lfg8;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {v0, p0, v2}, Lfg8;->a(Loe0;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 49
    .line 50
    check-cast v1, Ljava/lang/Runnable;

    .line 51
    .line 52
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->i0:[I

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->U:Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->U:Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    .line 67
    const/high16 v0, -0x31000000

    .line 68
    .line 69
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_2
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 76
    .line 77
    check-cast v1, Lcw3;

    .line 78
    .line 79
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$jigFRmIFm0Qy9WlfkuNIm3MbEEk(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lcw3;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_3
    check-cast p0, Lt22;

    .line 84
    .line 85
    check-cast v1, Lk12;

    .line 86
    .line 87
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$lNb_ZF5uCy7UxIj9iUzcU3gyEYM(Lt22;Lk12;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_4
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 92
    .line 93
    check-cast v1, Lc12;

    .line 94
    .line 95
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$eaMWeJGgmTAdp-rnPfcm8sJpXI8(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;Lc12;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_5
    check-cast p0, Lt22;

    .line 100
    .line 101
    check-cast v1, Ljava/lang/Exception;

    .line 102
    .line 103
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->$r8$lambda$6AHM4Ecq_jSoj6uE8tvEtNKfUB4(Lt22;Ljava/lang/Exception;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
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
