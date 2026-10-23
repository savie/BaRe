.class public final enum Lj68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ScriptDataDoubleEscaped"

    .line 2
    .line 3
    const/16 v1, 0x1c

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
    .locals 2

    .line 1
    invoke-virtual {p2}, Le51;->i()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const/16 v1, 0x2d

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0x3c

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const v1, 0xffff

    .line 16
    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x3

    .line 21
    new-array p0, p0, [C

    .line 22
    .line 23
    fill-array-data p0, :array_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Le51;->g([C)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Lo58;->h(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Le88;->a:Lz58;

    .line 38
    .line 39
    iput-object p0, p1, Lo58;->c:Le88;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p1, v0}, Lo58;->f(C)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Le88;->W:Ln68;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {p1, v0}, Lo58;->f(C)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Le88;->U:Ll68;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Le51;->a()V

    .line 64
    .line 65
    .line 66
    const p0, 0xfffd

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Lo58;->f(C)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :array_0
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
