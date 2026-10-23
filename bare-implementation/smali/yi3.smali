.class public final Lyi3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lli3;


# instance fields
.field public final synthetic a:Lwm;

.field public final synthetic b:Lli3;


# direct methods
.method public constructor <init>(Lwm;Lli3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyi3;->a:Lwm;

    .line 5
    .line 6
    iput-object p2, p0, Lyi3;->b:Lli3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lxi3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lxi3;

    .line 7
    .line 8
    iget v1, v0, Lxi3;->b:I

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
    iput v1, v0, Lxi3;->b:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lxi3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lxi3;-><init>(Lyi3;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lxi3;->a:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lxi3;->b:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    sget-object v5, Lyx1;->a:Lyx1;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :cond_2
    iget p1, v0, Lxi3;->e:I

    .line 51
    .line 52
    iget-object v1, v0, Lxi3;->d:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v6, p2

    .line 58
    move p2, p1

    .line 59
    move-object p1, v1

    .line 60
    move-object v1, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, v0, Lxi3;->d:Ljava/lang/Object;

    .line 66
    .line 67
    const/4 p2, 0x0

    .line 68
    iput p2, v0, Lxi3;->e:I

    .line 69
    .line 70
    iput v3, v0, Lxi3;->b:I

    .line 71
    .line 72
    iget-object v1, p0, Lyi3;->a:Lwm;

    .line 73
    .line 74
    invoke-virtual {v1, p1, v0}, Lwm;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-ne v1, v5, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_6

    .line 88
    .line 89
    iput-object v4, v0, Lxi3;->d:Ljava/lang/Object;

    .line 90
    .line 91
    iput p2, v0, Lxi3;->e:I

    .line 92
    .line 93
    iput v2, v0, Lxi3;->b:I

    .line 94
    .line 95
    iget-object p0, p0, Lyi3;->b:Lli3;

    .line 96
    .line 97
    invoke-interface {p0, p1, v0}, Lli3;->c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-ne p0, v5, :cond_5

    .line 102
    .line 103
    :goto_2
    return-object v5

    .line 104
    :cond_5
    :goto_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_6
    new-instance p1, Lu2;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Lu2;-><init>(Lli3;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method
