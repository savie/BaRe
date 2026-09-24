.class final Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lws7;",
        "Lqt3;"
    }
.end annotation

.annotation runtime Lnd2;
    c = "com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient$Companion$queryFromBroker$2"
    f = "BrokerDiscoveryClient.kt"
    l = {
        0x86
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $brokerCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;

.field final synthetic $isPackageInstalled:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field

.field final synthetic $isValidBroker:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Lmt3;Lmt3;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;",
            "Lmt3;",
            "Lmt3;",
            "Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;",
            "Ljv1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$brokerCandidates:Ljava/util/Set;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$isPackageInstalled:Lmt3;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$isValidBroker:Lmt3;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljv1;",
            ")",
            "Ljv1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$isValidBroker:Lmt3;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$brokerCandidates:Ljava/util/Set;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$isPackageInstalled:Lmt3;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;-><init>(Ljava/util/Set;Lmt3;Lmt3;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljv1;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->label:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Lxx1;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$brokerCandidates:Ljava/util/Set;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$isPackageInstalled:Lmt3;

    .line 49
    .line 50
    invoke-interface {v5, v4}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$isValidBroker:Lmt3;

    .line 86
    .line 87
    invoke-interface {v5, v4}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 104
    .line 105
    const/16 v4, 0xa

    .line 106
    .line 107
    invoke-static {v3, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_6

    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 129
    .line 130
    invoke-static {}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->access$getDispatcher$cp()Lrx1;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    new-instance v6, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;

    .line 135
    .line 136
    iget-object v7, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->$ipcStrategy:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;

    .line 137
    .line 138
    invoke-direct {v6, v4, v7, v1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1;-><init>(Lcom/microsoft/identity/common/internal/broker/BrokerData;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;Ljv1;)V

    .line 139
    .line 140
    .line 141
    const/4 v4, 0x2

    .line 142
    invoke-static {p1, v5, v6, v4}, Ll73;->e(Lxx1;Lrx1;Lqt3;I)Lkg2;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    iput v2, p0, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient$Companion$queryFromBroker$2;->label:I

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    sget-object p0, Lov2;->a:Lov2;

    .line 159
    .line 160
    :goto_3
    move-object p1, p0

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    new-instance p1, Lze0;

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    new-array v1, v1, [Ljg2;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, [Ljg2;

    .line 172
    .line 173
    invoke-direct {p1, v0}, Lze0;-><init>([Ljg2;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p0}, Lze0;->a(Lws7;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    goto :goto_3

    .line 181
    :goto_4
    sget-object p0, Lyx1;->a:Lyx1;

    .line 182
    .line 183
    if-ne p1, p0, :cond_8

    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_8
    :goto_5
    check-cast p1, Ljava/lang/Iterable;

    .line 187
    .line 188
    invoke-static {p1}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    return-object p0
.end method
