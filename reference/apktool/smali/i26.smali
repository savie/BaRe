.class public final Li26;
.super Lqi4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ll39;

.field public final e:Ll39;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li26;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Li26;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Li26;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    const-string p2, "record_type"

    .line 11
    .line 12
    filled-new-array {p2}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p2}, Ll39;->i([Ljava/lang/String;)Ll39;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Li26;->d:Ll39;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    new-array p2, p2, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, [Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Ll39;->i([Ljava/lang/String;)Ll39;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Li26;->e:Ll39;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lbn4;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbn4;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lbn4;-><init>(Lbn4;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v0}, Li26;->f(Lbn4;)I

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0}, Lbn4;->close()V

    .line 14
    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    if-eq v1, v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Li26;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lqi4;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lqi4;->a(Lbn4;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    throw p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {v0}, Lbn4;->close()V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final e(Ldn4;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Li26;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v0, v2, :cond_3

    .line 13
    .line 14
    iget-object v1, p0, Li26;->c:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lqi4;

    .line 21
    .line 22
    invoke-virtual {p1}, Ldn4;->g()Ldn4;

    .line 23
    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string v2, "record_type"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ldn4;->m(Ljava/lang/String;)Ldn4;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Li26;->a:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Ldn4;->z(Ljava/lang/String;)Ldn4;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Ldn4;->r()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/4 v0, 0x3

    .line 48
    const/4 v2, 0x5

    .line 49
    if-eq p0, v2, :cond_2

    .line 50
    .line 51
    if-eq p0, v0, :cond_2

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    if-eq p0, v3, :cond_2

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    if-ne p0, v3, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string p0, "Nesting problem."

    .line 61
    .line 62
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    :goto_0
    iget p0, p1, Ldn4;->f:I

    .line 67
    .line 68
    iget v3, p1, Ldn4;->a:I

    .line 69
    .line 70
    iput v3, p1, Ldn4;->f:I

    .line 71
    .line 72
    invoke-virtual {v1, p1, p2}, Lqi4;->e(Ldn4;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput p0, p1, Ldn4;->f:I

    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    iput-boolean p0, p1, Ldn4;->e:Z

    .line 79
    .line 80
    const/16 p0, 0x7d

    .line 81
    .line 82
    invoke-virtual {p1, v0, v2, p0}, Ldn4;->h(IIC)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v0, "Expected one of "

    .line 91
    .line 92
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " but found "

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    const-string v0, ", a "

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p2, ". Register this subtype."

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0
.end method

.method public final f(Lbn4;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lbn4;->b()V

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p1}, Lbn4;->u()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Li26;->d:Ll39;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lbn4;->b0(Ll39;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lbn4;->g0()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lbn4;->k0()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Li26;->e:Ll39;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lbn4;->c0(Ll39;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    new-instance v0, Llj4;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Expected one of "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Li26;->a:Ljava/util/List;

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lbn4;->S()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, " for key \'record_type\' but found \'"

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, "\'. Register a subtype for this label."

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_2
    new-instance p0, Llj4;

    .line 75
    .line 76
    const-string p1, "Missing label for record_type"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "PolymorphicJsonAdapter(record_type)"

    .line 2
    .line 3
    return-object p0
.end method
