.class public final enum Lk78;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "DoctypeName"

    .line 2
    .line 3
    const/16 v1, 0x34

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
    iget-object v0, p1, Lo58;->m:Ly48;

    .line 2
    .line 3
    invoke-virtual {p2}, Le51;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Le51;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p1, v0, Ly48;->c:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p2}, Le51;->d()C

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_4

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    if-eq p2, v1, :cond_3

    .line 28
    .line 29
    const/16 v1, 0x3e

    .line 30
    .line 31
    sget-object v2, Le88;->a:Lz58;

    .line 32
    .line 33
    if-eq p2, v1, :cond_2

    .line 34
    .line 35
    const v1, 0xffff

    .line 36
    .line 37
    .line 38
    if-eq p2, v1, :cond_1

    .line 39
    .line 40
    const/16 p0, 0x9

    .line 41
    .line 42
    if-eq p2, p0, :cond_3

    .line 43
    .line 44
    const/16 p0, 0xa

    .line 45
    .line 46
    if-eq p2, p0, :cond_3

    .line 47
    .line 48
    const/16 p0, 0xc

    .line 49
    .line 50
    if-eq p2, p0, :cond_3

    .line 51
    .line 52
    const/16 p0, 0xd

    .line 53
    .line 54
    if-eq p2, p0, :cond_3

    .line 55
    .line 56
    iget-object p0, v0, Ly48;->c:Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lo58;->j()V

    .line 69
    .line 70
    .line 71
    iput-object v2, p1, Lo58;->c:Le88;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    invoke-virtual {p1}, Lo58;->j()V

    .line 75
    .line 76
    .line 77
    iput-object v2, p1, Lo58;->c:Le88;

    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    sget-object p0, Le88;->s0:Ll78;

    .line 81
    .line 82
    iput-object p0, p1, Lo58;->c:Le88;

    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, v0, Ly48;->c:Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const p1, 0xfffd

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    return-void
.end method
