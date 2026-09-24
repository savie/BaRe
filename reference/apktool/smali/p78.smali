.class public final enum Lp78;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "DoctypePublicIdentifier_singleQuoted"

    .line 2
    .line 3
    const/16 v1, 0x39

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
    if-eqz p2, :cond_3

    .line 8
    .line 9
    const/16 v1, 0x27

    .line 10
    .line 11
    if-eq p2, v1, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x3e

    .line 14
    .line 15
    sget-object v2, Le88;->a:Lz58;

    .line 16
    .line 17
    if-eq p2, v1, :cond_1

    .line 18
    .line 19
    const v1, 0xffff

    .line 20
    .line 21
    .line 22
    if-eq p2, v1, :cond_0

    .line 23
    .line 24
    iget-object p0, v0, Ly48;->d:Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lo58;->j()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p1, Lo58;->c:Le88;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lo58;->j()V

    .line 49
    .line 50
    .line 51
    iput-object v2, p1, Lo58;->c:Le88;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    sget-object p0, Le88;->x0:Lq78;

    .line 55
    .line 56
    iput-object p0, p1, Lo58;->c:Le88;

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, v0, Ly48;->d:Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const p1, 0xfffd

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    return-void
.end method
