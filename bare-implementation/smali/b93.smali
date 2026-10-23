.class public final Lb93;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Ll15;


# instance fields
.field public a:Lsu6;

.field public b:Z

.field public c:La93;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lb93;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lb93;->d:Ll15;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lb93;->a:Lsu6;

    .line 2
    .line 3
    iget-object v8, p0, Lb93;->c:La93;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :goto_0
    iget-object p0, v8, La93;->b:Lwn6;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget p0, p0, Lwn6;->d:I

    .line 13
    .line 14
    if-gtz p0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object p0, Lsu6;->d:Ll15;

    .line 18
    .line 19
    iget-object v1, v0, Lsu6;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-wide v2, v8, La93;->a:J

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "Writing to {} from offset {}"

    .line 28
    .line 29
    invoke-interface {p0, v1, v2, v3}, Ll15;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, v0, Lsu6;->a:Lwm2;

    .line 33
    .line 34
    iget-object v3, v0, Lsu6;->b:Lnr6;

    .line 35
    .line 36
    iget v9, p0, Lvc7;->n:I

    .line 37
    .line 38
    new-instance v1, Lqu6;

    .line 39
    .line 40
    iget-object v2, p0, Lvc7;->e:Lus6;

    .line 41
    .line 42
    iget-wide v4, p0, Lvc7;->t:J

    .line 43
    .line 44
    iget-wide v6, p0, Lvc7;->c:J

    .line 45
    .line 46
    invoke-direct/range {v1 .. v9}, Lqu6;-><init>(Lus6;Lnr6;JJLa93;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lvc7;->b(Lrt6;)Lp21;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v4, Lzm7;->w:Lq34;

    .line 54
    .line 55
    iget-wide v5, p0, Lvc7;->p:J

    .line 56
    .line 57
    const-string v2, "Write"

    .line 58
    .line 59
    invoke-static/range {v1 .. v6}, Lvc7;->a(Lp21;Ljava/lang/String;Ljava/lang/Object;Lzm7;J)Lrt6;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Lru6;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    :goto_1
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb93;->c:La93;

    .line 2
    .line 3
    :goto_0
    iget-object v1, v0, La93;->b:Lwn6;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget v1, v1, Lwn6;->d:I

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lb93;->a()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, La93;->b:Lwn6;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lb93;->b:Z

    .line 21
    .line 22
    iput-object v1, p0, Lb93;->a:Lsu6;

    .line 23
    .line 24
    iget-wide v0, v0, La93;->a:J

    .line 25
    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v0, Lb93;->d:Ll15;

    .line 31
    .line 32
    const-string v1, "EOF, {} bytes written"

    .line 33
    .line 34
    invoke-interface {v0, p0, v1}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb93;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lb93;->c:La93;

    .line 6
    .line 7
    iget-object v0, v0, La93;->b:Lwn6;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v0, v0, Lwn6;->d:I

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lb93;->a()V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void

    .line 20
    :cond_2
    const-string p0, "Stream is closed"

    .line 21
    .line 22
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final write(I)V
    .locals 3

    .line 87
    iget-boolean v0, p0, Lb93;->b:Z

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lb93;->c:La93;

    .line 89
    iget-object v1, v0, La93;->b:Lwn6;

    .line 90
    iget v2, v1, Lwn6;->d:I

    .line 91
    iget-object v1, v1, Lwn6;->a:[B

    array-length v1, v1

    if-ne v2, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lb93;->flush()V

    .line 93
    :cond_0
    iget-object p0, v0, La93;->b:Lwn6;

    .line 94
    iget v0, p0, Lwn6;->d:I

    .line 95
    iget-object v1, p0, Lwn6;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 96
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 97
    invoke-virtual {p0, v1, v2, v0}, Lwn6;->a([BII)V

    return-void

    .line 98
    :cond_2
    const-string p0, "Stream is closed"

    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 86
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lb93;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb93;->c:La93;

    .line 2
    .line 3
    iget-boolean v1, p0, Lb93;->b:Z

    .line 4
    .line 5
    if-nez v1, :cond_4

    .line 6
    .line 7
    :cond_0
    iget-object v1, v0, La93;->b:Lwn6;

    .line 8
    .line 9
    iget-object v1, v1, Lwn6;->a:[B

    .line 10
    .line 11
    array-length v1, v1

    .line 12
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    iget-object v2, v0, La93;->b:Lwn6;

    .line 17
    .line 18
    iget-object v3, v2, Lwn6;->a:[B

    .line 19
    .line 20
    array-length v4, v3

    .line 21
    if-gt v1, v4, :cond_3

    .line 22
    .line 23
    iget v4, v2, Lwn6;->d:I

    .line 24
    .line 25
    add-int v5, v4, v1

    .line 26
    .line 27
    array-length v6, v3

    .line 28
    if-le v5, v6, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lb93;->flush()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    array-length v3, v3

    .line 35
    if-ne v4, v3, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v2, p1, p2, v1}, Lwn6;->a([BII)V

    .line 39
    .line 40
    .line 41
    :goto_1
    add-int/2addr p2, v1

    .line 42
    sub-int/2addr p3, v1

    .line 43
    if-gtz p3, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    array-length p1, v3

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p3, "RingBuffer of length "

    .line 52
    .line 53
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, " cannot accomodate "

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " bytes."

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_4
    const-string p0, "Stream is closed"

    .line 81
    .line 82
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
