.class public final Ldb6;
.super Llb6;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldb6;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;
    .locals 2

    .line 1
    iget p0, p0, Ldb6;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lew6;

    .line 7
    .line 8
    iget-object v0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 9
    .line 10
    invoke-virtual {v0}, Lu;->y()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 15
    .line 16
    iget-object p1, p1, Lya;->b:Lb0;

    .line 17
    .line 18
    invoke-static {p1}, Ltv6;->k(Ljava/lang/Object;)Ltv6;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lfi8;->e(Ltv6;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1, v0}, Lew6;-><init>(Ljava/lang/String;[B)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->l()Lq1;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object p0, p0, Lj1;->a:[B

    .line 39
    .line 40
    iget-object v0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 41
    .line 42
    iget-object v0, v0, Lya;->a:Lf1;

    .line 43
    .line 44
    sget-object v1, Lfi8;->D:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lj24;

    .line 51
    .line 52
    new-instance v1, Ll24;

    .line 53
    .line 54
    invoke-direct {v1, v0, p0}, Ll24;-><init>(Lj24;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    iget-object p0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 59
    .line 60
    invoke-virtual {p0}, Lu;->C()[B

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 65
    .line 66
    iget-object p1, p1, Lya;->a:Lf1;

    .line 67
    .line 68
    sget-object v0, Lfi8;->D:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lj24;

    .line 75
    .line 76
    new-instance v1, Ll24;

    .line 77
    .line 78
    invoke-direct {v1, p1, p0}, Ll24;-><init>(Lj24;[B)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-object v1

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
