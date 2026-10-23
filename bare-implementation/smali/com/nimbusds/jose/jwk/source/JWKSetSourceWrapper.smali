.class public abstract Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSetSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;)V"
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
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;->source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;->source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getSource()Lcom/nimbusds/jose/jwk/source/JWKSetSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;->source:Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 2
    .line 3
    return-object p0
.end method
