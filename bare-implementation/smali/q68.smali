.class public final enum Lq68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AttributeName"

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lo58;Le51;)V
    .locals 3

    .line 1
    sget-object v0, Le88;->I0:[C

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Le51;->h([C)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lo58;->i:Lc58;

    .line 8
    .line 9
    iget-object v2, v1, Lc58;->e:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    iput-object v0, v1, Lc58;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2}, Le51;->d()C

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_5

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    if-eq p2, v0, :cond_4

    .line 29
    .line 30
    const/16 v0, 0x22

    .line 31
    .line 32
    if-eq p2, v0, :cond_3

    .line 33
    .line 34
    const/16 v0, 0x27

    .line 35
    .line 36
    if-eq p2, v0, :cond_3

    .line 37
    .line 38
    const/16 v0, 0x2f

    .line 39
    .line 40
    if-eq p2, v0, :cond_2

    .line 41
    .line 42
    const v0, 0xffff

    .line 43
    .line 44
    .line 45
    sget-object v1, Le88;->a:Lz58;

    .line 46
    .line 47
    if-eq p2, v0, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x9

    .line 50
    .line 51
    if-eq p2, v0, :cond_4

    .line 52
    .line 53
    const/16 v0, 0xa

    .line 54
    .line 55
    if-eq p2, v0, :cond_4

    .line 56
    .line 57
    const/16 v0, 0xc

    .line 58
    .line 59
    if-eq p2, v0, :cond_4

    .line 60
    .line 61
    const/16 v0, 0xd

    .line 62
    .line 63
    if-eq p2, v0, :cond_4

    .line 64
    .line 65
    packed-switch p2, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lc58;->i(C)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_0
    invoke-virtual {p1}, Lo58;->k()V

    .line 75
    .line 76
    .line 77
    iput-object v1, p1, Lo58;->c:Le88;

    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_1
    sget-object p0, Le88;->b0:Ls68;

    .line 81
    .line 82
    iput-object p0, p1, Lo58;->c:Le88;

    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p1, Lo58;->c:Le88;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    sget-object p0, Le88;->g0:Ly68;

    .line 92
    .line 93
    iput-object p0, p1, Lo58;->c:Le88;

    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    :pswitch_2
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 100
    .line 101
    invoke-virtual {p0, p2}, Lc58;->i(C)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    sget-object p0, Le88;->a0:Lr68;

    .line 106
    .line 107
    iput-object p0, p1, Lo58;->c:Le88;

    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 114
    .line 115
    const p1, 0xfffd

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lc58;->i(C)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
