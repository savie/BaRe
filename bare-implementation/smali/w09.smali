.class public final Lw09;
.super Lyc9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final b(Landroid/content/Context;Landroid/os/Looper;Lz91;Ljava/lang/Object;Lnz3;Loz3;)Lne;
    .locals 7

    .line 1
    check-cast p4, Lkf7;

    .line 2
    .line 3
    new-instance v0, Lif7;

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p3, Lz91;->f:Ljava/lang/Integer;

    .line 9
    .line 10
    new-instance v4, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string p4, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v4, p4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const-string p4, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v4, p4, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const-string p0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 33
    .line 34
    const/4 p4, 0x0

    .line 35
    invoke-virtual {v4, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string p0, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 39
    .line 40
    invoke-virtual {v4, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string p0, "com.google.android.gms.signin.internal.serverClientId"

    .line 44
    .line 45
    invoke-virtual {v4, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v4, p0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string p0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 55
    .line 56
    invoke-virtual {v4, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string p0, "com.google.android.gms.signin.internal.hostedDomain"

    .line 60
    .line 61
    invoke-virtual {v4, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "com.google.android.gms.signin.internal.logSessionId"

    .line 65
    .line 66
    invoke-virtual {v4, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 70
    .line 71
    invoke-virtual {v4, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    move-object v1, p1

    .line 75
    move-object v2, p2

    .line 76
    move-object v3, p3

    .line 77
    move-object v5, p5

    .line 78
    move-object v6, p6

    .line 79
    invoke-direct/range {v0 .. v6}, Lif7;-><init>(Landroid/content/Context;Landroid/os/Looper;Lz91;Landroid/os/Bundle;Lnz3;Loz3;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method
