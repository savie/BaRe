.class public final Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;
.super Lcom/microsoft/identity/common/internal/broker/ipc/AbstractIpcStrategyWithServiceValidation;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:I


# instance fields
.field private final mCache:Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;->mCache:Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final communicateToBrokerAfterValidation(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
        }
    .end annotation

    .line 1
    const-string v1, "Failed to get result from Broker Content Provider"

    .line 2
    .line 3
    const-string v0, "Received an empty bundle. This means the operation is not supported on the other side. If you\'re using a newer feature, please bump the minimum protocol version."

    .line 4
    .line 5
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->operation:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "Broker operation name: "

    .line 12
    .line 13
    const-string v4, " brokerPackage: "

    .line 14
    .line 15
    invoke-static {v3, v2, v4}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->targetBrokerAppPackageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 29
    .line 30
    const-string v4, "ContentProviderStrategy:communicateToBroker"

    .line 31
    .line 32
    invoke-static {v4, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->getContentProviderPath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v5, ".microsoft.identity.broker"

    .line 40
    .line 41
    invoke-static {v3, v5}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v6, "content://"

    .line 48
    .line 49
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "Request to BrokerContentProvider for uri path "

    .line 69
    .line 70
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->getContentProviderPath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v4, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->bundle:Landroid/os/Bundle;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    if-eqz p1, :cond_0

    .line 91
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    move-object v8, p1

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    move-object v8, v2

    .line 114
    :goto_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const/4 v9, 0x0

    .line 121
    const/4 v10, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    const/4 p1, 0x3

    .line 128
    if-eqz p0, :cond_2

    .line 129
    .line 130
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-eqz v3, :cond_1

    .line 135
    .line 136
    const-string v0, "Received successful result from Broker Content Provider."

    .line 137
    .line 138
    invoke-static {v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 142
    .line 143
    .line 144
    return-object v3

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    move-object p1, v0

    .line 147
    goto :goto_2

    .line 148
    :catch_0
    move-exception v0

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    :try_start_1
    invoke-static {v4, v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    new-instance v3, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 154
    .line 155
    const/4 v5, 0x2

    .line 156
    invoke-direct {v3, v5, p1, v0, v2}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 157
    .line 158
    .line 159
    throw v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :goto_1
    :try_start_2
    invoke-static {v4, v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 164
    .line 165
    invoke-direct {v0, p1, p1, v1, v2}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 166
    .line 167
    .line 168
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_2
    const-string p0, "Failed to get result from Broker Content Provider, cursor is null"

    .line 174
    .line 175
    invoke-static {v4, p0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 179
    .line 180
    const/4 v1, 0x5

    .line 181
    invoke-direct {v0, v1, p1, p0, v2}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 182
    .line 183
    .line 184
    throw v0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public final isSupportedByTargetedBroker(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;->mCache:Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;->supportsContentProvider(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
