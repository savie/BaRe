.class public final enum Lm78;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AfterDoctypePublicKeyword"

    .line 2
    .line 3
    const/16 v1, 0x36

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
    invoke-virtual {p2}, Le51;->d()C

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    if-eq p2, v1, :cond_4

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    if-eq p2, v1, :cond_4

    .line 14
    .line 15
    const/16 v1, 0xc

    .line 16
    .line 17
    if-eq p2, v1, :cond_4

    .line 18
    .line 19
    const/16 v1, 0xd

    .line 20
    .line 21
    if-eq p2, v1, :cond_4

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    if-eq p2, v1, :cond_4

    .line 26
    .line 27
    const/16 v1, 0x22

    .line 28
    .line 29
    if-eq p2, v1, :cond_3

    .line 30
    .line 31
    const/16 v1, 0x27

    .line 32
    .line 33
    if-eq p2, v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x3e

    .line 36
    .line 37
    sget-object v2, Le88;->a:Lz58;

    .line 38
    .line 39
    if-eq p2, v1, :cond_1

    .line 40
    .line 41
    const v1, 0xffff

    .line 42
    .line 43
    .line 44
    if-eq p2, v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object p0, Le88;->E0:Ly78;

    .line 53
    .line 54
    iput-object p0, p1, Lo58;->c:Le88;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lo58;->j()V

    .line 64
    .line 65
    .line 66
    iput-object v2, p1, Lo58;->c:Le88;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lo58;->j()V

    .line 76
    .line 77
    .line 78
    iput-object v2, p1, Lo58;->c:Le88;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 82
    .line 83
    .line 84
    sget-object p0, Le88;->w0:Lp78;

    .line 85
    .line 86
    iput-object p0, p1, Lo58;->c:Le88;

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 90
    .line 91
    .line 92
    sget-object p0, Le88;->v0:Lo78;

    .line 93
    .line 94
    iput-object p0, p1, Lo58;->c:Le88;

    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    sget-object p0, Le88;->u0:Ln78;

    .line 98
    .line 99
    iput-object p0, p1, Lo58;->c:Le88;

    .line 100
    .line 101
    return-void
.end method
