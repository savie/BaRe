.class public final Lnw5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ltf7;


# static fields
.field public static final b:Ll15;


# instance fields
.field public a:Llv1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lnw5;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnw5;->b:Ll15;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Lst6;Ljavax/crypto/SecretKey;)Z
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p1, Lev6;->b:Lzu6;

    .line 2
    .line 3
    iget-object v1, p1, Lev6;->a:Ldv6;

    .line 4
    .line 5
    iget-object p0, p0, Lnw5;->a:Llv1;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Llv1;->h(Ljava/lang/String;)Lc55;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p0, p2}, Lc55;->init([B)V

    .line 23
    .line 24
    .line 25
    iget-object p2, v0, Low0;->a:[B

    .line 26
    .line 27
    move-object v2, v1

    .line 28
    check-cast v2, Lut6;

    .line 29
    .line 30
    iget v2, v2, Lut6;->n:I

    .line 31
    .line 32
    const/16 v3, 0x30

    .line 33
    .line 34
    invoke-interface {p0, p2, v2, v3}, Lc55;->update([BII)V

    .line 35
    .line 36
    .line 37
    sget-object p2, Lut6;->p:[B

    .line 38
    .line 39
    invoke-interface {p0, p2}, Lc55;->update([B)V

    .line 40
    .line 41
    .line 42
    iget-object p2, v0, Low0;->a:[B

    .line 43
    .line 44
    move-object v0, v1

    .line 45
    check-cast v0, Lut6;

    .line 46
    .line 47
    iget v0, v0, Lut6;->o:I

    .line 48
    .line 49
    const/16 v2, 0x40

    .line 50
    .line 51
    sub-int/2addr v0, v2

    .line 52
    invoke-interface {p0, p2, v2, v0}, Lc55;->update([BII)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Lc55;->b()[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    move-object p2, v1

    .line 60
    check-cast p2, Lut6;

    .line 61
    .line 62
    iget-object p2, p2, Lut6;->m:[B

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    move v2, v0

    .line 66
    :goto_0
    const/16 v3, 0x10

    .line 67
    .line 68
    if-ge v2, v3, :cond_1

    .line 69
    .line 70
    aget-byte v3, p0, v2

    .line 71
    .line 72
    aget-byte v4, p2, v2

    .line 73
    .line 74
    if-eq v3, v4, :cond_0

    .line 75
    .line 76
    sget-object v2, Lnw5;->b:Ll15;

    .line 77
    .line 78
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-interface {v2, p0}, Ll15;->q([Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    const-string p0, "Packet {} has header: {}"

    .line 94
    .line 95
    invoke-interface {v2, p1, v1, p0}, Ll15;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lh67; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    return v0

    .line 99
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const/4 p0, 0x1

    .line 103
    return p0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public final f(Lrt6;Ljavax/crypto/SecretKey;)Lrt6;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lmw5;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lmw5;-><init>(Lnw5;Lrt6;Ljavax/crypto/SecretKey;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lev6;->c()Ldv6;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lut6;

    .line 14
    .line 15
    iget-object p0, p0, Lut6;->e:Lit6;

    .line 16
    .line 17
    sget-object p2, Lnw5;->b:Ll15;

    .line 18
    .line 19
    const-string v0, "Not wrapping {} as signed, as no key is set."

    .line 20
    .line 21
    invoke-interface {p2, p0, v0}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method
