.class final Lcom/microsoft/identity/client/PublicClientApplication$9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
        "Ljava/lang/Boolean;",
        "Lcom/microsoft/identity/common/java/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$config:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

.field final synthetic val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$9;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$9;->val$config:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onError(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$9;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

    .line 8
    .line 9
    check-cast p0, Lcom/microsoft/identity/client/PublicClientApplication$8;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$8;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 12
    .line 13
    new-instance v0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onTaskCompleted(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$9;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$9;->val$config:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->setIsSharedDevice(Z)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    instance-of v2, p0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    sget-object v3, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    :try_start_1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->validateConfiguration()V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplication;

    .line 31
    .line 32
    check-cast p0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplication;-><init>(Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;)V

    .line 35
    .line 36
    .line 37
    move-object p0, v0

    .line 38
    check-cast p0, Lcom/microsoft/identity/client/PublicClientApplication$8;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$8;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 41
    .line 42
    new-instance v2, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 43
    .line 44
    invoke-direct {v2, p1, v1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eq v2, v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance p1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/microsoft/identity/client/PublicClientApplication;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 69
    .line 70
    .line 71
    move-object p0, v0

    .line 72
    check-cast p0, Lcom/microsoft/identity/client/PublicClientApplication$8;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$8;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 75
    .line 76
    new-instance v2, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 77
    .line 78
    invoke-direct {v2, p1, v1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    :goto_0
    new-instance p1, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 88
    .line 89
    .line 90
    move-object p0, v0

    .line 91
    check-cast p0, Lcom/microsoft/identity/client/PublicClientApplication$8;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplication$8;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 94
    .line 95
    new-instance v2, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 96
    .line 97
    invoke-direct {v2, p1, v1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_1
    check-cast v0, Lcom/microsoft/identity/client/PublicClientApplication$8;

    .line 105
    .line 106
    iget-object p1, v0, Lcom/microsoft/identity/client/PublicClientApplication$8;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 107
    .line 108
    new-instance v0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 109
    .line 110
    invoke-direct {v0, v1, p0}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
