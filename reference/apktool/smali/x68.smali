.class public final enum Lx68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AfterAttributeValue_quoted"

    .line 2
    .line 3
    const/16 v1, 0x28

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
    .locals 4

    .line 1
    invoke-virtual {p2}, Le51;->d()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    sget-object v2, Le88;->Y:Lp68;

    .line 8
    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/16 v1, 0xc

    .line 16
    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    .line 19
    const/16 v1, 0xd

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const/16 v1, 0x2f

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x3e

    .line 32
    .line 33
    sget-object v3, Le88;->a:Lz58;

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    const v1, 0xffff

    .line 38
    .line 39
    .line 40
    if-eq v0, v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Le51;->q()V

    .line 46
    .line 47
    .line 48
    iput-object v2, p1, Lo58;->c:Le88;

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 52
    .line 53
    .line 54
    iput-object v3, p1, Lo58;->c:Le88;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lo58;->k()V

    .line 58
    .line 59
    .line 60
    iput-object v3, p1, Lo58;->c:Le88;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    sget-object p0, Le88;->g0:Ly68;

    .line 64
    .line 65
    iput-object p0, p1, Lo58;->c:Le88;

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iput-object v2, p1, Lo58;->c:Le88;

    .line 69
    .line 70
    return-void
.end method
