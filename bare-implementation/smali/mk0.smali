.class public final Lmk0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lhz;


# direct methods
.method public constructor <init>(Lhz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmk0;->a:Lhz;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Liu;Ljava/lang/String;Lq63;JJJJLjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lmk0;->a:Lhz;

    .line 5
    .line 6
    iget-object v0, v0, Lhz;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0}, Lji8;->s(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-eqz p3, :cond_2

    .line 15
    .line 16
    invoke-virtual {p3}, Lq63;->j()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljk0;

    .line 24
    .line 25
    move-wide/from16 v1, p10

    .line 26
    .line 27
    invoke-direct {v0, p3, p0, v1, v2}, Ljk0;-><init>(Lq63;Lmk0;J)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lgv7;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lgv7;-><init>(Lbt3;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lkk0;

    .line 36
    .line 37
    move-object v6, p1

    .line 38
    move-wide v4, p6

    .line 39
    move-wide v2, p8

    .line 40
    invoke-direct/range {v1 .. v6}, Lkk0;-><init>(JJLiu;)V

    .line 41
    .line 42
    .line 43
    new-instance p3, Lgv7;

    .line 44
    .line 45
    invoke-direct {p3, v1}, Lgv7;-><init>(Lbt3;)V

    .line 46
    .line 47
    .line 48
    new-instance p6, Llk0;

    .line 49
    .line 50
    invoke-direct {p6, p4, p5, p1, p2}, Llk0;-><init>(JLiu;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Lgv7;

    .line 54
    .line 55
    invoke-direct {p2, p6}, Lgv7;-><init>(Lbt3;)V

    .line 56
    .line 57
    .line 58
    new-instance p4, Lmh;

    .line 59
    .line 60
    const/4 p5, 0x2

    .line 61
    move-object/from16 p6, p12

    .line 62
    .line 63
    move-object/from16 p7, p13

    .line 64
    .line 65
    invoke-direct {p4, p5, p6, p1, p7}, Lmh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lgv7;

    .line 69
    .line 70
    invoke-direct {p1, p4}, Lgv7;-><init>(Lbt3;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    check-cast p3, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    if-nez p3, :cond_2

    .line 84
    .line 85
    invoke-virtual {p2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_2

    .line 108
    .line 109
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    const/4 p0, 0x0

    .line 123
    return p0

    .line 124
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 125
    return p0
.end method
