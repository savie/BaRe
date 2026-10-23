.class public final Lab6;
.super Llb6;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lab6;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b(Lol2;Lu;)Lql2;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lu;->C()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lq1;->t([B)Lq1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lv1;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lql2;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2}, Lv1;->C(I)Lb0;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v2, v2, Lj1;->a:[B

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {v0, v3}, Lv1;->C(I)Lb0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lj1;->a:[B

    .line 40
    .line 41
    invoke-direct {v1, p0, v2, v0}, Lql2;-><init>(Lol2;[B[B)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_0
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lj1;->a:[B

    .line 50
    .line 51
    new-instance v1, Lql2;

    .line 52
    .line 53
    invoke-direct {v1, p0, v0}, Lql2;-><init>(Lol2;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :catch_0
    new-instance v0, Lql2;

    .line 58
    .line 59
    invoke-virtual {p1}, Lu;->C()[B

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p0, p1}, Lql2;-><init>(Lol2;[B)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method


# virtual methods
.method public final a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;
    .locals 1

    .line 1
    iget p0, p0, Lab6;->a:I

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
    invoke-static {p0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lv1;->C(I)Lb0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Lj1;->a:[B

    .line 24
    .line 25
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 26
    .line 27
    iget-object p1, p1, Lya;->a:Lf1;

    .line 28
    .line 29
    sget-object v0, Lfi8;->l:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lbr6;

    .line 36
    .line 37
    new-instance v0, Ldr6;

    .line 38
    .line 39
    invoke-direct {v0, p1, p0}, Ldr6;-><init>(Lbr6;[B)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_0
    iget-object p0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 44
    .line 45
    iget-object p0, p0, Lya;->a:Lf1;

    .line 46
    .line 47
    sget-object v0, Lfi8;->z:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lol2;

    .line 54
    .line 55
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 56
    .line 57
    invoke-static {p0, p1}, Lab6;->b(Lol2;Lu;)Lql2;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
