.class public final enum Lf68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ScriptDataEscapedLessthanSign"

    .line 2
    .line 3
    const/16 v1, 0x18

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
    invoke-virtual {p2}, Le51;->o()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lo58;->e()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p1, Lo58;->h:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-virtual {p2}, Le51;->i()C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "<"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Le51;->i()C

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Lo58;->h(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Le88;->S:Li68;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const/16 p0, 0x2f

    .line 47
    .line 48
    invoke-virtual {p2, p0}, Le51;->m(C)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Lo58;->e()V

    .line 55
    .line 56
    .line 57
    sget-object p0, Le88;->Q:Lg68;

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    const/16 p0, 0x3c

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Lo58;->f(C)V

    .line 66
    .line 67
    .line 68
    sget-object p0, Le88;->M:Lc68;

    .line 69
    .line 70
    iput-object p0, p1, Lo58;->c:Le88;

    .line 71
    .line 72
    return-void
.end method
