.class Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/util/events/Event;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
        "TC;>;C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/util/events/Event<",
        "TS;TC;>;"
    }
.end annotation


# instance fields
.field private final context:Lcom/nimbusds/jose/proc/SecurityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;->source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;->context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getContext()Lcom/nimbusds/jose/proc/SecurityContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;->context:Lcom/nimbusds/jose/proc/SecurityContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSource()Lcom/nimbusds/jose/jwk/source/JWKSetSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;->source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    return-object p0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;->getSource()Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
