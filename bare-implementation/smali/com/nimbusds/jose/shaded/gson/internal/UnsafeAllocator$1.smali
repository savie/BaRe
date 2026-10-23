.class Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator$1;
.super Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator;->create()Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$allocateInstance:Ljava/lang/reflect/Method;

.field final synthetic val$unsafe:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator$1;->val$allocateInstance:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator$1;->val$unsafe:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator;->access$000(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator$1;->val$allocateInstance:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/UnsafeAllocator$1;->val$unsafe:Ljava/lang/Object;

    .line 7
    .line 8
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
