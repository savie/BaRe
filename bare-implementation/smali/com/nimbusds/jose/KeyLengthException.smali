.class public Lcom/nimbusds/jose/KeyLengthException;
.super Lcom/nimbusds/jose/KeyException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final alg:Lcom/nimbusds/jose/Algorithm;

.field private final expectedLength:I


# direct methods
.method public constructor <init>(ILcom/nimbusds/jose/Algorithm;)V
    .locals 3

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const-string v0, "The expected key length is "

    .line 4
    .line 5
    const-string v1, " bits"

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "Unexpected key length"

    .line 13
    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, " (for "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " algorithm)"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v1, ""

    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/KeyException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput p1, p0, Lcom/nimbusds/jose/KeyLengthException;->expectedLength:I

    .line 46
    .line 47
    iput-object p2, p0, Lcom/nimbusds/jose/KeyLengthException;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/Algorithm;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(ILcom/nimbusds/jose/Algorithm;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/nimbusds/jose/KeyLengthException;->expectedLength:I

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/nimbusds/jose/KeyLengthException;->alg:Lcom/nimbusds/jose/Algorithm;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/nimbusds/jose/Algorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/KeyLengthException;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public getExpectedKeyLength()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/KeyLengthException;->expectedLength:I

    .line 2
    .line 3
    return p0
.end method
