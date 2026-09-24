.class public final enum Lz58;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "Data"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Lo58;Le51;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Le51;->i()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    const/16 p0, 0x26

    .line 8
    .line 9
    if-eq v0, p0, :cond_5

    .line 10
    .line 11
    const/16 v1, 0x3c

    .line 12
    .line 13
    if-eq v0, v1, :cond_4

    .line 14
    .line 15
    const v2, 0xffff

    .line 16
    .line 17
    .line 18
    if-eq v0, v2, :cond_3

    .line 19
    .line 20
    invoke-virtual {p2}, Le51;->b()V

    .line 21
    .line 22
    .line 23
    iget v0, p2, Le51;->e:I

    .line 24
    .line 25
    iget v2, p2, Le51;->c:I

    .line 26
    .line 27
    iget-object v3, p2, Le51;->a:[C

    .line 28
    .line 29
    :goto_0
    iget v4, p2, Le51;->e:I

    .line 30
    .line 31
    if-ge v4, v2, :cond_1

    .line 32
    .line 33
    aget-char v5, v3, v4

    .line 34
    .line 35
    if-eq v5, p0, :cond_1

    .line 36
    .line 37
    if-eq v5, v1, :cond_1

    .line 38
    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    iput v4, p2, Le51;->e:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    if-le v4, v0, :cond_2

    .line 48
    .line 49
    iget-object p0, p2, Le51;->h:[Ljava/lang/String;

    .line 50
    .line 51
    sub-int/2addr v4, v0

    .line 52
    invoke-static {v3, p0, v0, v4}, Le51;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const-string p0, ""

    .line 58
    .line 59
    :goto_2
    invoke-virtual {p1, p0}, Lo58;->h(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    new-instance p0, Lz48;

    .line 64
    .line 65
    invoke-direct {p0}, Lz48;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Lo58;->g(Lqb6;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    sget-object p0, Le88;->k:Lc88;

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    sget-object p0, Le88;->b:Lk68;

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_6
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Le51;->d()C

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-virtual {p1, p0}, Lo58;->f(C)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
