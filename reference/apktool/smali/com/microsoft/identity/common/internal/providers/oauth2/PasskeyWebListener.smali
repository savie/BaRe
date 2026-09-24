.class public final Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final coroutineScope:Ldv1;

.field private final credentialManagerHandler:Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;

.field private final havePendingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final otelContext:Lt40;


# direct methods
.method public constructor <init>(Ldv1;Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;Lt40;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->coroutineScope:Ldv1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->credentialManagerHandler:Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->otelContext:Lt40;

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->havePendingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic access$getCredentialManagerHandler$p(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;)Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->credentialManagerHandler:Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHavePendingRequest$p(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->havePendingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final access$handleCreateFlow(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Lkv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget p4, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;->label:I

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz p4, :cond_2

    .line 31
    .line 32
    if-ne p4, v1, :cond_1

    .line 33
    .line 34
    iget-object p3, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;->L$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 35
    .line 36
    :try_start_0
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iput-object p3, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;->L$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 53
    .line 54
    iput v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleCreateFlow$1;->label:I

    .line 55
    .line 56
    invoke-virtual {p1, p2, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;->createPasskey(Ljava/lang/String;Lkv1;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    sget-object p1, Lyx1;->a:Lyx1;

    .line 61
    .line 62
    if-ne p0, p1, :cond_3

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_3
    :goto_1
    :try_start_2
    check-cast p0, Lf22;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :goto_2
    new-instance p1, Lbn6;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    move-object p0, p1

    .line 74
    :goto_3
    nop

    .line 75
    instance-of p1, p0, Lbn6;

    .line 76
    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    move-object p1, p0

    .line 80
    check-cast p1, Lf22;

    .line 81
    .line 82
    iget-object p1, p1, Lf22;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->postSuccess(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-static {p0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-eqz p0, :cond_5

    .line 92
    .line 93
    invoke-virtual {p3, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->postError(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    sget-object p0, Lbe8;->a:Lbe8;

    .line 97
    .line 98
    return-object p0
.end method

.method public static final access$handleGetFlow(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Lkv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget p4, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;->label:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz p4, :cond_2

    .line 32
    .line 33
    if-ne p4, v2, :cond_1

    .line 34
    .line 35
    iget-object p3, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;->L$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_2
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iput-object p3, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;->L$0:Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 53
    .line 54
    iput v2, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$handleGetFlow$1;->label:I

    .line 55
    .line 56
    invoke-virtual {p1, p2, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/CredentialManagerHandler;->getPasskey(Ljava/lang/String;Lkv1;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    sget-object p1, Lyx1;->a:Lyx1;

    .line 61
    .line 62
    if-ne p0, p1, :cond_3

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_3
    :goto_1
    :try_start_2
    check-cast p0, Lbw3;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :goto_2
    new-instance p1, Lbn6;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    move-object p0, p1

    .line 74
    :goto_3
    nop

    .line 75
    instance-of p1, p0, Lbn6;

    .line 76
    .line 77
    if-nez p1, :cond_6

    .line 78
    .line 79
    move-object p1, p0

    .line 80
    check-cast p1, Lbw3;

    .line 81
    .line 82
    iget-object p1, p1, Lbw3;->a:Lao;

    .line 83
    .line 84
    instance-of p2, p1, Loa6;

    .line 85
    .line 86
    if-eqz p2, :cond_4

    .line 87
    .line 88
    check-cast p1, Loa6;

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_4
    move-object p1, v1

    .line 92
    :goto_4
    if-eqz p1, :cond_5

    .line 93
    .line 94
    iget-object p1, p1, Loa6;->c:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p3, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->postSuccess(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_5
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 101
    .line 102
    const-string p2, "unsupported_operation"

    .line 103
    .line 104
    const-string p4, "Retrieved credential is not a PublicKeyCredential."

    .line 105
    .line 106
    invoke-direct {p1, p2, p4, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->postError(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_5
    invoke-static {p0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_7

    .line 117
    .line 118
    invoke-virtual {p3, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->postError(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :cond_7
    sget-object p0, Lbe8;->a:Lbe8;

    .line 122
    .line 123
    return-object p0
.end method


# virtual methods
.method public final onPostMessage(Landroid/webkit/WebView;Lhb5;Landroid/net/Uri;ZLkh4;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget p1, p2, Lhb5;->b:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-nez p1, :cond_c

    .line 14
    .line 15
    iget-object p1, p2, Lhb5;->a:Ljava/lang/String;

    .line 16
    .line 17
    new-instance p2, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->otelContext:Lt40;

    .line 23
    .line 24
    invoke-direct {p2, p5, v2, v3, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;-><init>(Lkh4;Ljava/lang/String;Lt40;I)V

    .line 25
    .line 26
    .line 27
    const-string v1, "missing_parameter"

    .line 28
    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    :try_start_0
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_4

    .line 36
    .line 37
    new-instance v4, Lorg/json/JSONObject;

    .line 38
    .line 39
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "type"

    .line 43
    .line 44
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object p1, v2

    .line 59
    :goto_0
    const-string v5, "request"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-object v4, v2

    .line 76
    :goto_1
    if-eqz p1, :cond_3

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    new-instance v1, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;

    .line 81
    .line 82
    invoke-direct {v1, p1, v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 89
    .line 90
    const-string v4, "Missing required key: request"

    .line 91
    .line 92
    invoke-direct {p1, v1, v4, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_3
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 97
    .line 98
    const-string v4, "Missing required key: type"

    .line 99
    .line 100
    invoke-direct {p1, v1, v4, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_4
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 105
    .line 106
    const-string v4, "Message data is null or blank"

    .line 107
    .line 108
    invoke-direct {p1, v1, v4, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_2
    new-instance v1, Lbn6;

    .line 113
    .line 114
    invoke-direct {v1, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-static {v1}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->postError(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    instance-of p1, v1, Lbn6;

    .line 127
    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    move-object v1, v2

    .line 131
    :cond_6
    check-cast v1, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;

    .line 132
    .line 133
    if-eqz v1, :cond_b

    .line 134
    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string p2, "Received WebAuthN request of type: "

    .line 138
    .line 139
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;->getType()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p2, " from origin: "

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 162
    .line 163
    const-string p2, "PasskeyWebListener:onRequest"

    .line 164
    .line 165
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance p1, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;->getType()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const/16 p3, 0x8

    .line 175
    .line 176
    invoke-direct {p1, p5, p2, v3, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;-><init>(Lkh4;Ljava/lang/String;Lt40;I)V

    .line 177
    .line 178
    .line 179
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->havePendingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    if-eqz p3, :cond_7

    .line 186
    .line 187
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 188
    .line 189
    const-string p2, "request_in_progress"

    .line 190
    .line 191
    const-string p3, "A WebAuthN request is already in progress."

    .line 192
    .line 193
    invoke-direct {p0, p2, p3, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->postError(Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_7
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    .line 202
    .line 203
    const/4 p3, 0x0

    .line 204
    const-string p5, "unsupported_operation"

    .line 205
    .line 206
    if-nez p4, :cond_8

    .line 207
    .line 208
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 209
    .line 210
    const-string p4, "WebAuthN requests from iframes are not supported."

    .line 211
    .line 212
    invoke-direct {p0, p5, p4, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->postError(Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_8
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;->getType()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p4

    .line 226
    const-string v0, "create"

    .line 227
    .line 228
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    const/4 v3, 0x3

    .line 233
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;->coroutineScope:Ldv1;

    .line 234
    .line 235
    if-eqz v0, :cond_9

    .line 236
    .line 237
    new-instance p2, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$1;

    .line 238
    .line 239
    invoke-direct {p2, p0, v1, p1, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Ljv1;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v4, v2, p2, v3}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_9
    const-string v0, "get"

    .line 247
    .line 248
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result p4

    .line 252
    if-eqz p4, :cond_a

    .line 253
    .line 254
    new-instance p2, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;

    .line 255
    .line 256
    invoke-direct {p2, p0, v1, p1, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$onRequest$2;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Ljv1;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v4, v2, p2, v3}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_a
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 264
    .line 265
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyWebListener$WebAuthNMessage;->getType()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p4

    .line 269
    const-string v0, "Unsupported WebAuthN request type: "

    .line 270
    .line 271
    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p4

    .line 275
    invoke-direct {p0, p5, p4, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->postError(Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    .line 283
    .line 284
    :cond_b
    :goto_4
    return-void

    .line 285
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 286
    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string p3, "Wrong data accessor type detected. "

    .line 290
    .line 291
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string p3, "String"

    .line 295
    .line 296
    if-eqz p1, :cond_e

    .line 297
    .line 298
    if-eq p1, v0, :cond_d

    .line 299
    .line 300
    const-string p1, "Unknown"

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_d
    const-string p1, "ArrayBuffer"

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_e
    move-object p1, p3

    .line 307
    :goto_5
    const-string p4, " expected, but got "

    .line 308
    .line 309
    invoke-static {p2, p1, p4, p3}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p0
.end method
