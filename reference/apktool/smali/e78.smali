.class public final enum Le78;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "CommentEndDash"

    .line 2
    .line 3
    const/16 v1, 0x2f

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
    iget-object v0, p1, Lo58;->n:Lx48;

    .line 2
    .line 3
    invoke-virtual {p2}, Le51;->d()C

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    sget-object v1, Le88;->l0:Ld78;

    .line 8
    .line 9
    const/16 v2, 0x2d

    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    if-eq p2, v2, :cond_1

    .line 14
    .line 15
    const v3, 0xffff

    .line 16
    .line 17
    .line 18
    if-eq p2, v3, :cond_0

    .line 19
    .line 20
    iget-object p0, v0, Lx48;->c:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iput-object v1, p1, Lo58;->c:Le88;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lo58;->i()V

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
    sget-object p0, Le88;->n0:Lf78;

    .line 43
    .line 44
    iput-object p0, p1, Lo58;->c:Le88;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, v0, Lx48;->c:Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const p2, 0xfffd

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iput-object v1, p1, Lo58;->c:Le88;

    .line 62
    .line 63
    return-void
.end method
