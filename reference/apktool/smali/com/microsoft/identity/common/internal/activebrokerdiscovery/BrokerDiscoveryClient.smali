.class public final Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final synthetic a:I

.field private static final classLevelLock:Lmj5;

.field private static final dispatcher:Lrx1;


# instance fields
.field private final brokerCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation
.end field

.field private final cache:Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

.field private final getActiveBrokerFromAccountManager:Lbt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbt3;"
        }
    .end annotation
.end field

.field private final ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;

.field private final isPackageInstalled:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field

.field private final isValidBroker:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 2
    .line 3
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln81;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v0, Lcn2;->a:Lrf2;

    .line 14
    .line 15
    sget-object v0, Lse2;->c:Lse2;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v0, Lme8;->c:Lme8;

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lme8;->n(I)Lrx1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->dispatcher:Lrx1;

    .line 29
    .line 30
    new-instance v0, Lmj5;

    .line 31
    .line 32
    invoke-direct {v0}, Lmj5;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->classLevelLock:Lmj5;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->access$getProdBrokers$cp()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$1;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$1;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;

    .line 14
    .line 15
    invoke-direct {v2, p1, p2}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$2;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$2;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$3;

    .line 24
    .line 25
    invoke-direct {v3, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$3;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->brokerCandidates:Ljava/util/Set;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->getActiveBrokerFromAccountManager:Lbt3;

    .line 37
    .line 38
    iput-object v2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;

    .line 39
    .line 40
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->cache:Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->isPackageInstalled:Lmt3;

    .line 43
    .line 44
    iput-object v3, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->isValidBroker:Lmt3;

    .line 45
    .line 46
    return-void
.end method

.method public static final access$getActiveBrokerAsync(Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;ZLkv1;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->cache:Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->isValidBroker:Lmt3;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->isPackageInstalled:Lmt3;

    .line 6
    .line 7
    instance-of v1, p2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move-object v1, p2

    .line 12
    check-cast v1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;

    .line 13
    .line 14
    iget v2, v1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v2, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v2, v5

    .line 23
    iput v2, v1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;->label:I

    .line 24
    .line 25
    :goto_0
    move-object p2, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;-><init>(Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;Lkv1;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v1, p2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    iget v2, p2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;->label:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    if-ne v2, v5, :cond_1

    .line 42
    .line 43
    iget-object p0, p2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;->L$2:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p1, p2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;->L$0:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 46
    .line 47
    invoke-static {v1}, Llg7;->H(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v7

    .line 58
    :cond_2
    invoke-static {v1}, Llg7;->H(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string v6, ":getActiveBrokerAsync"

    .line 69
    .line 70
    invoke-static {v1, v2, v6}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    if-nez p1, :cond_6

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->shouldUseAccountManager()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->getActiveBrokerFromAccountManager:Lbt3;

    .line 83
    .line 84
    check-cast p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$1;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$1;->invoke()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->getCachedActiveBroker()Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 101
    .line 102
    .line 103
    move-object v1, v3

    .line 104
    check-cast v1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$2;

    .line 105
    .line 106
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_4

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "There is a cached broker: "

    .line 121
    .line 122
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, ", but the app is no longer installed."

    .line 129
    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v8, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->clearCachedActiveBroker()V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 145
    .line 146
    .line 147
    move-object v1, v4

    .line 148
    check-cast v1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$3;

    .line 149
    .line 150
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_5

    .line 161
    .line 162
    const-string p1, "Clearing cache as the installed app does not have a matching signature hash."

    .line 163
    .line 164
    invoke-static {v8, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->clearCachedActiveBroker()V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string p2, "Returning cached broker: "

    .line 174
    .line 175
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {v8, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-object p1

    .line 189
    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 190
    .line 191
    .line 192
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->brokerCandidates:Ljava/util/Set;

    .line 193
    .line 194
    move p1, v5

    .line 195
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;

    .line 196
    .line 197
    iput-object p0, p2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;->L$0:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 198
    .line 199
    iput-object v8, p2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;->L$2:Ljava/lang/String;

    .line 200
    .line 201
    iput p1, p2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBrokerAsync$1;->label:I

    .line 202
    .line 203
    new-instance v1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;

    .line 204
    .line 205
    const/4 v6, 0x0

    .line 206
    invoke-direct/range {v1 .. v6}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;-><init>(Ljava/util/Set;Lmt3;Lmt3;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljv1;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v1, p2}, Ll73;->k(Lqt3;Ljv1;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    sget-object p1, Lyx1;->a:Lyx1;

    .line 214
    .line 215
    if-ne v1, p1, :cond_7

    .line 216
    .line 217
    return-object p1

    .line 218
    :cond_7
    move-object p1, p0

    .line 219
    move-object p0, v8

    .line 220
    :goto_3
    check-cast v1, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 221
    .line 222
    if-eqz v1, :cond_8

    .line 223
    .line 224
    iget-object p0, p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->cache:Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

    .line 225
    .line 226
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->setCachedActiveBroker(Lcom/microsoft/identity/common/internal/broker/BrokerData;)V

    .line 227
    .line 228
    .line 229
    return-object v1

    .line 230
    :cond_8
    const-string p2, "Will skip broker discovery via IPC and fall back to AccountManager for the next 60 minutes."

    .line 231
    .line 232
    invoke-static {p0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object p2, p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->cache:Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

    .line 236
    .line 237
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->clearCachedActiveBroker()V

    .line 238
    .line 239
    .line 240
    iget-object p2, p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->cache:Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

    .line 241
    .line 242
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->setShouldUseAccountManagerForTheNextMilliseconds()V

    .line 243
    .line 244
    .line 245
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->getActiveBrokerFromAccountManager:Lbt3;

    .line 246
    .line 247
    check-cast p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$1;

    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$1;->invoke()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 254
    .line 255
    new-instance p2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v0, "Tried getting active broker from account manager, get "

    .line 258
    .line 259
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    if-eqz p1, :cond_9

    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    :cond_9
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const/16 v0, 0x2e

    .line 272
    .line 273
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    invoke-static {p0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-object p1
.end method

.method public static final synthetic access$getClassLevelLock$cp()Lmj5;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->classLevelLock:Lmj5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDispatcher$cp()Lrx1;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->dispatcher:Lrx1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final getActiveBroker()Lcom/microsoft/identity/common/internal/broker/BrokerData;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$getActiveBroker$1;-><init>(Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;Ljv1;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Llv2;->a:Llv2;

    .line 8
    .line 9
    invoke-static {p0, v0}, Ll73;->B(Lox1;Lqt3;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 14
    .line 15
    return-object p0
.end method
