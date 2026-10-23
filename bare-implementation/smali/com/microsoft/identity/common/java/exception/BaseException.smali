.class public abstract Lcom/microsoft/identity/common/java/exception/BaseException;
.super Ljava/lang/Exception;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/exception/IErrorInformation;


# instance fields
.field private mCliTelemErrorCode:Ljava/lang/String;

.field private mCliTelemSubErrorCode:Ljava/lang/String;

.field private mCorrelationId:Ljava/lang/String;

.field private final mErrorCode:Ljava/lang/String;

.field private mRefreshTokenAge:Ljava/lang/String;

.field private mSpeRing:Ljava/lang/String;

.field private mSubErrorCode:Ljava/lang/String;

.field private final mSuppressedException:Ljava/util/ArrayList;

.field private final mTelemetry:Ljava/util/ArrayList;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    const-string v1, "invalid_broker_bundle"

    .line 4
    .line 5
    const-string v2, "io_error"

    .line 6
    .line 7
    const-string v3, "device_network_not_available"

    .line 8
    .line 9
    const-string v4, "operation_interrupted"

    .line 10
    .line 11
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mTelemetry:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mSuppressedException:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mErrorCode:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p1, Lcom/microsoft/identity/common/java/telemetry/events/ErrorEvent;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p2, "Microsoft.MSAL.error_event"

    .line 26
    .line 27
    const-string p3, "Microsoft.MSAL.event_type"

    .line 28
    .line 29
    invoke-virtual {p1, p3, p2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    array-length p3, p2

    .line 39
    if-lez p3, :cond_0

    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    aget-object p2, p2, p3

    .line 43
    .line 44
    new-instance p3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-static {p3}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v1, "tag_"

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    int-to-long v1, p3

    .line 112
    const-wide/32 v3, 0x7fffffff

    .line 113
    .line 114
    .line 115
    add-long/2addr v1, v3

    .line 116
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    const-string v0, "Microsoft.MSAL.error_tag"

    .line 124
    .line 125
    invoke-virtual {p1, v0, p3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string p3, "Microsoft.MSAL.error_location_class_name"

    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p1, p3, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    const-string v0, "Microsoft.MSAL.error_location_line_number"

    .line 146
    .line 147
    invoke-virtual {p1, v0, p3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string p3, "Microsoft.MSAL.error_location_method_name"

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p1, p3, p2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    const-string p3, "Microsoft.MSAL.error_class_name"

    .line 168
    .line 169
    invoke-virtual {p1, p3, p2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string p2, "Microsoft.MSAL.error_description"

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p1, p2, v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    if-eqz p2, :cond_1

    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-virtual {p1, p3, p2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_1
    const-string p2, "Microsoft.MSAL.error_code"

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    invoke-virtual {p1, p2, p3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string p2, "Microsoft.MSAL.server_error_code"

    .line 212
    .line 213
    iget-object p3, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mCliTelemErrorCode:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p1, p2, p3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string p2, "Microsoft.MSAL.server_sub_error_code"

    .line 219
    .line 220
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mCliTelemSubErrorCode:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p1, p2, p0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method


# virtual methods
.method public final addSuppressedException(Lcom/microsoft/identity/common/exception/BrokerCommunicationException;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mSuppressedException:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCliTelemErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mCliTelemErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCliTelemSubErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mCliTelemSubErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCorrelationId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mCorrelationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final getRefreshTokenAge()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mRefreshTokenAge:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSpeRing()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mSpeRing:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mSubErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSuppressedException()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mSuppressedException:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mUsername:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCliTelemErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mCliTelemErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCliTelemSubErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mCliTelemSubErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mCorrelationId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshTokenAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mRefreshTokenAge:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSpeRing(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mSpeRing:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mSubErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTelemetry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mTelemetry:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "telemetry is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/exception/BaseException;->mUsername:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
