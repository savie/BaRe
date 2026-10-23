.class public final enum Lp68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "BeforeAttributeName"

    .line 2
    .line 3
    const/16 v1, 0x21

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
    sget-object v1, Le88;->Z:Lq68;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    const/16 v2, 0x20

    .line 10
    .line 11
    if-eq v0, v2, :cond_3

    .line 12
    .line 13
    const/16 v2, 0x22

    .line 14
    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    const/16 v2, 0x27

    .line 18
    .line 19
    if-eq v0, v2, :cond_2

    .line 20
    .line 21
    const/16 v2, 0x2f

    .line 22
    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    const v2, 0xffff

    .line 26
    .line 27
    .line 28
    sget-object v3, Le88;->a:Lz58;

    .line 29
    .line 30
    if-eq v0, v2, :cond_0

    .line 31
    .line 32
    const/16 v2, 0x9

    .line 33
    .line 34
    if-eq v0, v2, :cond_3

    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    if-eq v0, v2, :cond_3

    .line 39
    .line 40
    const/16 v2, 0xc

    .line 41
    .line 42
    if-eq v0, v2, :cond_3

    .line 43
    .line 44
    const/16 v2, 0xd

    .line 45
    .line 46
    if-eq v0, v2, :cond_3

    .line 47
    .line 48
    packed-switch v0, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 52
    .line 53
    invoke-virtual {p0}, Lc58;->o()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Le51;->q()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p1, Lo58;->c:Le88;

    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {p1}, Lo58;->k()V

    .line 63
    .line 64
    .line 65
    iput-object v3, p1, Lo58;->c:Le88;

    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 69
    .line 70
    .line 71
    iput-object v3, p1, Lo58;->c:Le88;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    sget-object p0, Le88;->g0:Ly68;

    .line 75
    .line 76
    iput-object p0, p1, Lo58;->c:Le88;

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    :pswitch_1
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 83
    .line 84
    invoke-virtual {p0}, Lc58;->o()V

    .line 85
    .line 86
    .line 87
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lc58;->i(C)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p1, Lo58;->c:Le88;

    .line 93
    .line 94
    :cond_3
    return-void

    .line 95
    :cond_4
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 99
    .line 100
    invoke-virtual {p0}, Lc58;->o()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Le51;->q()V

    .line 104
    .line 105
    .line 106
    iput-object v1, p1, Lo58;->c:Le88;

    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
