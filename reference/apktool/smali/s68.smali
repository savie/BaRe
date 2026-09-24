.class public final enum Ls68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "BeforeAttributeValue"

    .line 2
    .line 3
    const/16 v1, 0x24

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
    .locals 4

    .line 1
    invoke-virtual {p2}, Le51;->d()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Le88;->e0:Lw68;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    const/16 v2, 0x20

    .line 10
    .line 11
    if-eq v0, v2, :cond_5

    .line 12
    .line 13
    const/16 v2, 0x22

    .line 14
    .line 15
    if-eq v0, v2, :cond_4

    .line 16
    .line 17
    const/16 v2, 0x60

    .line 18
    .line 19
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    const v2, 0xffff

    .line 22
    .line 23
    .line 24
    sget-object v3, Le88;->a:Lz58;

    .line 25
    .line 26
    if-eq v0, v2, :cond_2

    .line 27
    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    if-eq v0, v2, :cond_5

    .line 31
    .line 32
    const/16 v2, 0xa

    .line 33
    .line 34
    if-eq v0, v2, :cond_5

    .line 35
    .line 36
    const/16 v2, 0xc

    .line 37
    .line 38
    if-eq v0, v2, :cond_5

    .line 39
    .line 40
    const/16 v2, 0xd

    .line 41
    .line 42
    if-eq v0, v2, :cond_5

    .line 43
    .line 44
    const/16 v2, 0x26

    .line 45
    .line 46
    if-eq v0, v2, :cond_1

    .line 47
    .line 48
    const/16 v2, 0x27

    .line 49
    .line 50
    if-eq v0, v2, :cond_0

    .line 51
    .line 52
    packed-switch v0, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Le51;->q()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p1, Lo58;->c:Le88;

    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_0
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lo58;->k()V

    .line 65
    .line 66
    .line 67
    iput-object v3, p1, Lo58;->c:Le88;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    sget-object p0, Le88;->d0:Lu68;

    .line 71
    .line 72
    iput-object p0, p1, Lo58;->c:Le88;

    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    invoke-virtual {p2}, Le51;->q()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p1, Lo58;->c:Le88;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lo58;->k()V

    .line 85
    .line 86
    .line 87
    iput-object v3, p1, Lo58;->c:Le88;

    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    :pswitch_1
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lc58;->j(C)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p1, Lo58;->c:Le88;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    sget-object p0, Le88;->c0:Lt68;

    .line 102
    .line 103
    iput-object p0, p1, Lo58;->c:Le88;

    .line 104
    .line 105
    :cond_5
    return-void

    .line 106
    :cond_6
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 110
    .line 111
    const p2, 0xfffd

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p2}, Lc58;->j(C)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p1, Lo58;->c:Le88;

    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
