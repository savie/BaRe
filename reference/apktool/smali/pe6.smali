.class public final Lpe6;
.super Ly0;


# instance fields
.field public a:Ljava/math/BigInteger;

.field public b:Ljava/math/BigInteger;


# direct methods
.method public static k(Ljava/lang/Object;)Lpe6;
    .locals 4

    .line 1
    instance-of v0, p0, Lpe6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lpe6;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    new-instance v1, Lpe6;

    .line 12
    .line 13
    invoke-static {p0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lv1;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lv1;->E()Ljava/util/Enumeration;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v2, Ljava/math/BigInteger;

    .line 43
    .line 44
    iget-object v0, v0, Lt0;->a:[B

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 48
    .line 49
    .line 50
    iput-object v2, v1, Lpe6;->a:Ljava/math/BigInteger;

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v0, Ljava/math/BigInteger;

    .line 64
    .line 65
    iget-object p0, p0, Lt0;->a:[B

    .line 66
    .line 67
    invoke-direct {v0, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 68
    .line 69
    .line 70
    iput-object v0, v1, Lpe6;->b:Ljava/math/BigInteger;

    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_1
    const-string v1, "Bad sequence size: "

    .line 74
    .line 75
    invoke-virtual {p0}, Lv1;->size()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-static {p0, v1}, Lz5;->c(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final d()Lq1;
    .locals 3

    .line 1
    new-instance v0, Lt82;

    .line 2
    .line 3
    new-instance v1, Lt0;

    .line 4
    .line 5
    iget-object v2, p0, Lpe6;->a:Ljava/math/BigInteger;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lt0;-><init>(Ljava/math/BigInteger;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lt0;

    .line 11
    .line 12
    iget-object p0, p0, Lpe6;->b:Ljava/math/BigInteger;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lt0;-><init>(Ljava/math/BigInteger;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lt82;-><init>(Lb0;Lb0;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
