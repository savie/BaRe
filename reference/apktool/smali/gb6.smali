.class public final Lgb6;
.super Llb6;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgb6;->a:I

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
    .locals 3

    .line 1
    iget p0, p0, Lgb6;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 7
    .line 8
    iget-object p0, p0, Lya;->b:Lb0;

    .line 9
    .line 10
    invoke-static {p0}, Lhx8;->k(Ljava/lang/Object;)Lhx8;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lhx8;->c:Lya;

    .line 17
    .line 18
    iget-object v0, v0, Lya;->a:Lf1;

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->l()Lq1;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lux8;

    .line 27
    .line 28
    invoke-static {p1}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v1, p1}, Lux8;-><init>(Lv1;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    new-instance p1, Lxt1;

    .line 38
    .line 39
    new-instance v2, Lrx8;

    .line 40
    .line 41
    iget p0, p0, Lhx8;->b:I

    .line 42
    .line 43
    invoke-static {v0}, Lfi8;->a(Lf1;)Lhl2;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v2, p0, v0}, Lrx8;-><init>(ILhl2;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v2}, Lxt1;-><init>(Lrx8;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, v1, Lux8;->a:[B

    .line 54
    .line 55
    invoke-static {p0}, Lms8;->k([B)[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Ljd4;->g([B)[B

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iput-object p0, p1, Lxt1;->c:Ljava/lang/Object;

    .line 64
    .line 65
    iget-object p0, v1, Lux8;->b:[B

    .line 66
    .line 67
    invoke-static {p0}, Lms8;->k([B)[B

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Ljd4;->g([B)[B

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iput-object p0, p1, Lxt1;->b:Ljava/lang/Object;

    .line 76
    .line 77
    new-instance p0, Lvx8;

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lvx8;-><init>(Lxt1;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->l()Lq1;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    iget-object p0, p0, Lj1;->a:[B

    .line 92
    .line 93
    new-instance p1, Lxt1;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-static {p0, v0}, Lxx3;->a([BI)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    sget-object v1, Lrx8;->h:Ljava/util/Map;

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lrx8;

    .line 111
    .line 112
    invoke-direct {p1, v0}, Lxt1;-><init>(Lrx8;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, Ljd4;->g([B)[B

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    iput-object p0, p1, Lxt1;->d:Ljava/lang/Object;

    .line 120
    .line 121
    new-instance p0, Lvx8;

    .line 122
    .line 123
    invoke-direct {p0, p1}, Lvx8;-><init>(Lxt1;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    return-object p0

    .line 127
    :pswitch_0
    iget-object p0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 128
    .line 129
    iget-object p0, p0, Lya;->a:Lf1;

    .line 130
    .line 131
    sget-object v0, Lfi8;->H:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lo45;

    .line 138
    .line 139
    new-instance v0, Lr45;

    .line 140
    .line 141
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 142
    .line 143
    invoke-virtual {p1}, Lu;->C()[B

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {v0, p0, p1}, Lr45;-><init>(Lo45;[B)V

    .line 148
    .line 149
    .line 150
    return-object v0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
