.class public final Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final getAccountManagerApps:Lbt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbt3;"
        }
    .end annotation
.end field

.field private final isSignedByKnownKeys:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field

.field private final knownBrokerApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;

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
    sput-object v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

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
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 29
    .line 30
    sget v4, Lcom/microsoft/identity/common/internal/broker/BrokerData;->a:I

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->access$getAccountManagerBrokers$cp()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil$2;

    .line 58
    .line 59
    invoke-direct {v1, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil$2;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil$3;

    .line 63
    .line 64
    invoke-direct {v2, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil$3;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;->knownBrokerApps:Ljava/util/Set;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;->isSignedByKnownKeys:Lmt3;

    .line 73
    .line 74
    iput-object v2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;->getAccountManagerApps:Lbt3;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final getActiveBrokerFromAccountManager()Lcom/microsoft/identity/common/internal/broker/BrokerData;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, ":getActiveBrokerFromAccountManager"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;->getAccountManagerApps:Lbt3;

    .line 16
    .line 17
    invoke-interface {v2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, [Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-ge v4, v3, :cond_6

    .line 26
    .line 27
    aget-object v5, v2, v4

    .line 28
    .line 29
    iget-object v6, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v6, :cond_5

    .line 32
    .line 33
    iget-object v7, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v7, :cond_0

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {v6}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v5}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v7, "com.microsoft.workaccount"

    .line 64
    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_5

    .line 70
    .line 71
    new-instance v5, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v7, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;->knownBrokerApps:Ljava/util/Set;

    .line 77
    .line 78
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_2

    .line 87
    .line 88
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    move-object v9, v8

    .line 93
    check-cast v9, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 94
    .line 95
    invoke-virtual {v9}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const/4 v10, 0x1

    .line 100
    invoke-static {v9, v6, v10}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v9, :cond_1

    .line 105
    .line 106
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_4

    .line 119
    .line 120
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    iget-object v7, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/AccountManagerBrokerDiscoveryUtil;->isSignedByKnownKeys:Lmt3;

    .line 125
    .line 126
    invoke-interface {v7, v6}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    check-cast v7, Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_3

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    move-object v6, v1

    .line 140
    :goto_2
    check-cast v6, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 141
    .line 142
    if-eqz v6, :cond_5

    .line 143
    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, " is the active AccountManager broker."

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v6

    .line 165
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_6
    const-string p0, "No valid AccountManager broker is found"

    .line 170
    .line 171
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-object v1

    .line 175
    :catchall_0
    move-exception p0

    .line 176
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 177
    .line 178
    const-string v2, "account_manager_failed"

    .line 179
    .line 180
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-direct {v0, v2, p0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    throw v0
.end method
