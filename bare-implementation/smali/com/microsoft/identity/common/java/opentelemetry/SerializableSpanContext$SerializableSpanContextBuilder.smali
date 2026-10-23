.class public final Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private spanId:Ljava/lang/String;

.field private traceFlags:B

.field private traceId:Ljava/lang/String;


# virtual methods
.method public final build()Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->spanId:Ljava/lang/String;

    .line 6
    .line 7
    iget-byte p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceFlags:B

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final spanId(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->spanId:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "spanId is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SerializableSpanContext.SerializableSpanContextBuilder(traceId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", spanId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->spanId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", traceFlags="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-byte p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceFlags:B

    .line 29
    .line 30
    const-string v1, ")"

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public final traceFlags(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceFlags:B

    .line 2
    .line 3
    return-void
.end method

.method public final traceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceId:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "traceId is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
