.class public final Lru3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lru3;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lbw4;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lbw4;->c:Lbw4;

    .line 3
    .line 4
    iput-object v0, p1, Lbw4;->a:Lbw4;

    .line 5
    .line 6
    iput-object v0, p1, Lbw4;->b:Lbw4;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p1, Lbw4;->p:I

    .line 10
    .line 11
    iget v1, p0, Lru3;->b:I

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    iget v2, p0, Lru3;->d:I

    .line 16
    .line 17
    and-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    add-int/2addr v2, v0

    .line 22
    iput v2, p0, Lru3;->d:I

    .line 23
    .line 24
    sub-int/2addr v1, v0

    .line 25
    iput v1, p0, Lru3;->b:I

    .line 26
    .line 27
    iget v1, p0, Lru3;->c:I

    .line 28
    .line 29
    add-int/2addr v1, v0

    .line 30
    iput v1, p0, Lru3;->c:I

    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Lru3;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lbw4;

    .line 35
    .line 36
    iput-object v1, p1, Lbw4;->a:Lbw4;

    .line 37
    .line 38
    iput-object p1, p0, Lru3;->e:Ljava/lang/Object;

    .line 39
    .line 40
    iget p1, p0, Lru3;->d:I

    .line 41
    .line 42
    add-int/lit8 v1, p1, 0x1

    .line 43
    .line 44
    iput v1, p0, Lru3;->d:I

    .line 45
    .line 46
    iget v2, p0, Lru3;->b:I

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    if-lez v2, :cond_1

    .line 50
    .line 51
    and-int/2addr v1, v0

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    add-int/2addr p1, v3

    .line 55
    iput p1, p0, Lru3;->d:I

    .line 56
    .line 57
    sub-int/2addr v2, v0

    .line 58
    iput v2, p0, Lru3;->b:I

    .line 59
    .line 60
    iget p1, p0, Lru3;->c:I

    .line 61
    .line 62
    add-int/2addr p1, v0

    .line 63
    iput p1, p0, Lru3;->c:I

    .line 64
    .line 65
    :cond_1
    const/4 p1, 0x4

    .line 66
    :goto_0
    iget v1, p0, Lru3;->d:I

    .line 67
    .line 68
    add-int/lit8 v2, p1, -0x1

    .line 69
    .line 70
    and-int/2addr v1, v2

    .line 71
    if-ne v1, v2, :cond_5

    .line 72
    .line 73
    iget v1, p0, Lru3;->c:I

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Lru3;->e:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, Lbw4;

    .line 80
    .line 81
    iget-object v2, v1, Lbw4;->a:Lbw4;

    .line 82
    .line 83
    iget-object v4, v2, Lbw4;->a:Lbw4;

    .line 84
    .line 85
    iget-object v5, v4, Lbw4;->a:Lbw4;

    .line 86
    .line 87
    iput-object v5, v2, Lbw4;->a:Lbw4;

    .line 88
    .line 89
    iput-object v2, p0, Lru3;->e:Ljava/lang/Object;

    .line 90
    .line 91
    iput-object v4, v2, Lbw4;->b:Lbw4;

    .line 92
    .line 93
    iput-object v1, v2, Lbw4;->c:Lbw4;

    .line 94
    .line 95
    iget v5, v1, Lbw4;->p:I

    .line 96
    .line 97
    add-int/2addr v5, v0

    .line 98
    iput v5, v2, Lbw4;->p:I

    .line 99
    .line 100
    iput-object v2, v4, Lbw4;->a:Lbw4;

    .line 101
    .line 102
    iput-object v2, v1, Lbw4;->a:Lbw4;

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const/4 v2, 0x0

    .line 106
    if-ne v1, v0, :cond_3

    .line 107
    .line 108
    iget-object v1, p0, Lru3;->e:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Lbw4;

    .line 111
    .line 112
    iget-object v4, v1, Lbw4;->a:Lbw4;

    .line 113
    .line 114
    iput-object v4, p0, Lru3;->e:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v1, v4, Lbw4;->c:Lbw4;

    .line 117
    .line 118
    iget v5, v1, Lbw4;->p:I

    .line 119
    .line 120
    add-int/2addr v5, v0

    .line 121
    iput v5, v4, Lbw4;->p:I

    .line 122
    .line 123
    iput-object v4, v1, Lbw4;->a:Lbw4;

    .line 124
    .line 125
    iput v2, p0, Lru3;->c:I

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    if-ne v1, v3, :cond_4

    .line 129
    .line 130
    iput v2, p0, Lru3;->c:I

    .line 131
    .line 132
    :cond_4
    :goto_1
    mul-int/lit8 p1, p1, 0x2

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    return-void
.end method

.method public b(II)V
    .locals 5

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    if-ltz p2, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lru3;->d:I

    .line 6
    .line 7
    mul-int/lit8 v1, v0, 0x2

    .line 8
    .line 9
    iget-object v2, p0, Lru3;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, [I

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-array v0, v3, [I

    .line 17
    .line 18
    iput-object v0, p0, Lru3;->e:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length v4, v2

    .line 26
    if-lt v1, v4, :cond_1

    .line 27
    .line 28
    mul-int/2addr v0, v3

    .line 29
    new-array v0, v0, [I

    .line 30
    .line 31
    iput-object v0, p0, Lru3;->e:Ljava/lang/Object;

    .line 32
    .line 33
    array-length v3, v2

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lru3;->e:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, [I

    .line 41
    .line 42
    aput p1, v0, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    aput p2, v0, v1

    .line 47
    .line 48
    iget p1, p0, Lru3;->d:I

    .line 49
    .line 50
    add-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    iput p1, p0, Lru3;->d:I

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string p0, "Pixel distance must be non-negative"

    .line 56
    .line 57
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    const-string p0, "Layout positions must be non-negative"

    .line 62
    .line 63
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lru3;->d:I

    .line 3
    .line 4
    iget-object v0, p0, Lru3;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, [I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 15
    .line 16
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-boolean v1, v0, Landroidx/recyclerview/widget/a;->p:Z

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Lx9;

    .line 29
    .line 30
    invoke-virtual {v1}, Lx9;->g()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 37
    .line 38
    invoke-virtual {v1}, Lhg6;->b()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/a;->t(ILru3;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->N()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    iget v1, p0, Lru3;->b:I

    .line 53
    .line 54
    iget v2, p0, Lru3;->c:I

    .line 55
    .line 56
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/a;->s(IILbh6;Lru3;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    iget p0, p0, Lru3;->d:I

    .line 62
    .line 63
    iget v1, v0, Landroidx/recyclerview/widget/a;->q:I

    .line 64
    .line 65
    if-le p0, v1, :cond_3

    .line 66
    .line 67
    iput p0, v0, Landroidx/recyclerview/widget/a;->q:I

    .line 68
    .line 69
    iput-boolean p2, v0, Landroidx/recyclerview/widget/a;->r:Z

    .line 70
    .line 71
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->c:Lvg6;

    .line 72
    .line 73
    invoke-virtual {p0}, Lvg6;->n()V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lru3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "NegotiatedProtocol{dialect="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lru3;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lus6;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", maxTransactSize="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lru3;->b:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", maxReadSize="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lru3;->c:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", maxWriteSize="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget p0, p0, Lru3;->d:I

    .line 51
    .line 52
    const/16 v1, 0x7d

    .line 53
    .line 54
    invoke-static {v0, p0, v1}, Leq3;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
