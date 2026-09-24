.class public final synthetic Lro1;
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
    iput p1, p0, Lro1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lro1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lro1;->c:Ljava/lang/Object;

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
    iget v0, p0, Lro1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lro1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lg67;

    .line 9
    .line 10
    iget-object p0, p0, Lro1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/graphics/Typeface;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lg67;->y(Landroid/graphics/Typeface;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lro1;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Runnable;

    .line 21
    .line 22
    iget-object p0, p0, Lro1;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lln5;

    .line 25
    .line 26
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lln5;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ldh2;

    .line 32
    .line 33
    sget-object v1, Lh5;->k:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v2, Lh5;->f:Lho6;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v2, v0, v3, v1}, Lho6;->c(Lh5;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-static {v0}, Lh5;->c(Lh5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {p0, v0}, Lln5;->o(Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    return-void

    .line 53
    :pswitch_1
    iget-object v0, p0, Lro1;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lt22;

    .line 56
    .line 57
    iget-object p0, p0, Lro1;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Llh6;

    .line 60
    .line 61
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/blockstore/createrestorecredential/CredentialProviderCreateRestoreCredentialController;->$r8$lambda$eUq3UCbIYQWF59tCZiY4H25mYZU(Lt22;Llh6;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_2
    iget-object v0, p0, Lro1;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;

    .line 68
    .line 69
    iget-object p0, p0, Lro1;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lc12;

    .line 72
    .line 73
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;->$r8$lambda$F4yvEbzzLNxHmolTubPunqP988U(Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;Lc12;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_3
    iget-object v0, p0, Lro1;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lws4;

    .line 80
    .line 81
    iget-object p0, p0, Lro1;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, Lga6;

    .line 84
    .line 85
    monitor-enter v0

    .line 86
    :try_start_1
    iget-object v1, v0, Lws4;->b:Ljava/util/Set;

    .line 87
    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    iget-object v1, v0, Lws4;->a:Ljava/util/Set;

    .line 91
    .line 92
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_2

    .line 98
    :cond_1
    iget-object v1, v0, Lws4;->b:Ljava/util/Set;

    .line 99
    .line 100
    invoke-interface {p0}, Lga6;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    :goto_1
    monitor-exit v0

    .line 108
    return-void

    .line 109
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw p0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
