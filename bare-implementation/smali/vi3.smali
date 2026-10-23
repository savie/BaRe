.class public final Lvi3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lli3;


# instance fields
.field public final synthetic a:Lih6;

.field public final synthetic b:Lli3;

.field public final synthetic c:Lt72;


# direct methods
.method public constructor <init>(Lih6;Lli3;Lt72;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvi3;->a:Lih6;

    .line 5
    .line 6
    iput-object p2, p0, Lvi3;->b:Lli3;

    .line 7
    .line 8
    iput-object p3, p0, Lvi3;->c:Lt72;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Lui3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lui3;

    .line 7
    .line 8
    iget v1, v0, Lui3;->d:I

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
    iput v1, v0, Lui3;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lui3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lui3;-><init>(Lvi3;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lui3;->b:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lui3;->d:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iget-object v3, p0, Lvi3;->b:Lli3;

    .line 31
    .line 32
    iget-object v4, p0, Lvi3;->a:Lih6;

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    const/4 v6, 0x2

    .line 36
    sget-object v7, Lbe8;->a:Lbe8;

    .line 37
    .line 38
    const/4 v8, 0x1

    .line 39
    sget-object v9, Lyx1;->a:Lyx1;

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    if-eq v1, v8, :cond_3

    .line 44
    .line 45
    if-eq v1, v6, :cond_2

    .line 46
    .line 47
    if-ne v1, v5, :cond_1

    .line 48
    .line 49
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object v7

    .line 53
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :cond_2
    iget-object p1, v0, Lui3;->a:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object v7

    .line 69
    :cond_4
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-boolean p2, v4, Lih6;->a:Z

    .line 73
    .line 74
    if-eqz p2, :cond_5

    .line 75
    .line 76
    iput-object v2, v0, Lui3;->a:Ljava/lang/Object;

    .line 77
    .line 78
    iput v8, v0, Lui3;->d:I

    .line 79
    .line 80
    invoke-interface {v3, p1, v0}, Lli3;->c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-ne p0, v9, :cond_7

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    iput-object p1, v0, Lui3;->a:Ljava/lang/Object;

    .line 88
    .line 89
    iput v6, v0, Lui3;->d:I

    .line 90
    .line 91
    iget-object p0, p0, Lvi3;->c:Lt72;

    .line 92
    .line 93
    invoke-virtual {p0, p1, v0}, Lt72;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-ne p2, v9, :cond_6

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_6
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_7

    .line 107
    .line 108
    iput-boolean v8, v4, Lih6;->a:Z

    .line 109
    .line 110
    iput-object v2, v0, Lui3;->a:Ljava/lang/Object;

    .line 111
    .line 112
    iput v5, v0, Lui3;->d:I

    .line 113
    .line 114
    invoke-interface {v3, p1, v0}, Lli3;->c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-ne p0, v9, :cond_7

    .line 119
    .line 120
    :goto_2
    return-object v9

    .line 121
    :cond_7
    return-object v7
.end method
