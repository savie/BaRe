.class public final Lfp4;
.super Ltl0;


# static fields
.field public static final c:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfp4;->c:Ljava/util/HashSet;

    .line 7
    .line 8
    sget-object v1, Lpj5;->L:Lf1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    sget-object v1, Lpj5;->M:Lf1;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    sget-object v1, Lpj5;->N:Lf1;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    sget-object v1, Lvg0;->z1:Lf1;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    sget-object v1, Lvg0;->A1:Lf1;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    sget-object v1, Lvg0;->B1:Lf1;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lfp4;->c:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ltl0;-><init>(Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 1

    .line 1
    new-instance p0, Lcg0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->d:Lx1;

    .line 7
    .line 8
    iput-object v0, p0, Lcg0;->c:Lx1;

    .line 9
    .line 10
    invoke-static {p1}, Ltu0;->e(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ln60;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lp45;

    .line 15
    .line 16
    iput-object p1, p0, Lcg0;->a:Lp45;

    .line 17
    .line 18
    iget-object p1, p1, Lei0;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lo45;

    .line 21
    .line 22
    iget-object p1, p1, Lo45;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcg0;->b:Ljava/lang/String;

    .line 29
    .line 30
    return-object p0
.end method

.method public final b(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 0

    .line 1
    new-instance p0, Ldg0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb6;->a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lr45;

    .line 11
    .line 12
    iput-object p1, p0, Ldg0;->a:Lr45;

    .line 13
    .line 14
    iget-object p1, p1, Lei0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lo45;

    .line 17
    .line 18
    iget-object p1, p1, Lo45;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Ldg0;->b:Ljava/lang/String;

    .line 25
    .line 26
    return-object p0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 2

    .line 1
    instance-of p0, p1, Lcg0;

    .line 2
    .line 3
    const-string v0, "."

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 16
    .line 17
    check-cast p1, Lcg0;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcg0;->getEncoded()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    instance-of p0, p1, Ldg0;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    .line 40
    .line 41
    check-cast p1, Ldg0;

    .line 42
    .line 43
    invoke-virtual {p1}, Ldg0;->getEncoded()[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 52
    .line 53
    const-string p1, "Unknown key specification: "

    .line 54
    .line 55
    invoke-static {p2, p1, v0}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Unsupported key type: "

    .line 72
    .line 73
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 0

    .line 1
    instance-of p0, p1, Lcg0;

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    instance-of p0, p1, Ldg0;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p0, "Unsupported key type"

    .line 11
    .line 12
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    return-object p1
.end method
