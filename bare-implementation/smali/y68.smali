.class public final enum Ly68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "SelfClosingStartTag"

    .line 2
    .line 3
    const/16 v1, 0x29

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
    invoke-virtual {p2}, Le51;->d()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e

    .line 6
    .line 7
    sget-object v2, Le88;->a:Lz58;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const v1, 0xffff

    .line 12
    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Le51;->q()V

    .line 20
    .line 21
    .line 22
    sget-object p0, Le88;->Y:Lp68;

    .line 23
    .line 24
    iput-object p0, p1, Lo58;->c:Le88;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p1, Lo58;->c:Le88;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    iput-boolean p2, p0, Lc58;->j:Z

    .line 37
    .line 38
    invoke-virtual {p1}, Lo58;->k()V

    .line 39
    .line 40
    .line 41
    iput-object v2, p1, Lo58;->c:Le88;

    .line 42
    .line 43
    return-void
.end method
