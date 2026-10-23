.class public final Lhb6;
.super Llb6;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhb6;->a:I

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
    iget p0, p0, Lhb6;->a:I

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
    invoke-static {p0}, Ljx8;->k(Ljava/lang/Object;)Ljx8;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Ljx8;->d:Lya;

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
    new-instance p1, Le38;

    .line 38
    .line 39
    new-instance v2, Lkx8;

    .line 40
    .line 41
    iget v3, p0, Ljx8;->b:I

    .line 42
    .line 43
    iget p0, p0, Ljx8;->c:I

    .line 44
    .line 45
    invoke-static {v0}, Lfi8;->a(Lf1;)Lhl2;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {v2, v3, p0, v0}, Lkx8;-><init>(IILhl2;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v2}, Le38;-><init>(Lkx8;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, v1, Lux8;->a:[B

    .line 56
    .line 57
    invoke-static {p0}, Lms8;->k([B)[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Ljd4;->g([B)[B

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iput-object p0, p1, Le38;->d:Ljava/lang/Object;

    .line 66
    .line 67
    iget-object p0, v1, Lux8;->b:[B

    .line 68
    .line 69
    invoke-static {p0}, Lms8;->k([B)[B

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Ljd4;->g([B)[B

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iput-object p0, p1, Le38;->c:Ljava/lang/Object;

    .line 78
    .line 79
    new-instance p0, Lpx8;

    .line 80
    .line 81
    invoke-direct {p0, p1}, Lpx8;-><init>(Le38;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->l()Lq1;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    iget-object p0, p0, Lj1;->a:[B

    .line 94
    .line 95
    new-instance p1, Le38;

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-static {p0, v0}, Lxx3;->a([BI)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    sget-object v1, Lkx8;->e:Ljava/util/Map;

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lkx8;

    .line 113
    .line 114
    invoke-direct {p1, v0}, Le38;-><init>(Lkx8;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Ljd4;->g([B)[B

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    iput-object p0, p1, Le38;->e:Ljava/lang/Object;

    .line 122
    .line 123
    new-instance p0, Lpx8;

    .line 124
    .line 125
    invoke-direct {p0, p1}, Lpx8;-><init>(Le38;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-object p0

    .line 129
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->l()Lq1;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    iget-object p0, p0, Lj1;->a:[B

    .line 138
    .line 139
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 140
    .line 141
    iget-object p1, p1, Lya;->a:Lf1;

    .line 142
    .line 143
    sget-object v0, Lfi8;->N:Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lm95;

    .line 150
    .line 151
    new-instance v0, Lo95;

    .line 152
    .line 153
    invoke-direct {v0, p1, p0}, Lo95;-><init>(Lm95;[B)V

    .line 154
    .line 155
    .line 156
    return-object v0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
