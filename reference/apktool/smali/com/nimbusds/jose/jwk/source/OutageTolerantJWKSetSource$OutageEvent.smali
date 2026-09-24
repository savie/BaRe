.class public Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$OutageEvent;
.super Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutageEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent<",
        "Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource<",
        "TC;>;TC;>;"
    }
.end annotation


# instance fields
.field private final exception:Ljava/lang/Exception;

.field private final remainingTime:J


# direct methods
.method private constructor <init>(Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource;Ljava/lang/Exception;JLcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource<",
            "TC;>;",
            "Ljava/lang/Exception;",
            "JTC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p5}, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$OutageEvent;->exception:Ljava/lang/Exception;

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$OutageEvent;->remainingTime:J

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource;Ljava/lang/Exception;JLcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$1;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$OutageEvent;-><init>(Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource;Ljava/lang/Exception;JLcom/nimbusds/jose/proc/SecurityContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Lcom/nimbusds/jose/proc/SecurityContext;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;->getContext()Lcom/nimbusds/jose/proc/SecurityContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$OutageEvent;->exception:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRemainingTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/OutageTolerantJWKSetSource$OutageEvent;->remainingTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic getSource()Lcom/nimbusds/jose/jwk/source/JWKSetSource;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;->getSource()Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
