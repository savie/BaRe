.class public final Lj92;
.super Lci0;


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(IIZLz1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lci0;-><init>(IILz1;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lj92;->d:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g()Lq1;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lj92;->d:Z

    .line 2
    .line 3
    const/4 v2, 0x4

    .line 4
    iget-object v1, p0, Lci0;->c:Lz1;

    .line 5
    .line 6
    iget v3, p0, Lci0;->a:I

    .line 7
    .line 8
    iget v4, p0, Lci0;->b:I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object p0, v1, Lz1;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lou4;

    .line 15
    .line 16
    check-cast p0, Lmg2;

    .line 17
    .line 18
    invoke-virtual {p0}, Lmg2;->b()[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v1, Lbi0;

    .line 23
    .line 24
    new-instance v5, Lp82;

    .line 25
    .line 26
    invoke-direct {v5, p0}, Lj1;-><init>([B)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    invoke-direct/range {v1 .. v6}, Lbi0;-><init>(IIILb0;I)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    invoke-virtual {v1}, Lz1;->c()Lc0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget v0, p0, Lc0;->b:I

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    move v5, v3

    .line 44
    new-instance v3, Lbi0;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lc0;->b(I)Lb0;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/4 v8, 0x1

    .line 52
    move v6, v4

    .line 53
    const/4 v4, 0x3

    .line 54
    invoke-direct/range {v3 .. v8}, Lbi0;-><init>(IIILb0;I)V

    .line 55
    .line 56
    .line 57
    return-object v3

    .line 58
    :cond_1
    new-instance v1, Lbi0;

    .line 59
    .line 60
    invoke-static {p0}, Lf92;->a(Lc0;)Lh92;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/4 v6, 0x1

    .line 65
    invoke-direct/range {v1 .. v6}, Lbi0;-><init>(IIILb0;I)V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method
