.class public final synthetic Lln;
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
    iput p1, p0, Lln;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lln;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lln;->c:Ljava/lang/Object;

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
    iget v0, p0, Lln;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lln;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lln;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lwg8;

    .line 11
    .line 12
    const-class v0, Lrg8;

    .line 13
    .line 14
    check-cast v1, Lvz0;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object p0, p0, Lwg8;->b:Las1;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Las1;->b(Ljava/lang/Class;)Lky8;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    new-instance v0, Lcn6;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, p0, v2}, Lcn6;-><init>(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0}, Lvz0;->invoke(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 50
    :goto_1
    invoke-static {p0}, Lcn6;->a(Ljava/lang/Exception;)Lcn6;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {v1, p0}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_2
    return-void

    .line 58
    :pswitch_0
    check-cast p0, Landroidx/fragment/app/g;

    .line 59
    .line 60
    check-cast v1, Landroidx/fragment/app/h0;

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Landroidx/fragment/app/g;->c:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    check-cast p0, Lo21;

    .line 74
    .line 75
    check-cast v1, Lr24;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lo21;->E(Lrx1;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_2
    check-cast p0, Lt22;

    .line 82
    .line 83
    check-cast v1, Ljava/lang/Exception;

    .line 84
    .line 85
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;->$r8$lambda$hHHRU_r8yQ6pC85WTLEcbfy_LJY(Lt22;Ljava/lang/Exception;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_3
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 90
    .line 91
    check-cast v1, Lc12;

    .line 92
    .line 93
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$V34xah0kXeEspVi57vwVreq9Wjw(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lc12;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_4
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 98
    .line 99
    check-cast v1, Lwv3;

    .line 100
    .line 101
    invoke-static {p0, v1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$-b-lnp2JJ6BeraMH13F3mUAieEk(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Lwv3;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_5
    check-cast p0, Lmn;

    .line 106
    .line 107
    check-cast v1, Ljava/lang/Runnable;

    .line 108
    .line 109
    :try_start_5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lmn;->a()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :catchall_2
    move-exception v0

    .line 117
    invoke-virtual {p0}, Lmn;->a()V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
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
