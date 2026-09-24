.class public final Lbb6;
.super Llb6;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lbb6;->a:I

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
    .locals 4

    .line 1
    iget p0, p0, Lbb6;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
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
    iget-object v0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 17
    .line 18
    iget-object v0, v0, Lya;->a:Lf1;

    .line 19
    .line 20
    sget-object v1, Lfi8;->L:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lrr6;

    .line 27
    .line 28
    new-instance v1, Ltr6;

    .line 29
    .line 30
    array-length v2, p0

    .line 31
    const/4 v3, 0x4

    .line 32
    invoke-static {p0, v3, v2}, Lms8;->t([BII)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v1, v0, p0}, Ltr6;-><init>(Lrr6;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    iget-object p0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 41
    .line 42
    invoke-virtual {p0}, Lu;->C()[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 47
    .line 48
    iget-object p1, p1, Lya;->a:Lf1;

    .line 49
    .line 50
    sget-object v0, Lfi8;->L:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lrr6;

    .line 57
    .line 58
    new-instance v1, Ltr6;

    .line 59
    .line 60
    invoke-direct {v1, p1, p0}, Ltr6;-><init>(Lrr6;[B)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-object v1

    .line 64
    :pswitch_0
    iget-object p0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 65
    .line 66
    invoke-virtual {p0}, Lu;->C()[B

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 71
    .line 72
    iget-object p1, p1, Lya;->a:Lf1;

    .line 73
    .line 74
    sget-object v0, Lfi8;->t:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lk33;

    .line 81
    .line 82
    new-instance v0, Lo33;

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    array-length v2, p0

    .line 86
    invoke-static {p0, v1, v2}, Lms8;->t([BII)[B

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {v0, p1, p0}, Lo33;-><init>(Lk33;[B)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
