.class public final Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/fido/IFidoManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final fragment:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

.field private final legacyApi:Lc63;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->fragment:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 11
    .line 12
    const-class p2, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;

    .line 13
    .line 14
    invoke-static {p2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ln81;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    new-instance p2, Lc63;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Lc63;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->legacyApi:Lc63;

    .line 34
    .line 35
    return-void
.end method

.method public static final synthetic access$createAndThrowException(Lo21;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "get_pending_intent_error"

    .line 2
    .line 3
    const-string v1, "Failed to get a PendingIntent from the legacy FIDO2 API."

    .line 4
    .line 5
    invoke-static {p0, p1, v0, v1, p2}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->createAndThrowException(Lo21;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static createAndThrowException(Lo21;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiException;

    .line 4
    .line 5
    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiException;

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 16
    .line 17
    invoke-static {p1, p3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    instance-of p1, p1, Lho5;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Lbn6;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public static synthetic createAndThrowException$default(Lo21;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->createAndThrowException(Lo21;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lqj7;Lkv1;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lo21;

    .line 4
    .line 5
    invoke-static/range {p6 .. p6}, Lnc8;->D(Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v1, v3, v2}, Lo21;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lo21;->u()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, ":authenticate"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object v3, Lf51;->a:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    move-object/from16 v4, p1

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static/range {p2 .. p2}, Lly8;->h(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lta6;

    .line 53
    .line 54
    const/4 v14, 0x0

    .line 55
    const/4 v15, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    const/4 v13, 0x0

    .line 63
    move-object/from16 v7, p2

    .line 64
    .line 65
    invoke-direct/range {v4 .. v15}, Lta6;-><init>([BLjava/lang/Double;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Integer;Lf58;Ljava/lang/String;Li80;Ljava/lang/Long;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 66
    .line 67
    .line 68
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 69
    .line 70
    const-string v3, "Calling the legacy FIDO2 API with public key credential options to get a PendingIntent."

    .line 71
    .line 72
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->legacyApi:Lc63;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lr19;->a()Lby7;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    new-instance v6, Ljq6;

    .line 85
    .line 86
    const/16 v7, 0x16

    .line 87
    .line 88
    invoke-direct {v6, v3, v4, v7}, Ljq6;-><init>(Lc63;Ld80;I)V

    .line 89
    .line 90
    .line 91
    iput-object v6, v5, Lby7;->a:Lyi6;

    .line 92
    .line 93
    const/16 v4, 0x1520

    .line 94
    .line 95
    iput v4, v5, Lby7;->d:I

    .line 96
    .line 97
    invoke-virtual {v5}, Lby7;->a()Lr19;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const/4 v5, 0x0

    .line 102
    invoke-virtual {v3, v5, v4}, Lkz3;->b(ILr19;)Lcom/google/android/gms/tasks/Task;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance v4, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1;

    .line 110
    .line 111
    invoke-direct {v4, v1, v0, v2}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$1;-><init>(Lo21;Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 115
    .line 116
    .line 117
    new-instance v4, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$2;

    .line 118
    .line 119
    invoke-direct {v4, v1, v0, v2}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$2;-><init>(Lo21;Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 123
    .line 124
    .line 125
    new-instance v4, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$3;

    .line 126
    .line 127
    invoke-direct {v4, v1, v0, v2}, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager$authenticate$2$3;-><init>(Lo21;Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Lo21;->s()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0
.end method

.method public final getFragment()Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiManager;->fragment:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 2
    .line 3
    return-object p0
.end method
