.class public abstract Lv39;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/CharSequence;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lfu;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lv39;->a:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lv39;->d:I

    .line 9
    .line 10
    const p1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lv39;->e:I

    .line 14
    .line 15
    iput-object p2, p0, Lv39;->c:Ljava/lang/CharSequence;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(I)I
.end method

.method public final hasNext()Z
    .locals 8

    .line 1
    iget v0, p0, Lv39;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-eq v0, v2, :cond_a

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    sub-int/2addr v0, v3

    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-eq v0, v4, :cond_8

    .line 13
    .line 14
    iput v2, p0, Lv39;->a:I

    .line 15
    .line 16
    iget v0, p0, Lv39;->d:I

    .line 17
    .line 18
    :cond_0
    :goto_0
    iget v2, p0, Lv39;->d:I

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    const/4 v5, -0x1

    .line 22
    if-eq v2, v5, :cond_7

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lv39;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v6, p0, Lv39;->c:Ljava/lang/CharSequence;

    .line 29
    .line 30
    if-ne v2, v5, :cond_1

    .line 31
    .line 32
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput v5, p0, Lv39;->d:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0, v2}, Lv39;->a(I)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    iput v7, p0, Lv39;->d:I

    .line 44
    .line 45
    :goto_1
    iget v7, p0, Lv39;->d:I

    .line 46
    .line 47
    if-ne v7, v0, :cond_2

    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    iput v7, p0, Lv39;->d:I

    .line 52
    .line 53
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-le v7, v2, :cond_0

    .line 58
    .line 59
    iput v5, p0, Lv39;->d:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    if-ge v0, v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v6, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 65
    .line 66
    .line 67
    :cond_3
    if-le v2, v0, :cond_4

    .line 68
    .line 69
    add-int/lit8 v7, v2, -0x1

    .line 70
    .line 71
    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 72
    .line 73
    .line 74
    :cond_4
    iget v7, p0, Lv39;->e:I

    .line 75
    .line 76
    if-ne v7, v3, :cond_5

    .line 77
    .line 78
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iput v5, p0, Lv39;->d:I

    .line 83
    .line 84
    if-le v2, v0, :cond_6

    .line 85
    .line 86
    add-int/lit8 v5, v2, -0x1

    .line 87
    .line 88
    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    sub-int/2addr v7, v3

    .line 93
    iput v7, p0, Lv39;->e:I

    .line 94
    .line 95
    :cond_6
    :goto_2
    invoke-interface {v6, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_3

    .line 104
    :cond_7
    iput v4, p0, Lv39;->a:I

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    :goto_3
    iput-object v0, p0, Lv39;->b:Ljava/lang/String;

    .line 108
    .line 109
    iget v0, p0, Lv39;->a:I

    .line 110
    .line 111
    if-eq v0, v4, :cond_8

    .line 112
    .line 113
    iput v3, p0, Lv39;->a:I

    .line 114
    .line 115
    return v3

    .line 116
    :cond_8
    return v1

    .line 117
    :cond_9
    return v3

    .line 118
    :cond_a
    invoke-static {}, Lg84;->c()V

    .line 119
    .line 120
    .line 121
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv39;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lv39;->a:I

    .line 9
    .line 10
    iget-object v0, p0, Lv39;->b:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lv39;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
