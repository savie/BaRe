.class public final Lcb6;
.super Llb6;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcb6;->a:I

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
    iget p0, p0, Lcb6;->a:I

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
    sget-object v0, Lfi8;->x:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lov6;

    .line 27
    .line 28
    new-instance v0, Lqv6;

    .line 29
    .line 30
    invoke-direct {v0, p1, p0}, Lqv6;-><init>(Lov6;[B)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_0
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
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 45
    .line 46
    iget-object p1, p1, Lya;->a:Lf1;

    .line 47
    .line 48
    sget-object v0, Lfi8;->j:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lqs3;

    .line 55
    .line 56
    new-instance v0, Lss3;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-direct {v0, p1, v1}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lms8;->k([B)[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iput-object p0, v0, Lss3;->c:[B

    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
