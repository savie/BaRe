.class public final Lg32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lx22;


# instance fields
.field public final a:Landroid/credentials/CredentialManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "credential"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/credentials/CredentialManager;

    .line 14
    .line 15
    iput-object p1, p0, Lg32;->a:Landroid/credentials/CredentialManager;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final isAvailableOnDevice()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lg32;->a:Landroid/credentials/CredentialManager;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final onClearCredential(Lf91;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 1

    .line 1
    const-string p1, "CredManProvService"

    .line 2
    .line 3
    const-string v0, "In CredentialProviderFrameworkImpl onClearCredential"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    check-cast p4, Lz28;

    .line 9
    .line 10
    iget-object p0, p0, Lg32;->a:Landroid/credentials/CredentialManager;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    new-instance p0, Li91;

    .line 15
    .line 16
    const-string p1, "Your device doesn\'t support credential manager"

    .line 17
    .line 18
    const-string p2, "androidx.credentials.TYPE_CLEAR_CREDENTIAL_UNSUPPORTED_EXCEPTION"

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lc91;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p4, p0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Le32;

    .line 28
    .line 29
    invoke-direct {p1, p4}, Le32;-><init>(Lz28;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance p4, Landroid/credentials/ClearCredentialStateRequest;

    .line 36
    .line 37
    new-instance p4, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v0, Landroid/credentials/ClearCredentialStateRequest;

    .line 43
    .line 44
    invoke-direct {v0, p4}, Landroid/credentials/ClearCredentialStateRequest;-><init>(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/credentials/CredentialManager;->clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onCreateCredential(Landroid/content/Context;Li12;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 0

    .line 1
    check-cast p5, Lvk9;

    .line 2
    .line 3
    iget-object p0, p0, Lg32;->a:Landroid/credentials/CredentialManager;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lm12;

    .line 8
    .line 9
    const-string p1, "Your device doesn\'t support credential manager"

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lm12;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p5, p0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p0, Landroid/credentials/CreateCredentialRequest$Builder;

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    throw p0
.end method

.method public final onGetCredential(Landroid/content/Context;Lzv3;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p5, Lnh;

    .line 5
    .line 6
    iget-object v0, p0, Lg32;->a:Landroid/credentials/CredentialManager;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance p0, Ldw3;

    .line 11
    .line 12
    const-string p1, "Your device doesn\'t support credential manager"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ldw3;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p5, p0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v5, Lf32;

    .line 22
    .line 23
    invoke-direct {v5, p5, p0}, Lf32;-><init>(Lnh;Lg32;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p0, Landroid/credentials/GetCredentialRequest$Builder;

    .line 30
    .line 31
    new-instance p0, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string p5, "androidx.credentials.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI"

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, p5, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const-string p5, "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"

    .line 43
    .line 44
    iget-boolean v1, p2, Lzv3;->b:Z

    .line 45
    .line 46
    invoke-virtual {p0, p5, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string p5, "androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME"

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, p5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    .line 54
    .line 55
    new-instance p5, Landroid/credentials/GetCredentialRequest$Builder;

    .line 56
    .line 57
    invoke-direct {p5, p0}, Landroid/credentials/GetCredentialRequest$Builder;-><init>(Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p2, Lzv3;->a:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lw22;

    .line 77
    .line 78
    new-instance v1, Landroid/credentials/CredentialOption$Builder;

    .line 79
    .line 80
    iget-object v1, p2, Lw22;->a:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v2, p2, Lw22;->b:Landroid/os/Bundle;

    .line 83
    .line 84
    iget-object v3, p2, Lw22;->c:Landroid/os/Bundle;

    .line 85
    .line 86
    new-instance v4, Landroid/credentials/CredentialOption$Builder;

    .line 87
    .line 88
    invoke-direct {v4, v1, v2, v3}, Landroid/credentials/CredentialOption$Builder;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p2, Lw22;->d:Z

    .line 92
    .line 93
    invoke-virtual {v4, v1}, Landroid/credentials/CredentialOption$Builder;->setIsSystemProviderRequired(Z)Landroid/credentials/CredentialOption$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object p2, p2, Lw22;->e:Ljava/util/Set;

    .line 98
    .line 99
    invoke-virtual {v1, p2}, Landroid/credentials/CredentialOption$Builder;->setAllowedProviders(Ljava/util/Set;)Landroid/credentials/CredentialOption$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Landroid/credentials/CredentialOption$Builder;->build()Landroid/credentials/CredentialOption;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p5, p2}, Landroid/credentials/GetCredentialRequest$Builder;->addCredentialOption(Landroid/credentials/CredentialOption;)Landroid/credentials/GetCredentialRequest$Builder;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p5}, Landroid/credentials/GetCredentialRequest$Builder;->build()Landroid/credentials/GetCredentialRequest;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-object v1, p1

    .line 119
    move-object v3, p3

    .line 120
    move-object v4, p4

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/credentials/CredentialManager;->getCredential(Landroid/content/Context;Landroid/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
