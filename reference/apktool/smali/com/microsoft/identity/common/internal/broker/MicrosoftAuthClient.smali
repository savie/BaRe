.class public final Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mConnection:Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;

.field protected final mContext:Landroid/content/Context;

.field private mHasStartedBinding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mHasStartedBinding:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mConnection:Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 15
    .line 16
    const-string v1, "MicrosoftAuthClient:disconnect"

    .line 17
    .line 18
    const-string v2, "Error occurred while unbinding bound Service with MicrosoftAuthClient"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mHasStartedBinding:Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final isBoundServiceSupported(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "com.microsoft.identity.client.MicrosoftAuth"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string v1, "com.microsoft.identity.client.MicrosoftAuthService"

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-lez p0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    return p1
.end method

.method public final performOperation(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/microsoft/identity/common/exception/BrokerCommunicationException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->targetBrokerAppPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->isBoundServiceSupported(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "MicrosoftAuthClient:connect"

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    new-instance v1, Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v6, Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;

    .line 20
    .line 21
    invoke-direct {v6, v1}, Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;-><init>(Lcom/microsoft/identity/common/java/util/ResultFuture;)V

    .line 22
    .line 23
    .line 24
    iput-object v6, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mConnection:Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;

    .line 25
    .line 26
    new-instance v6, Landroid/content/Intent;

    .line 27
    .line 28
    const-string v7, "com.microsoft.identity.client.MicrosoftAuth"

    .line 29
    .line 30
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string v7, "com.microsoft.identity.client.MicrosoftAuthService"

    .line 37
    .line 38
    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mConnection:Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;

    .line 42
    .line 43
    iget-object v7, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v7, v6, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mHasStartedBinding:Z

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 54
    .line 55
    const-string p0, "Android is establishing the bound service connection."

    .line 56
    .line 57
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v5, 0x1e

    .line 61
    .line 62
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-virtual {v1, v5, v6, p0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Landroid/os/IBinder;

    .line 69
    .line 70
    invoke-static {p0}, Lcom/microsoft/identity/client/IMicrosoftAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/microsoft/identity/client/IMicrosoftAuthService;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_1

    .line 75
    .line 76
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->bundle:Landroid/os/Bundle;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->operation:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    packed-switch v1, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v0, "Operation "

    .line 94
    .line 95
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p0, " is not supported by MicrosoftAuthClient."

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    new-instance p1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 111
    .line 112
    invoke-direct {p1, v2, v2, p0, v4}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :pswitch_0
    invoke-interface {p0, v0}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->generateSignedHttpRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :pswitch_1
    invoke-interface {p0, v0}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->removeAccountFromSharedDevice(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :pswitch_2
    invoke-interface {p0, v0}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->getCurrentAccount(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :pswitch_3
    invoke-interface {p0}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->getDeviceMode()Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_4
    invoke-interface {p0, v0}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->removeAccount(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :pswitch_5
    invoke-interface {p0, v0}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->getAccounts(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :pswitch_6
    invoke-interface {p0, v0}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->acquireTokenSilently(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0

    .line 151
    :pswitch_7
    invoke-interface {p0}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->getIntentForInteractiveRequest()Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_0

    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_0

    .line 188
    .line 189
    const-string v0, "broker.package.name"

    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    const-string v0, "broker.activity.name"

    .line 207
    .line 208
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_0
    return-object p1

    .line 212
    :pswitch_8
    invoke-interface {p0, v0}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->hello(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    return-object p0

    .line 217
    :cond_1
    const-string p0, "Failed to extract IMicrosoftAuthService from IBinder."

    .line 218
    .line 219
    invoke-static {p0, v4}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    return-object v4

    .line 223
    :cond_2
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 224
    .line 225
    const-string p0, "failed to bind. The service is not available."

    .line 226
    .line 227
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    new-instance p1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 231
    .line 232
    invoke-direct {p1, v3, v2, p0, v4}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    :cond_3
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 237
    .line 238
    const-string p0, "Bound service is not supported."

    .line 239
    .line 240
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance p1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 244
    .line 245
    invoke-direct {p1, v3, v2, p0, v4}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 246
    .line 247
    .line 248
    throw p1

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
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
