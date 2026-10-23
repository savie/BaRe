.class public final Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final access$makeRequest(Lcom/microsoft/identity/common/internal/broker/BrokerData;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;)Lcom/microsoft/identity/common/internal/broker/BrokerData;
    .locals 5

    .line 1
    sget v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->a:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->access$getTAG$cp()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ":makeRequest"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v4, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->BROKER_DISCOVERY_FROM_SDK:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 36
    .line 37
    invoke-direct {v1, v4, v2, v3}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;-><init>(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-interface {p1, v1}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;->communicateToBroker(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion;->extractResult(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    return-object p0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    instance-of v1, p1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 51
    .line 52
    const-string v2, "Tried broker discovery on "

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    move-object v1, p1

    .line 57
    check-cast v1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->getCategory()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v3, 0x2

    .line 64
    if-ne v3, v1, :cond_0

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, ". It doesn\'t support the IPC mechanism."

    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 88
    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    move-object v1, p1

    .line 92
    check-cast v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v3, "ONLY_SUPPORTS_ACCOUNT_MANAGER_ERROR_CODE"

    .line 99
    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p0, ". The Broker side indicates that only AccountManager is supported."

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p0, ", get an error"

    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {v0, p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :goto_0
    const/4 p0, 0x0

    .line 148
    return-object p0
.end method

.method private static extractResult(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/broker/BrokerData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "ERROR_BUNDLE_KEY"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    const-string v1, "ACTIVE_BROKER_PACKAGE_NAME_BUNDLE_KEY"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const-string v2, "ACTIVE_BROKER_SIGNING_CERTIFICATE_THUMBPRINT_BUNDLE_KEY"

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 30
    .line 31
    invoke-direct {v2, v1, p0, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 36
    .line 37
    const-string v0, "ACTIVE_BROKER_SIGNING_CERTIFICATE_THUMBPRINT_BUNDLE_KEY must not be null"

    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 44
    .line 45
    const-string v0, "ACTIVE_BROKER_PACKAGE_NAME_BUNDLE_KEY must not be null"

    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_3
    check-cast v1, Ljava/lang/Throwable;

    .line 52
    .line 53
    throw v1
.end method
