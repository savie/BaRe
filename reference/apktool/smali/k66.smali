.class public final Lk66;
.super Ll66;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Ljava/math/BigInteger;

.field public final e:Ljava/math/BigInteger;

.field public f:Ljava/math/BigInteger;

.field public k:Ljava/math/BigInteger;

.field public n:Ljava/math/BigInteger;

.field public p:Ljava/math/BigInteger;

.field public q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Ll66;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lk66;->d:Ljava/math/BigInteger;

    .line 9
    .line 10
    iput-object p2, p0, Lk66;->e:Ljava/math/BigInteger;

    .line 11
    .line 12
    iput-object p3, p0, Lk66;->f:Ljava/math/BigInteger;

    .line 13
    .line 14
    iput-object p4, p0, Lk66;->k:Ljava/math/BigInteger;

    .line 15
    .line 16
    iput-object p5, p0, Lk66;->n:Ljava/math/BigInteger;

    .line 17
    .line 18
    iput-object p6, p0, Lk66;->p:Ljava/math/BigInteger;

    .line 19
    .line 20
    iput-object p7, p0, Lk66;->q:Ljava/math/BigInteger;

    .line 21
    .line 22
    if-eqz p5, :cond_1

    .line 23
    .line 24
    if-eqz p6, :cond_1

    .line 25
    .line 26
    if-nez p7, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    :goto_0
    if-nez p5, :cond_2

    .line 31
    .line 32
    if-nez p6, :cond_2

    .line 33
    .line 34
    if-nez p7, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    const-string p0, "All CRT values must either be present or omitted"

    .line 38
    .line 39
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    throw p0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2
    .line 3
    iput-object v0, p0, Lk66;->f:Ljava/math/BigInteger;

    .line 4
    .line 5
    iput-object v0, p0, Lk66;->k:Ljava/math/BigInteger;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lk66;->n:Ljava/math/BigInteger;

    .line 9
    .line 10
    iput-object v0, p0, Lk66;->p:Ljava/math/BigInteger;

    .line 11
    .line 12
    iput-object v0, p0, Lk66;->q:Ljava/math/BigInteger;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Ll66;->b:Z

    .line 16
    .line 17
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lk66;->q:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "PrivateKeyValues.Rsa{modulus="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lk66;->d:Ljava/math/BigInteger;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", publicExponent="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lk66;->e:Ljava/math/BigInteger;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ", bitLength="

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v2, p0, Ll66;->a:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", hasCrtValues="

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", destroyed="

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-boolean p0, p0, Ll66;->b:Z

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 p0, 0x7d

    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
