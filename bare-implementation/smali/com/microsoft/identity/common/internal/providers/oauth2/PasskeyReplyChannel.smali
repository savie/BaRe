.class public final Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final parentAttributeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otelContext:Lt40;

.field private final replyProxy:Lkh4;

.field private final requestType:Ljava/lang/String;

.field private final telemetryScope:Lxx1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->account_type:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 2
    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->calling_package_name:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 4
    .line 5
    sget-object v2, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->correlation_id:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 6
    .line 7
    sget-object v3, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->tenant_id:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lfl1;->x0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->parentAttributeNames:Ljava/util/ArrayList;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lkh4;Ljava/lang/String;Lt40;I)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p2, "unknown"

    .line 6
    .line 7
    :cond_0
    sget-object p4, Lcn2;->a:Lrf2;

    .line 8
    .line 9
    sget-object p4, Lse2;->c:Lse2;

    .line 10
    .line 11
    invoke-static {p4}, Ll73;->c(Lox1;)Ldv1;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->replyProxy:Lkh4;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->requestType:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->otelContext:Lt40;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->telemetryScope:Lxx1;

    .line 31
    .line 32
    return-void
.end method

.method public static final access$recordPostSuccessTelemetry(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Lr86;Ljava/lang/String;Lzk0;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->requestType:Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->parentAttributeNames:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {p3, v2}, Lzk0;->getEntryValue(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p3, "create"

    .line 44
    .line 45
    invoke-static {p0, p3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->extractAaguidFromRegistrationResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->extractOriginFromRegistrationResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_2
    const/4 p2, 0x0

    .line 58
    :try_start_2
    invoke-static {p1, p2}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :goto_1
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :catchall_1
    move-exception p3

    .line 66
    :try_start_4
    invoke-static {p1, p2}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 70
    :catchall_2
    move-exception p0

    .line 71
    throw p0

    .line 72
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string p3, "Failed to record post-success passkey telemetry for requestType: "

    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, ", "

    .line 86
    .line 87
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 102
    .line 103
    const-string p1, "PasskeyReplyChannel"

    .line 104
    .line 105
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method private final throwableToErrorMessage(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Unknown error (empty message)"

    .line 8
    .line 9
    :cond_0
    instance-of v1, p1, La12;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    instance-of v1, p1, Lsv3;

    .line 17
    .line 18
    :goto_0
    if-eqz v1, :cond_2

    .line 19
    .line 20
    move v1, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    instance-of v1, p1, Lan5;

    .line 23
    .line 24
    :goto_1
    const-string v3, "NotAllowedError"

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    goto :goto_5

    .line 29
    :cond_3
    instance-of v1, p1, Le12;

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    move v1, v2

    .line 34
    goto :goto_2

    .line 35
    :cond_4
    instance-of v1, p1, Lxv3;

    .line 36
    .line 37
    :goto_2
    if-eqz v1, :cond_5

    .line 38
    .line 39
    const-string v3, "AbortError"

    .line 40
    .line 41
    goto :goto_5

    .line 42
    :cond_5
    instance-of v1, p1, Lg12;

    .line 43
    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    move v1, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_6
    instance-of v1, p1, Lyv3;

    .line 49
    .line 50
    :goto_3
    if-eqz v1, :cond_7

    .line 51
    .line 52
    const-string v3, "NotSupportedError"

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_7
    instance-of v1, p1, Ll12;

    .line 56
    .line 57
    if-eqz v1, :cond_8

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_8
    instance-of v2, p1, Lcw3;

    .line 61
    .line 62
    :goto_4
    if-eqz v2, :cond_9

    .line 63
    .line 64
    const-string v3, "UnknownError"

    .line 65
    .line 66
    :cond_9
    :goto_5
    new-instance p1, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->requestType:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p1, v0, v3, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object p1
.end method


# virtual methods
.method public final postError(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    const-string v0, "RequestType: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "PasskeyReplyChannel:postError"

    .line 5
    .line 6
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->otelContext:Lt40;

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 11
    .line 12
    const-string v3, "No OpenTelemetry context provided. Telemetry will not be recorded for this operation."

    .line 13
    .line 14
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v3, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v3}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->fromContext(Lt40;)Lqj7;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Lqj7;->getSpanContext()Lrj7;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    :goto_0
    const-string v4, "PasskeyWebListener"

    .line 28
    .line 29
    invoke-static {v4, v3}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :try_start_0
    invoke-static {v3}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 34
    .line 35
    .line 36
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->throwableToErrorMessage(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Error;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->replyProxy:Lkh4;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    sget-object v7, Ljr8;->c:Lve;

    .line 51
    .line 52
    invoke-virtual {v7}, Lbf;->b()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    iget-object v5, v5, Lkh4;->a:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 59
    .line 60
    invoke-interface {v5, v6}, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;->postMessage(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->requestType:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, " failed with error: "

    .line 74
    .line 75
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 86
    .line 87
    invoke-static {v2, p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .line 89
    .line 90
    :try_start_2
    invoke-static {v3, v1}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_2

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 99
    .line 100
    const-string p1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 101
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    :goto_1
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 107
    :catchall_2
    move-exception p1

    .line 108
    :try_start_5
    invoke-static {v3, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 112
    :goto_2
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 113
    .line 114
    const-string p1, "Reply message failed"

    .line 115
    .line 116
    invoke-static {v2, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method public final postSuccess(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v1, "PasskeyReplyChannel:postSuccess"

    .line 5
    .line 6
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->otelContext:Lt40;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 11
    .line 12
    const-string v2, "No OpenTelemetry context provided. Telemetry will not be recorded for this operation."

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->fromContext(Lt40;)Lqj7;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Lqj7;->getSpanContext()Lrj7;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    const-string v3, "PasskeyWebListener"

    .line 28
    .line 29
    invoke-static {v3, v2}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    :try_start_0
    new-instance v2, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Success;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->requestType:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v2, p1, v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$ReplyMessage$Success;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->replyProxy:Lkh4;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v4, Ljr8;->c:Lve;

    .line 50
    .line 51
    invoke-virtual {v4}, Lbf;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    iget-object v3, v3, Lkh4;->a:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 58
    .line 59
    invoke-interface {v3, v2}, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;->postMessage(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lt40;->a()Lt40;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v6, v2}, Lva4;->a(Lt40;)Lt40;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v0}, Lcom/microsoft/identity/common/PropertyBagUtil;->fromContext(Lt40;)Lzk0;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;->telemetryScope:Lxx1;

    .line 75
    .line 76
    new-instance v3, Lcp4;

    .line 77
    .line 78
    invoke-direct {v3, v2}, Lcp4;-><init>(Lt40;)V

    .line 79
    .line 80
    .line 81
    new-instance v4, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    move-object v5, p0

    .line 85
    move-object v7, p1

    .line 86
    invoke-direct/range {v4 .. v9}, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$job$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel;Lr86;Ljava/lang/String;Lzk0;Ljv1;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x2

    .line 90
    invoke-static {v0, v3, v4, p0}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance p1, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyReplyChannel$postSuccess$1;

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    invoke-direct {p1, v0}, Lgs4;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lci4;->invokeOnCompletion(Lmt3;)Lin2;

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    move-object p0, v0

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 108
    .line 109
    const-string p1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 110
    .line 111
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_1
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 116
    .line 117
    const-string p1, "Immediate execution failed"

    .line 118
    .line 119
    invoke-static {v1, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw p0
.end method
