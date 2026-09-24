.class public Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
        "TC;>;"
    }
.end annotation


# static fields
.field public static final JOSE:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

.field public static final JWT:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;


# instance fields
.field private final allowedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/JOSEObjectType;->JOSE:Lcom/nimbusds/jose/JOSEObjectType;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    filled-new-array {v1, v2}, [Lcom/nimbusds/jose/JOSEObjectType;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;-><init>([Lcom/nimbusds/jose/JOSEObjectType;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->JOSE:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    .line 14
    .line 15
    new-instance v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    .line 16
    .line 17
    sget-object v1, Lcom/nimbusds/jose/JOSEObjectType;->JWT:Lcom/nimbusds/jose/JOSEObjectType;

    .line 18
    .line 19
    filled-new-array {v1, v2}, [Lcom/nimbusds/jose/JOSEObjectType;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;-><init>([Lcom/nimbusds/jose/JOSEObjectType;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->JWT:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iput-object p1, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    return-void

    .line 29
    :cond_0
    const-string p0, "The allowed types must not be empty"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public varargs constructor <init>([Lcom/nimbusds/jose/JOSEObjectType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "The allowed types must not be empty"

    .line 20
    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method


# virtual methods
.method public getAllowedTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public verify(Lcom/nimbusds/jose/JOSEObjectType;Lcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 14
    .line 15
    const-string p1, "Required JOSE header typ (type) parameter is missing"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "JOSE header typ (type) "

    .line 35
    .line 36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " not allowed"

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method
