.class public final enum Ls58;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "RCDATAEndTagName"

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static e(Lo58;Le51;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo58;->h:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "</"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lo58;->h(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Le51;->q()V

    .line 17
    .line 18
    .line 19
    sget-object p1, Le88;->c:Lv68;

    .line 20
    .line 21
    iput-object p1, p0, Lo58;->c:Le88;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final d(Lo58;Le51;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Le51;->o()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Le51;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p2, p1, Lo58;->i:Lc58;

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Lc58;->m(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lo58;->h:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p2}, Le51;->d()C

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/16 v0, 0x9

    .line 27
    .line 28
    if-eq p0, v0, :cond_5

    .line 29
    .line 30
    const/16 v0, 0xa

    .line 31
    .line 32
    if-eq p0, v0, :cond_5

    .line 33
    .line 34
    const/16 v0, 0xc

    .line 35
    .line 36
    if-eq p0, v0, :cond_5

    .line 37
    .line 38
    const/16 v0, 0xd

    .line 39
    .line 40
    if-eq p0, v0, :cond_5

    .line 41
    .line 42
    const/16 v0, 0x20

    .line 43
    .line 44
    if-eq p0, v0, :cond_5

    .line 45
    .line 46
    const/16 v0, 0x2f

    .line 47
    .line 48
    if-eq p0, v0, :cond_3

    .line 49
    .line 50
    const/16 v0, 0x3e

    .line 51
    .line 52
    if-eq p0, v0, :cond_1

    .line 53
    .line 54
    invoke-static {p1, p2}, Ls58;->e(Lo58;Le51;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1}, Lo58;->n()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Lo58;->k()V

    .line 65
    .line 66
    .line 67
    sget-object p0, Le88;->a:Lz58;

    .line 68
    .line 69
    iput-object p0, p1, Lo58;->c:Le88;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    invoke-static {p1, p2}, Ls58;->e(Lo58;Le51;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    invoke-virtual {p1}, Lo58;->n()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_4

    .line 81
    .line 82
    sget-object p0, Le88;->g0:Ly68;

    .line 83
    .line 84
    iput-object p0, p1, Lo58;->c:Le88;

    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-static {p1, p2}, Ls58;->e(Lo58;Le51;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    invoke-virtual {p1}, Lo58;->n()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_6

    .line 96
    .line 97
    sget-object p0, Le88;->Y:Lp68;

    .line 98
    .line 99
    iput-object p0, p1, Lo58;->c:Le88;

    .line 100
    .line 101
    return-void

    .line 102
    :cond_6
    invoke-static {p1, p2}, Ls58;->e(Lo58;Le51;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
