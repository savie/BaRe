.class public final La83;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lr73;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La83;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, La83;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 p0, 0x16

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_0
    const/4 p0, 0x2

    .line 10
    return p0

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Low0;)Lt73;
    .locals 9

    .line 1
    iget p0, p0, La83;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    move-wide v2, v0

    .line 14
    move-wide v4, v2

    .line 15
    :goto_0
    add-long/2addr v2, v4

    .line 16
    long-to-int v4, v2

    .line 17
    iput v4, p1, Low0;->c:I

    .line 18
    .line 19
    iget-object v4, p1, Low0;->b:Lvw2;

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Lvw2;->e(Low0;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    invoke-virtual {v4, p1}, Lvw2;->e(Low0;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v7

    .line 29
    invoke-virtual {v4, p1}, Lvw2;->a(Low0;)J

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, p1}, Lvw2;->a(Low0;)J

    .line 33
    .line 34
    .line 35
    sget-object v4, Lh51;->c:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    long-to-int v7, v7

    .line 38
    div-int/lit8 v7, v7, 0x2

    .line 39
    .line 40
    invoke-virtual {p1, v4, v7}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    new-instance v4, Lfo8;

    .line 44
    .line 45
    const/16 v7, 0x9

    .line 46
    .line 47
    invoke-direct {v4, v7}, Lfo8;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    cmp-long v4, v5, v0

    .line 54
    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    new-instance p0, Lda3;

    .line 58
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_0
    move-wide v4, v5

    .line 64
    goto :goto_0

    .line 65
    :pswitch_0
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lvw2;->f(Low0;)J

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lvw2;->f(Low0;)J

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 102
    .line 103
    .line 104
    sget-object p0, Lh51;->c:Ljava/nio/charset/Charset;

    .line 105
    .line 106
    long-to-int v2, v2

    .line 107
    div-int/lit8 v2, v2, 0x2

    .line 108
    .line 109
    invoke-virtual {p1, p0, v2}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance p1, Ln73;

    .line 114
    .line 115
    invoke-direct {p1, v0, v1, p0}, Li73;-><init>(JLjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object p1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
