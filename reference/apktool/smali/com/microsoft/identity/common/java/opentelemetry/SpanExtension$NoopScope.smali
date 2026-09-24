.class public final enum Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lv57;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;",
        ">;",
        "Lv57;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;

.field public static final enum INSTANCE:Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;

    .line 2
    .line 3
    const-string v1, "INSTANCE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;->INSTANCE:Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;

    .line 10
    .line 11
    filled-new-array {v0}, [Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;->$VALUES:[Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;

    .line 16
    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;->$VALUES:[Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension$NoopScope;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method
