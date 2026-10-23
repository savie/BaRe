.class public final Lun8;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lf1;


# direct methods
.method public constructor <init>(Lf1;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    iput-object p1, p0, Lun8;->d:Lf1;

    .line 8
    .line 9
    invoke-static {p1}, Lll2;->a(Lf1;)Lhl2;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Lhl2;->f()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "SHAKE128"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "SHAKE256"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/16 v1, 0x40

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p1}, Lhl2;->c()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :goto_0
    iput v1, p0, Lun8;->a:I

    .line 44
    .line 45
    const/16 v2, 0x10

    .line 46
    .line 47
    iput v2, p0, Lun8;->b:I

    .line 48
    .line 49
    mul-int/lit8 v3, v1, 0x8

    .line 50
    .line 51
    int-to-double v3, v3

    .line 52
    const/4 v5, 0x0

    .line 53
    move v6, v2

    .line 54
    move v7, v5

    .line 55
    :goto_1
    shr-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    add-int/lit8 v7, v7, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    int-to-double v6, v7

    .line 63
    div-double/2addr v3, v6

    .line 64
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    double-to-int v3, v3

    .line 69
    const/16 v4, 0xf

    .line 70
    .line 71
    mul-int/2addr v4, v3

    .line 72
    move v6, v5

    .line 73
    :goto_2
    shr-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    add-int/lit8 v6, v6, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    :goto_3
    shr-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    div-int/2addr v6, v5

    .line 88
    int-to-double v4, v6

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    double-to-int v2, v4

    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    add-int/2addr v2, v3

    .line 97
    iput v2, p0, Lun8;->c:I

    .line 98
    .line 99
    invoke-interface {p1}, Lhl2;->f()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-eqz p0, :cond_6

    .line 104
    .line 105
    sget-object v3, Ltn8;->b:Ljava/util/Map;

    .line 106
    .line 107
    invoke-static {v1, v2, p0}, Ltn8;->a(IILjava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Ltn8;

    .line 116
    .line 117
    if-eqz p0, :cond_5

    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    const-string p0, "cannot find OID for digest algorithm: "

    .line 121
    .line 122
    invoke-interface {p1}, Lhl2;->f()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1, p0}, Lb6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_6
    sget-object p0, Ltn8;->b:Ljava/util/Map;

    .line 131
    .line 132
    const-string p0, "algorithmName == null"

    .line 133
    .line 134
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_7
    const-string p0, "treeDigest == null"

    .line 139
    .line 140
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0
.end method
