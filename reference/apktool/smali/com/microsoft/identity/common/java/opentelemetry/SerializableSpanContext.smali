.class public Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrj7;
.implements Ljava/io/Serializable;


# instance fields
.field private final mSpanId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "span_id"
    .end annotation
.end field

.field private final mTraceFlags:B
    .annotation runtime Ly77;
        value = "trace_flags"
    .end annotation
.end field

.field private final mTraceId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "trace_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;->mTraceId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;->mSpanId:Ljava/lang/String;

    .line 12
    .line 13
    iput-byte p3, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;->mTraceFlags:B

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "spanId is marked non-null but is null"

    .line 17
    .line 18
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    const-string p0, "traceId is marked non-null but is null"

    .line 23
    .line 24
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method


# virtual methods
.method public final getSpanId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;->mSpanId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTraceFlags()Lz88;
    .locals 1

    .line 1
    iget-byte p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;->mTraceFlags:B

    .line 2
    .line 3
    sget-object v0, Lsa4;->c:[Lsa4;

    .line 4
    .line 5
    and-int/lit16 p0, p0, 0xff

    .line 6
    .line 7
    aget-object p0, v0, p0

    .line 8
    .line 9
    return-object p0
.end method

.method public final getTraceId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;->mTraceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTraceState()La98;
    .locals 0

    .line 1
    sget-object p0, Lu40;->c:Lrb0;

    .line 2
    .line 3
    return-object p0
.end method
