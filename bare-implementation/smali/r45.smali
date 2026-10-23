.class public final Lr45;
.super Lei0;


# instance fields
.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>(Lo45;[B)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 60
    new-instance v1, Lk45;

    .line 61
    iget p1, p1, Lo45;->b:I

    .line 62
    invoke-direct {v1, p1}, Lk45;-><init>(I)V

    .line 63
    array-length p1, p2

    .line 64
    iget v2, v1, Lk45;->e:I

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    .line 65
    array-length p1, p2

    add-int/lit8 p1, p1, -0x20

    invoke-static {p2, v0, p1}, Lms8;->t([BII)[B

    move-result-object p1

    iput-object p1, p0, Lr45;->c:[B

    array-length v0, p2

    add-int/lit8 v0, v0, -0x20

    array-length v2, p2

    invoke-static {p2, v0, v2}, Lms8;->t([BII)[B

    move-result-object p2

    iput-object p2, p0, Lr45;->d:[B

    invoke-virtual {v1, p1}, Lk45;->a([B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Modulus check failed for ML-KEM public key"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p0, "\'encoding\' has invalid length"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lo45;[B[B)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lk45;

    .line 6
    .line 7
    iget p1, p1, Lo45;->b:I

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lk45;-><init>(I)V

    .line 10
    .line 11
    .line 12
    array-length p1, p2

    .line 13
    iget v1, v0, Lk45;->c:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne p1, v1, :cond_2

    .line 17
    .line 18
    array-length p1, p3

    .line 19
    const/16 v1, 0x20

    .line 20
    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    invoke-static {p2}, Lms8;->k([B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lr45;->c:[B

    .line 28
    .line 29
    invoke-static {p3}, Lms8;->k([B)[B

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iput-object p2, p0, Lr45;->d:[B

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lk45;->a([B)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    const-string p0, "Modulus check failed for ML-KEM public key"

    .line 43
    .line 44
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v2

    .line 48
    :cond_1
    const-string p0, "\'rho\' has invalid length"

    .line 49
    .line 50
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v2

    .line 54
    :cond_2
    const-string p0, "\'t\' has invalid length"

    .line 55
    .line 56
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v2
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lr45;->c:[B

    .line 2
    .line 3
    iget-object p0, p0, Lr45;->d:[B

    .line 4
    .line 5
    invoke-static {v0, p0}, Lms8;->p([B[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
