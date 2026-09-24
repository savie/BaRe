.class public final enum Lx78;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AfterDoctypeSystemIdentifier"

    .line 2
    .line 3
    const/16 v1, 0x40

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
    invoke-virtual {p2}, Le51;->d()C

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-eq p2, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    if-eq p2, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0xc

    .line 14
    .line 15
    if-eq p2, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0xd

    .line 18
    .line 19
    if-eq p2, v0, :cond_2

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    if-eq p2, v0, :cond_2

    .line 24
    .line 25
    const/16 v0, 0x3e

    .line 26
    .line 27
    sget-object v1, Le88;->a:Lz58;

    .line 28
    .line 29
    if-eq p2, v0, :cond_1

    .line 30
    .line 31
    const v0, 0xffff

    .line 32
    .line 33
    .line 34
    if-eq p2, v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Le88;->E0:Ly78;

    .line 40
    .line 41
    iput-object p0, p1, Lo58;->c:Le88;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p1, Lo58;->m:Ly48;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lo58;->j()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p1, Lo58;->c:Le88;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1}, Lo58;->j()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p1, Lo58;->c:Le88;

    .line 62
    .line 63
    :cond_2
    return-void
.end method
