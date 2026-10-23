.class public final Lf14;
.super Lxo4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Le14;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lyl0;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lwo4;

    .line 10
    .line 11
    iget-object p1, p1, Lwo4;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Le14;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p1, Le14;->b:[I

    .line 19
    .line 20
    array-length v0, p1

    .line 21
    :goto_0
    new-instance p1, Le14;

    .line 22
    .line 23
    new-array v1, v0, [F

    .line 24
    .line 25
    new-array v0, v0, [I

    .line 26
    .line 27
    invoke-direct {p1, v1, v0}, Le14;-><init>([F[I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lf14;->i:Le14;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final g(Lwo4;F)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p1, Lwo4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le14;

    .line 4
    .line 5
    iget-object p1, p1, Lwo4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Le14;

    .line 8
    .line 9
    iget-object p0, p0, Lf14;->i:Le14;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Le14;->b:[I

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    iget-object v3, p1, Le14;->b:[I

    .line 18
    .line 19
    array-length v4, v3

    .line 20
    if-ne v2, v4, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    array-length v4, v1

    .line 24
    if-ge v2, v4, :cond_0

    .line 25
    .line 26
    iget-object v4, p0, Le14;->a:[F

    .line 27
    .line 28
    iget-object v5, v0, Le14;->a:[F

    .line 29
    .line 30
    aget v5, v5, v2

    .line 31
    .line 32
    iget-object v6, p1, Le14;->a:[F

    .line 33
    .line 34
    aget v6, v6, v2

    .line 35
    .line 36
    invoke-static {v5, v6, p2}, Lsg5;->d(FFF)F

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    aput v5, v4, v2

    .line 41
    .line 42
    iget-object v4, p0, Le14;->b:[I

    .line 43
    .line 44
    aget v5, v1, v2

    .line 45
    .line 46
    aget v6, v3, v2

    .line 47
    .line 48
    invoke-static {p2, v5, v6}, Lbb9;->t(FII)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    aput v5, v4, v2

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-object p0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p1, "Cannot interpolate between gradients. Lengths vary ("

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    array-length p1, v1

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, " vs "

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    array-length p1, v3

    .line 75
    const-string p2, ")"

    .line 76
    .line 77
    invoke-static {p0, p1, p2}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method
