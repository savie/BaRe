.class public final Lfq9;
.super Lbr9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lnq9;

.field public final e:Lvk9;

.field public final f:Lkm8;


# direct methods
.method public constructor <init>(Lnq9;Lvk9;Lkm8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfq9;->d:Lnq9;

    .line 5
    .line 6
    iput-object p2, p0, Lfq9;->e:Lvk9;

    .line 7
    .line 8
    iput-object p3, p0, Lfq9;->f:Lkm8;

    .line 9
    .line 10
    return-void
.end method

.method public static K(Lyp9;)Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 1
    sget-object v0, Lyp9;->b:Lyp9;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lyr9;->a:Ljava/security/spec/ECParameterSpec;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lyp9;->c:Lyp9;

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    sget-object p0, Lyr9;->b:Ljava/security/spec/ECParameterSpec;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    sget-object v0, Lyp9;->d:Lyp9;

    .line 16
    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    sget-object p0, Lyr9;->c:Ljava/security/spec/ECParameterSpec;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "Unable to determine NIST curve type for "

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public static L(Lnq9;Lkm8;)Lfq9;
    .locals 5

    .line 1
    iget-object v0, p0, Lnq9;->f:Ld2a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p1, Lkm8;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Ld2a;

    .line 9
    .line 10
    invoke-virtual {v2}, Ld2a;->b()[B

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0}, Ld2a;->b()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    array-length v3, v2

    .line 19
    const/16 v4, 0x20

    .line 20
    .line 21
    if-ne v3, v4, :cond_1

    .line 22
    .line 23
    invoke-static {v2}, Lnc8;->v0([B)[B

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Lfq9;

    .line 34
    .line 35
    invoke-direct {v0, p0, v1, p1}, Lfq9;-><init>(Lnq9;Lvk9;Lkm8;)V

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_0
    const-string p0, "Invalid private key for public key."

    .line 40
    .line 41
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_1
    const-string p0, "Private key bytes length for X25519 curve must be 32"

    .line 46
    .line 47
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_2
    const-string p0, "ECIES private key for X25519 curve cannot be constructed with NIST-curve public key"

    .line 52
    .line 53
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v1
.end method

.method public static M(Lnq9;Lvk9;)Lfq9;
    .locals 7

    .line 1
    iget-object v0, p0, Lnq9;->e:Ljava/security/spec/ECPoint;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p1, Lvk9;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Ljava/math/BigInteger;

    .line 9
    .line 10
    iget-object v3, p0, Lnq9;->d:Lcq9;

    .line 11
    .line 12
    iget-object v3, v3, Lcq9;->a:Lyp9;

    .line 13
    .line 14
    invoke-static {v3}, Lfq9;->K(Lyp9;)Ljava/security/spec/ECParameterSpec;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const-string v6, "Invalid private value"

    .line 27
    .line 28
    if-lez v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-gez v4, :cond_1

    .line 35
    .line 36
    invoke-static {v3}, Lfq9;->K(Lyp9;)Ljava/security/spec/ECParameterSpec;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Lyr9;->c(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v0}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    new-instance v0, Lfq9;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1, v1}, Lfq9;-><init>(Lnq9;Lvk9;Lkm8;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_0
    invoke-static {v6}, Lm0;->h(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_1
    invoke-static {v6}, Lm0;->h(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_2
    const-string p0, "ECIES private key for NIST curve cannot be constructed with X25519-curve public key"

    .line 65
    .line 66
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method


# virtual methods
.method public final synthetic G()Lbd9;
    .locals 0

    .line 1
    iget-object p0, p0, Lfq9;->d:Lnq9;

    .line 2
    .line 3
    iget-object p0, p0, Lnq9;->d:Lcq9;

    .line 4
    .line 5
    return-object p0
.end method

.method public final synthetic J()Lvm4;
    .locals 0

    .line 1
    iget-object p0, p0, Lfq9;->d:Lnq9;

    .line 2
    .line 3
    return-object p0
.end method
