.class public Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/KeyRevocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reason"
.end annotation


# static fields
.field public static final COMPROMISED:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

.field public static final SUPERSEDED:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

.field public static final UNSPECIFIED:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 2
    .line 3
    const-string v1, "unspecified"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->UNSPECIFIED:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 9
    .line 10
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 11
    .line 12
    const-string v1, "compromised"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->COMPROMISED:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 18
    .line 19
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 20
    .line 21
    const-string v1, "superseded"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->SUPERSEDED:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

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
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->value:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;
    .locals 2

    .line 1
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->UNSPECIFIED:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->getValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->COMPROMISED:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->SUPERSEDED:Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->getValue()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->getValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->getValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyRevocation$Reason;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
