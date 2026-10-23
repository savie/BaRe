.class final Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

.field final synthetic val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;->this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getEntry()Ljava/security/KeyStore$Entry;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getKeyPairForEntry(Ljava/security/KeyStore$PrivateKeyEntry;)Ljava/security/KeyPair;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getRsaKeyForKeyPair(Ljava/security/KeyPair;)Lcom/nimbusds/jose/jwk/RSAKey;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->access$000(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->onTaskCompleted(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :catch_2
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :catch_3
    move-exception p0

    .line 39
    goto :goto_3

    .line 40
    :catch_4
    move-exception p0

    .line 41
    goto :goto_4

    .line 42
    :goto_0
    const-string v1, "json_construction_failed"

    .line 43
    .line 44
    goto :goto_5

    .line 45
    :goto_1
    const-string v1, "failed_to_compute_thumbprint_with_sha256"

    .line 46
    .line 47
    goto :goto_5

    .line 48
    :goto_2
    const-string v1, "protection_params_invalid"

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :goto_3
    const-string v1, "no_such_algorithm"

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :goto_4
    const-string v1, "keystore_not_initialized"

    .line 55
    .line 56
    :goto_5
    new-instance v2, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-direct {v2, v1, v3, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    const-string p0, "AbstractDevicePopManager:getRequestConfirmation"

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {p0, v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    check-cast v0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->onError(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
