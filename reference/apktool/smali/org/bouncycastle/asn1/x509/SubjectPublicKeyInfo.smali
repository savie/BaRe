.class public Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
.super Ly0;


# instance fields
.field public a:Lya;

.field public b:Lu;


# direct methods
.method public constructor <init>(Lya;Ly0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf82;

    .line 5
    .line 6
    invoke-interface {p2}, Lb0;->d()Lq1;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ly0;->i()[B

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p2, v1}, Lu;-><init>([BI)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 19
    .line 20
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lya;[B)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lf82;

    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p2, v1}, Lu;-><init>([BI)V

    .line 26
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    return-void
.end method

.method public static k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 4

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 12
    .line 13
    invoke-static {p0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lv1;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lv1;->E()Ljava/util/Enumeration;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lya;->k(Ljava/lang/Object;)Lya;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lu;->B(Ljava/lang/Object;)Lu;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iput-object p0, v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_1
    const-string v1, "Bad sequence size: "

    .line 53
    .line 54
    invoke-virtual {p0}, Lv1;->size()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-static {p0, v1}, Lz5;->c(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final d()Lq1;
    .locals 2

    .line 1
    new-instance v0, Lt82;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lt82;-><init>(Lb0;Lb0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final l()Lq1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 2
    .line 3
    invoke-virtual {p0}, Lu;->C()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lq1;->t([B)Lq1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
