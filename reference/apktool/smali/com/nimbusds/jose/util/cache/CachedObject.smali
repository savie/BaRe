.class public final Lcom/nimbusds/jose/util/cache/CachedObject;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final expirationTime:J

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;JJ)V"
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
    iput-object p1, p0, Lcom/nimbusds/jose/util/cache/CachedObject;->object:Ljava/lang/Object;

    .line 8
    .line 9
    iput-wide p2, p0, Lcom/nimbusds/jose/util/cache/CachedObject;->timestamp:J

    .line 10
    .line 11
    iput-wide p4, p0, Lcom/nimbusds/jose/util/cache/CachedObject;->expirationTime:J

    .line 12
    .line 13
    return-void
.end method

.method public static computeExpirationTime(JJ)J
    .locals 0

    .line 1
    add-long/2addr p0, p2

    .line 2
    const-wide/16 p2, 0x0

    .line 3
    .line 4
    cmp-long p2, p0, p2

    .line 5
    .line 6
    if-gez p2, :cond_0

    .line 7
    .line 8
    const-wide p0, 0x7fffffffffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :cond_0
    return-wide p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/cache/CachedObject;->object:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getExpirationTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/util/cache/CachedObject;->expirationTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/util/cache/CachedObject;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isExpired(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/util/cache/CachedObject;->isValid(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public isValid(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/util/cache/CachedObject;->expirationTime:J

    .line 2
    .line 3
    cmp-long p0, p1, v0

    .line 4
    .line 5
    if-gez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method
