.class public final synthetic Lz22;
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
    iput p1, p0, Lz22;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lz22;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lz22;->c:Ljava/lang/Object;

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
    iget v0, p0, Lz22;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lz22;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lz22;->b:Ljava/lang/Object;

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
    iget-object p0, p0, Liq6;->b:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 21
    .line 22
    check-cast v1, Leb2;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 29
    .line 30
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->i0:[I

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 39
    .line 40
    check-cast v1, Lhn3;

    .line 41
    .line 42
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Lym3;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    iget-object v0, v1, Lhn3;->h:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_3
    check-cast p0, Ljava/util/concurrent/Callable;

    .line 63
    .line 64
    check-cast v1, Lln5;

    .line 65
    .line 66
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget-object v0, v1, Lln5;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Ldh2;

    .line 73
    .line 74
    if-nez p0, :cond_0

    .line 75
    .line 76
    sget-object p0, Lh5;->k:Ljava/lang/Object;

    .line 77
    .line 78
    :cond_0
    sget-object v2, Lh5;->f:Lho6;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {v2, v0, v3, p0}, Lho6;->c(Lh5;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_1

    .line 86
    .line 87
    invoke-static {v0}, Lh5;->c(Lh5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {v1, p0}, Lln5;->o(Ljava/lang/Exception;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    return-void

    .line 96
    :pswitch_4
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 97
    .line 98
    check-cast v1, Lbw3;

    .line 99
    .line 100
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$qynShnDH1EKYkeaXnveY_I0znos(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lbw3;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_5
    check-cast p0, Lt22;

    .line 105
    .line 106
    check-cast v1, Lwv3;

    .line 107
    .line 108
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->$r8$lambda$dEhfUFOIs3S_6RwWyT9DxgprdBU(Lt22;Lwv3;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_6
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 113
    .line 114
    check-cast v1, Lc12;

    .line 115
    .line 116
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$bCd5Jy2AYJhGXNLDNqzJGx-_OPo(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lc12;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_7
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 121
    .line 122
    check-cast v1, Lorg/json/JSONException;

    .line 123
    .line 124
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$xG7aC36yEeU3rzUN41d2He3Ikvk(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lorg/json/JSONException;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_8
    check-cast p0, Lt22;

    .line 129
    .line 130
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/CredentialProviderController;->$r8$lambda$6Usb3RlKxkx2BBb45dTT9Y_sTP8(Lt22;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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
