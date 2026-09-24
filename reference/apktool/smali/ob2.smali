.class public final Lob2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lli3;


# instance fields
.field public final synthetic a:Lli3;


# direct methods
.method public constructor <init>(Lli3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lob2;->a:Lli3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lnb2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnb2;

    .line 7
    .line 8
    iget v1, v0, Lnb2;->b:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnb2;->b:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnb2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnb2;-><init>(Lob2;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnb2;->a:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnb2;->b:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    check-cast p1, Lem7;

    .line 49
    .line 50
    instance-of p2, p1, Ljf6;

    .line 51
    .line 52
    if-nez p2, :cond_7

    .line 53
    .line 54
    instance-of p2, p1, Lga2;

    .line 55
    .line 56
    if-eqz p2, :cond_4

    .line 57
    .line 58
    check-cast p1, Lga2;

    .line 59
    .line 60
    iget-object p1, p1, Lga2;->b:Ljava/lang/Object;

    .line 61
    .line 62
    iput v3, v0, Lnb2;->b:I

    .line 63
    .line 64
    iget-object p0, p0, Lob2;->a:Lli3;

    .line 65
    .line 66
    invoke-interface {p0, p1, v0}, Lli3;->c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    sget-object p1, Lyx1;->a:Lyx1;

    .line 71
    .line 72
    if-ne p0, p1, :cond_3

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_4
    instance-of p0, p1, Lne3;

    .line 79
    .line 80
    if-eqz p0, :cond_5

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    instance-of v3, p1, Lod8;

    .line 84
    .line 85
    :goto_2
    if-eqz v3, :cond_6

    .line 86
    .line 87
    const-string p0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 88
    .line 89
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v2

    .line 93
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 94
    .line 95
    .line 96
    return-object v2

    .line 97
    :cond_7
    check-cast p1, Ljf6;

    .line 98
    .line 99
    iget-object p0, p1, Ljf6;->b:Ljava/lang/Throwable;

    .line 100
    .line 101
    throw p0
.end method
