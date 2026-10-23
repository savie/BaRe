.class public final Lcom/nimbusds/jose/jwk/KeyRevocation;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;
    }
.end annotation


# instance fields
.field private final reason:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

.field private final revokedAt:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/KeyRevocation;->revokedAt:Ljava/util/Date;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/KeyRevocation;->reason:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 10
    .line 11
    return-void
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/KeyRevocation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/KeyRevocation;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "revoked_at"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Lcom/nimbusds/jwt/util/DateUtils;->fromSecondsSinceEpoch(J)Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "reason"

    .line 12
    .line 13
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    new-instance v1, Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 30
    .line 31
    invoke-direct {v1, v0, p0}, Lcom/nimbusds/jose/jwk/KeyRevocation;-><init>(Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/KeyRevocation;->revokedAt:Ljava/util/Date;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/KeyRevocation;->revokedAt:Ljava/util/Date;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation;->getReason()Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/KeyRevocation;->getReason()Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    return v2
.end method

.method public getReason()Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyRevocation;->reason:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRevocationTime()Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyRevocation;->revokedAt:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/KeyRevocation;->revokedAt:Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation;->getReason()Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation;->getRevocationTime()Ljava/util/Date;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/nimbusds/jwt/util/DateUtils;->toSecondsSinceEpoch(Ljava/util/Date;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "revoked_at"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation;->getReason()Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation;->getReason()Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v1, "reason"

    .line 37
    .line 38
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_0
    return-object v0
.end method
