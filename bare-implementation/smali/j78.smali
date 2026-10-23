.class public final enum Lj78;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "BeforeDoctypeName"

    .line 2
    .line 3
    const/16 v1, 0x33

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
    sget-object v2, Le88;->r0:Lk78;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ly48;->f()Lqb6;

    .line 12
    .line 13
    .line 14
    iput-object v2, p1, Lo58;->c:Le88;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p2}, Le51;->d()C

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_3

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    if-eq p2, v1, :cond_2

    .line 26
    .line 27
    const v1, 0xffff

    .line 28
    .line 29
    .line 30
    if-eq p2, v1, :cond_1

    .line 31
    .line 32
    const/16 p0, 0x9

    .line 33
    .line 34
    if-eq p2, p0, :cond_2

    .line 35
    .line 36
    const/16 p0, 0xa

    .line 37
    .line 38
    if-eq p2, p0, :cond_2

    .line 39
    .line 40
    const/16 p0, 0xc

    .line 41
    .line 42
    if-eq p2, p0, :cond_2

    .line 43
    .line 44
    const/16 p0, 0xd

    .line 45
    .line 46
    if-eq p2, p0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ly48;->f()Lqb6;

    .line 49
    .line 50
    .line 51
    iget-object p0, v0, Ly48;->c:Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iput-object v2, p1, Lo58;->c:Le88;

    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ly48;->f()Lqb6;

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
    sget-object p0, Le88;->a:Lz58;

    .line 72
    .line 73
    iput-object p0, p1, Lo58;->c:Le88;

    .line 74
    .line 75
    :cond_2
    return-void

    .line 76
    :cond_3
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ly48;->f()Lqb6;

    .line 80
    .line 81
    .line 82
    iget-object p0, v0, Ly48;->c:Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const p2, 0xfffd

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iput-object v2, p1, Lo58;->c:Le88;

    .line 91
    .line 92
    return-void
.end method
