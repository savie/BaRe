.class public final Lcom/microsoft/identity/common/internal/broker/AuthUxJavaScriptInterface;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final receiveAuthUxMessage(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string p0, "Function name: ["

    .line 2
    .line 3
    const-string v0, "Correlation ID during JavaScript Call: ["

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 9
    .line 10
    const-string v1, "AuthUxJavaScriptInterface:receiveAuthUxMessage"

    .line 11
    .line 12
    const-string v2, "Received a payload from AuthUX through JavaScript API."

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    new-instance v2, Lt14;

    .line 18
    .line 19
    invoke-direct {v2}, Lt14;-><init>()V

    .line 20
    .line 21
    .line 22
    const-class v3, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;

    .line 23
    .line 24
    new-instance v4, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayloadKTDeserializer;

    .line 25
    .line 26
    invoke-direct {v4}, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayloadKTDeserializer;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4, v3}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lcom/google/gson/a;

    .line 33
    .line 34
    invoke-direct {v4, v2}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p1, v3}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast p1, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->getCorrelationId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 v0, 0x5d

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->getActionName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->getActionComponent()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/AuthUxJsonPayload;->getParams()Lcom/microsoft/identity/common/internal/broker/AuthUxParams;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-nez p1, :cond_0

    .line 88
    .line 89
    const-string p0, "Payload from AuthUX contained no \"params\" field."

    .line 90
    .line 91
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catch_0
    move-exception p0

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/AuthUxParams;->getOperation()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string p0, "number_matching"

    .line 120
    .line 121
    invoke-static {v2, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-eqz p0, :cond_1

    .line 126
    .line 127
    sget p0, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->a:I

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/AuthUxParams;->getSessionId()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/AuthUxParams;->getCodeMatch()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->storeNumberMatch(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_1
    const-string p0, "Payload from AuthUX contained an unknown function name."

    .line 142
    .line 143
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :goto_0
    instance-of p1, p0, Ljava/lang/NullPointerException;

    .line 148
    .line 149
    if-eqz p1, :cond_2

    .line 150
    .line 151
    const-string p1, "Payload with missing mandatory fields sent through JavaScriptInterface"

    .line 152
    .line 153
    invoke-static {v1, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_2
    instance-of p1, p0, Lm55;

    .line 158
    .line 159
    const/4 v0, 0x1

    .line 160
    if-eqz p1, :cond_3

    .line 161
    .line 162
    move p1, v0

    .line 163
    goto :goto_1

    .line 164
    :cond_3
    instance-of p1, p0, Lkm4;

    .line 165
    .line 166
    :goto_1
    if-eqz p1, :cond_4

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_4
    instance-of v0, p0, Lgl4;

    .line 170
    .line 171
    :goto_2
    if-eqz v0, :cond_5

    .line 172
    .line 173
    const-string p1, "Error Parsing JSON payload sent through JavaScriptInterface"

    .line 174
    .line 175
    invoke-static {v1, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    const-string p1, "Unknown error occurred while processing the payload."

    .line 180
    .line 181
    invoke-static {v1, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    :goto_3
    return-void
.end method
