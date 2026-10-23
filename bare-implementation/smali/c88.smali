.class public final enum Lc88;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "TagOpen"

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
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
    const/16 v1, 0x21

    .line 6
    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/16 v1, 0x2f

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x3f

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Le51;->o()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    invoke-virtual {p1, p0}, Lo58;->d(Z)Lc58;

    .line 25
    .line 26
    .line 27
    sget-object p0, Le88;->p:Lp58;

    .line 28
    .line 29
    iput-object p0, p1, Lo58;->c:Le88;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x3c

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lo58;->f(C)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Le88;->a:Lz58;

    .line 41
    .line 42
    iput-object p0, p1, Lo58;->c:Le88;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    sget-object p0, Le88;->h0:Lz68;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    sget-object p0, Le88;->n:Ld88;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    sget-object p0, Le88;->i0:La78;

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
