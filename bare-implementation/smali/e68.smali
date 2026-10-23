.class public final enum Le68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ScriptDataEscapedDashDash"

    .line 2
    .line 3
    const/16 v1, 0x17

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
    .locals 1

    .line 1
    invoke-virtual {p2}, Le51;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Le88;->a:Lz58;

    .line 11
    .line 12
    iput-object p0, p1, Lo58;->c:Le88;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p2}, Le51;->d()C

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    sget-object v0, Le88;->M:Lc68;

    .line 20
    .line 21
    if-eqz p2, :cond_4

    .line 22
    .line 23
    const/16 p0, 0x2d

    .line 24
    .line 25
    if-eq p2, p0, :cond_3

    .line 26
    .line 27
    const/16 p0, 0x3c

    .line 28
    .line 29
    if-eq p2, p0, :cond_2

    .line 30
    .line 31
    const/16 p0, 0x3e

    .line 32
    .line 33
    if-eq p2, p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lo58;->f(C)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p1, Lo58;->c:Le88;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p1, p2}, Lo58;->f(C)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Le88;->f:La88;

    .line 45
    .line 46
    iput-object p0, p1, Lo58;->c:Le88;

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    sget-object p0, Le88;->P:Lf68;

    .line 50
    .line 51
    iput-object p0, p1, Lo58;->c:Le88;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    invoke-virtual {p1, p2}, Lo58;->f(C)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 59
    .line 60
    .line 61
    const p0, 0xfffd

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lo58;->f(C)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p1, Lo58;->c:Le88;

    .line 68
    .line 69
    return-void
.end method
