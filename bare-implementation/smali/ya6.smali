.class public final Lya6;
.super Llb6;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lya6;->a:I

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
    iget p0, p0, Lya6;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->l()Lq1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lj1;->a:[B

    .line 15
    .line 16
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 17
    .line 18
    iget-object p1, p1, Lya;->a:Lf1;

    .line 19
    .line 20
    sget-object v0, Lfi8;->h:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lg06;

    .line 27
    .line 28
    new-instance v0, Li06;

    .line 29
    .line 30
    invoke-direct {v0, p1, p0}, Li06;-><init>(Lg06;[B)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->l()Lq1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p0, p0, Lj1;->a:[B

    .line 43
    .line 44
    iget-object v0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 45
    .line 46
    iget-object v0, v0, Lya;->a:Lf1;

    .line 47
    .line 48
    sget-object v1, Lfi8;->B:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lfi0;

    .line 55
    .line 56
    new-instance v1, Lhi0;

    .line 57
    .line 58
    invoke-direct {v1, v0, p0}, Lhi0;-><init>(Lfi0;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    iget-object p0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 63
    .line 64
    invoke-virtual {p0}, Lu;->C()[B

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 69
    .line 70
    iget-object p1, p1, Lya;->a:Lf1;

    .line 71
    .line 72
    sget-object v0, Lfi8;->B:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lfi0;

    .line 79
    .line 80
    new-instance v1, Lhi0;

    .line 81
    .line 82
    invoke-direct {v1, p1, p0}, Lhi0;-><init>(Lfi0;[B)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-object v1

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
