.class public final Lcom/nimbusds/jose/JOSEObjectType;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# static fields
.field public static final JOSE:Lcom/nimbusds/jose/JOSEObjectType;

.field public static final JOSE_JSON:Lcom/nimbusds/jose/JOSEObjectType;

.field public static final JWT:Lcom/nimbusds/jose/JOSEObjectType;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/nimbusds/jose/JOSEObjectType;

    .line 2
    .line 3
    const-string v1, "JOSE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JOSEObjectType;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/nimbusds/jose/JOSEObjectType;->JOSE:Lcom/nimbusds/jose/JOSEObjectType;

    .line 9
    .line 10
    new-instance v0, Lcom/nimbusds/jose/JOSEObjectType;

    .line 11
    .line 12
    const-string v1, "JOSE+JSON"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JOSEObjectType;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/nimbusds/jose/JOSEObjectType;->JOSE_JSON:Lcom/nimbusds/jose/JOSEObjectType;

    .line 18
    .line 19
    new-instance v0, Lcom/nimbusds/jose/JOSEObjectType;

    .line 20
    .line 21
    const-string v1, "JWT"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JOSEObjectType;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/nimbusds/jose/JOSEObjectType;->JWT:Lcom/nimbusds/jose/JOSEObjectType;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/nimbusds/jose/JOSEObjectType;->type:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/nimbusds/jose/JOSEObjectType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/nimbusds/jose/JOSEObjectType;->type:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/nimbusds/jose/JOSEObjectType;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/nimbusds/jose/JOSEObjectType;->type:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JOSEObjectType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JOSEObjectType;->type:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JOSEObjectType;->type:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONStringUtils;->toJSONString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JOSEObjectType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
