.class public final enum Lv68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "Rcdata"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Lo58;Le51;)V
    .locals 1

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
    const/16 p0, 0x26

    .line 8
    .line 9
    if-eq v0, p0, :cond_2

    .line 10
    .line 11
    const/16 p0, 0x3c

    .line 12
    .line 13
    if-eq v0, p0, :cond_1

    .line 14
    .line 15
    const p0, 0xffff

    .line 16
    .line 17
    .line 18
    if-eq v0, p0, :cond_0

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
    new-instance p0, Lz48;

    .line 35
    .line 36
    invoke-direct {p0}, Lz48;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lo58;->g(Lqb6;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    sget-object p0, Le88;->q:Lq58;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    sget-object p0, Le88;->d:Lg78;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Le51;->a()V

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
    return-void

    .line 68
    nop

    .line 69
    :array_0
    .array-data 2
        0x26s
        0x3cs
        0x0s
    .end array-data
.end method
