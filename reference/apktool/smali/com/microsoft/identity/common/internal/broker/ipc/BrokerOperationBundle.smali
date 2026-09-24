.class public final Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final bundle:Landroid/os/Bundle;

.field public final operation:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public final targetBrokerAppPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->operation:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->targetBrokerAppPackageName:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Landroid/os/Bundle;

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->bundle:Landroid/os/Bundle;

    .line 20
    .line 21
    const-string p0, "com.microsoft.identity.request.broker.data"

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 28
    .line 29
    const-string p0, "BrokerOperationBundle"

    .line 30
    .line 31
    const-string p1, "Requested Active Broker Data"

    .line 32
    .line 33
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final getAccountManagerBundle()Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->bundle:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->operation:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->mAccountManagerOperation:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string p0, "com.microsoft.broker_accountmanager_operation_key"

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Operation "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, " is not supported by AccountManager addAccount()."

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 46
    .line 47
    const-string v0, "BrokerOperationBundle:getAccountManagerAddAccountOperationKey"

    .line 48
    .line 49
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-direct {v0, v3, v1, p0, v2}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public final getContentProviderPath()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->operation:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 2
    .line 3
    iget v0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->mContentApi:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    throw v1

    .line 12
    :pswitch_0
    const-string v1, "/brokerApi/getNumberMatch"

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :pswitch_1
    const-string v1, "/getAadDeviceId"

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :pswitch_2
    const-string v1, "/provisionResourceAccount"

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :pswitch_3
    const-string v1, "/webapp/executeWebAppsRequest"

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :pswitch_4
    const-string v1, "/webapp/getSupportedWebAppsContracts"

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :pswitch_5
    const-string v1, "/brokerApi/restoreMsaAccountsWithTransferTokens"

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :pswitch_6
    const-string v1, "/brokerIndividualLogsUpload"

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :pswitch_7
    const-string v1, "/getPreferredAuthMethod"

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :pswitch_8
    const-string v1, "/readRestrictionsManager"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_9
    const-string v1, "/passthrough"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_a
    const-string v1, "/brokerElection/setActiveBroker"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_b
    const-string v1, "/brokerElection/brokerDiscoveryFromSdk"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_c
    const-string v1, "/brokerElection/brokerDiscoveryMetadataRetrieval"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_d
    const-string v1, "/acquireTokenDCF"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_e
    const-string v1, "/fetchDCFAuthResult"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_f
    const-string v1, "/brokerApi/uploadBrokerLogs"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_10
    const-string v1, "/multipledeviceRegistration/protocols"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_11
    const-string v1, "/allSsoTokens"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_12
    const-string v1, "/ssoToken"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_13
    const-string v1, "/brokerApi/getFlights"

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_14
    const-string v1, "/brokerApi/setFlights"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_15
    const-string v1, "/brokerApi/updateBrt"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_16
    const-string v1, "/brokerApi/removeBrokerAccount"

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_17
    const-string v1, "/brokerApi/getBrokerAccounts"

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_18
    const-string v1, "/brokerApi/hello"

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_19
    const-string v1, "/generateShr"

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_1a
    const-string v1, "/signOutFromSharedDevice"

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_1b
    const-string v1, "/getDeviceMode"

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_1c
    const-string v1, "/getCurrentAccountSharedDevice"

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_1d
    const-string v1, "/removeAccounts"

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_1e
    const-string v1, "/getAccounts"

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_1f
    const-string v1, "/acquireTokenSilent"

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_20
    const-string v1, "/acquireTokenInteractive"

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :pswitch_21
    const-string v1, "/hello"

    .line 120
    .line 121
    :goto_0
    :pswitch_22
    return-object v1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "Operation "

    .line 125
    .line 126
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p0, " is not supported by ContentProvider."

    .line 137
    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 146
    .line 147
    const-string v0, "BrokerOperationBundle:getContentProviderUriPath"

    .line 148
    .line 149
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 153
    .line 154
    const/4 v2, 0x1

    .line 155
    const/4 v3, 0x3

    .line 156
    invoke-direct {v0, v2, v3, p0, v1}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_22
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
