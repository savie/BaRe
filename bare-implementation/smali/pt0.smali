.class public final Lpt0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldo4;


# static fields
.field public static final a:Lpt0;

.field public static final b:La66;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lpt0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lpt0;->a:Lpt0;

    .line 7
    .line 8
    new-instance v0, La66;

    .line 9
    .line 10
    const-string v1, "kotlin.Boolean"

    .line 11
    .line 12
    sget-object v2, Lt56;->g:Lt56;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, La66;-><init>(Ljava/lang/String;Ly56;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lpt0;->b:La66;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lnp7;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Lnp7;->c:Lvr1;

    .line 5
    .line 6
    invoke-virtual {p0}, Lvr1;->u()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lvr1;->f:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v2, "EOF"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x6

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eq p1, v1, :cond_7

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v6, 0x22

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    if-ne v1, v6, :cond_0

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    move v1, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v5

    .line 39
    :goto_0
    invoke-virtual {p0, p1}, Lvr1;->t(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-ge p1, v8, :cond_6

    .line 48
    .line 49
    const/4 v8, -0x1

    .line 50
    if-eq p1, v8, :cond_6

    .line 51
    .line 52
    add-int/lit8 v8, p1, 0x1

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    or-int/lit8 p1, p1, 0x20

    .line 59
    .line 60
    const/16 v9, 0x66

    .line 61
    .line 62
    if-eq p1, v9, :cond_2

    .line 63
    .line 64
    const/16 v9, 0x74

    .line 65
    .line 66
    if-ne p1, v9, :cond_1

    .line 67
    .line 68
    const-string p1, "rue"

    .line 69
    .line 70
    invoke-virtual {p0, v8, p1}, Lvr1;->d(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move p1, v7

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "Expected valid boolean literal prefix, but had \'"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lvr1;->i()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/16 v0, 0x27

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p0, p1, v5, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    throw v3

    .line 102
    :cond_2
    const-string p1, "alse"

    .line 103
    .line 104
    invoke-virtual {p0, v8, p1}, Lvr1;->d(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move p1, v5

    .line 108
    :goto_1
    if-eqz v1, :cond_5

    .line 109
    .line 110
    iget v1, p0, Lvr1;->b:I

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eq v1, v8, :cond_4

    .line 117
    .line 118
    iget v1, p0, Lvr1;->b:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-ne v0, v6, :cond_3

    .line 125
    .line 126
    iget v0, p0, Lvr1;->b:I

    .line 127
    .line 128
    add-int/2addr v0, v7

    .line 129
    iput v0, p0, Lvr1;->b:I

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    const-string p1, "Expected closing quotation mark"

    .line 133
    .line 134
    invoke-static {p0, p1, v5, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 135
    .line 136
    .line 137
    throw v3

    .line 138
    :cond_4
    invoke-static {p0, v2, v5, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    throw v3

    .line 142
    :cond_5
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :cond_6
    invoke-static {p0, v2, v5, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 148
    .line 149
    .line 150
    throw v3

    .line 151
    :cond_7
    invoke-static {p0, v2, v5, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 152
    .line 153
    .line 154
    throw v3
.end method

.method public final b(Lop7;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    iget-boolean p2, p1, Lop7;->f:Z

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Lop7;->j(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p1, Lop7;->a:Lwo1;

    .line 20
    .line 21
    iget-object p1, p1, Lwo1;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Llm4;

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Llm4;->c(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final d()Lp77;
    .locals 0

    .line 1
    sget-object p0, Lpt0;->b:La66;

    .line 2
    .line 3
    return-object p0
.end method
