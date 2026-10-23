.class public abstract Ls51;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Ls51;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls51;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Ls51;->b:I

    .line 15
    iput-object p2, p0, Ls51;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ls51;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ls51;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, p0, Ls51;->b:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public b(Lz0;)V
    .locals 5

    .line 1
    iget v0, p0, Ls51;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ls51;->c:Ljava/lang/String;

    .line 4
    .line 5
    instance-of v2, p1, Lr2;

    .line 6
    .line 7
    if-eqz v2, :cond_3

    .line 8
    .line 9
    move-object v2, p1

    .line 10
    check-cast v2, Lr2;

    .line 11
    .line 12
    iget-object v3, v2, Lz0;->a:Lm2;

    .line 13
    .line 14
    iget v3, v3, Lm2;->b:I

    .line 15
    .line 16
    if-ne v3, v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {v2}, Lr2;->d()Lz0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    instance-of v0, p1, Lw1;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    check-cast p1, Lw1;

    .line 27
    .line 28
    invoke-virtual {p1}, Lw1;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lz0;

    .line 43
    .line 44
    instance-of v2, v0, Lr2;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    check-cast v0, Lr2;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ls51;->c(Lr2;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Lfk7;

    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v2, "Expected an ASN.1 TaggedObject as "

    .line 59
    .line 60
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " contents, not: "

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_1
    return-void

    .line 83
    :cond_2
    new-instance p0, Lfk7;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "Expected a "

    .line 88
    .line 89
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, " (SEQUENCE), not: "

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_3
    new-instance p0, Lfk7;

    .line 112
    .line 113
    const-string v2, " (CHOICE ["

    .line 114
    .line 115
    const-string v3, "]) header, not: "

    .line 116
    .line 117
    const-string v4, "Expected to find the "

    .line 118
    .line 119
    invoke-static {v4, v1, v2, v0, v3}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

.method public abstract c(Lr2;)V
.end method

.method public abstract d([BII)V
.end method

.method public abstract e(Ljw0;)V
.end method

.method public f(Ljw0;Lw1;)V
    .locals 3

    .line 1
    new-instance v0, Lr2;

    .line 2
    .line 3
    iget p0, p0, Ls51;->b:I

    .line 4
    .line 5
    sget-object v1, Ln2;->d:Ln2;

    .line 6
    .line 7
    invoke-static {v1, p0}, Lm2;->b(Ln2;I)Lm2;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v1, Ld0;->c:Ld0;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lm2;->a(Ld0;)Lm2;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, p0, p2, v1}, Lr2;-><init>(Lm2;Lz0;Z)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object p2, Lmr5;->a:Lg1;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance p2, Lr2;

    .line 35
    .line 36
    sget-object v0, Ln2;->c:Ln2;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {v0, v1}, Lm2;->b(Ln2;I)Lm2;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v2, Lw1;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lw1;-><init>(Ljava/util/ArrayList;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, v0, v2, v1}, Lr2;-><init>(Lm2;Lz0;Z)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v0, Ln1;

    .line 57
    .line 58
    new-instance v1, Lnh4;

    .line 59
    .line 60
    const/4 v2, 0x5

    .line 61
    invoke-direct {v1, v2}, Lnh4;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1, p0}, Ln1;-><init>(Lnh4;Ljava/io/ByteArrayOutputStream;)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v0, p2}, Ln1;->a(Lz0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    array-length p2, p0

    .line 78
    invoke-virtual {p1, p0, p2}, Low0;->i([BI)Low0;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Ls51;->a:I

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
    iget-object v0, p0, Ls51;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget p0, p0, Ls51;->b:I

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "%s(0x%04x)"

    .line 24
    .line 25
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
