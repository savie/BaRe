.class public final enum Lcom/microsoft/identity/common/java/logging/DiagnosticContext;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/logging/DiagnosticContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

.field public static final enum INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;


# instance fields
.field private final transient REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/microsoft/identity/common/java/logging/RequestContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 7
    .line 8
    filled-new-array {v0}, [Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->$VALUES:[Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "INSTANCE"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext$1;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 13
    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/logging/DiagnosticContext;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/logging/DiagnosticContext;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->$VALUES:[Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 8
    .line 9
    return-object p0
.end method

.method public final setRequestContext(Lcom/microsoft/identity/common/java/logging/RequestContext;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "thread_id"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
